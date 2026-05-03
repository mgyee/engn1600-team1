#!/usr/bin/env python3
"""Generate an ngspice control snippet from a Verilog testbench.

This repo's CAD7 benches follow a consistent pattern:
- `always #<half> clk = ~clk;` (period = 2*half)
- `rst` asserted at t=0, deasserted after a `#<t>` delay
- `repeat(<N>) @(posedge clk);` sets how many cycles to run

The script infers clk/rst timing and cycle count and writes a matching
`<tb>.spice` file alongside the input `.v`.

Example:
  ./tb_spice.py benches/tb_arith.v 1

Outputs:
  benches/tb_arith.spice
"""

from __future__ import annotations

import argparse
import math
import re
from dataclasses import dataclass
from pathlib import Path
from typing import Optional, Tuple


_TIME_UNITS_TO_NS = {
    "s": 1e9,
    "ms": 1e6,
    "us": 1e3,
    "ns": 1.0,
    "ps": 1e-3,
    "fs": 1e-6,
}


@dataclass(frozen=True)
class Timescale:
    time_unit_ns: float


@dataclass(frozen=True)
class TbInfo:
    half_period_ns: float
    clk_init: int
    rst_var: Optional[str]
    rst_init: Optional[int]
    rst_change_time_ns: Optional[float]
    rst_change_value: Optional[int]
    rstn_expr: Optional[str]
    cycles_after_reset: Optional[int]


def _strip_comments(verilog: str) -> str:
    verilog = re.sub(r"/\*.*?\*/", "", verilog, flags=re.S)
    verilog = re.sub(r"//.*", "", verilog)
    return verilog


def _parse_timescale(text: str) -> Timescale:
    m = re.search(r"`timescale\s+(\d+)\s*(s|ms|us|ns|ps|fs)\s*/\s*(\d+)\s*(s|ms|us|ns|ps|fs)", text)
    if not m:
        return Timescale(time_unit_ns=1.0)
    unit_val = int(m.group(1))
    unit = m.group(2)
    return Timescale(time_unit_ns=unit_val * _TIME_UNITS_TO_NS[unit])


def _parse_clk_init(text: str) -> int:
    m = re.search(r"\breg\s+clk\b\s*=\s*([01])\s*;", text)
    if m:
        return int(m.group(1))
    m = re.search(r"\bclk\b\s*=\s*([01])\s*;", text)
    if m:
        return int(m.group(1))
    return 0


def _parse_half_period(text: str) -> Optional[float]:
    # Common forms: always #5 clk = ~clk;  OR  always #5 clk <= ~clk;
    m = re.search(r"\balways\b\s*#\s*(\d+(?:\.\d+)?)\s*\bclk\b\s*(?:<=|=)\s*~\s*\bclk\b\s*;", text)
    if m:
        return float(m.group(1))
    # forever style: initial begin forever #5 clk=~clk; end
    m = re.search(r"\bforever\b\s*#\s*(\d+(?:\.\d+)?)\s*\bclk\b\s*(?:<=|=)\s*~\s*\bclk\b\s*;", text)
    if m:
        return float(m.group(1))
    return None


def _parse_rst_connection_expr(text: str) -> Optional[str]:
    # Find something like .RSTn(~rst) or .RSTn(rst_n)
    m = re.search(r"\.RSTn\s*\(\s*([^\)]+?)\s*\)", text)
    if m:
        return m.group(1).strip()
    return None


def _infer_rst_var_from_expr(expr: Optional[str]) -> Optional[str]:
    if not expr:
        return None
    # Handle ~rst, !rst, rst, rst_n
    expr = expr.strip()
    expr = re.sub(r"\s+", "", expr)
    expr = expr.replace("!", "~")
    if expr.startswith("~"):
        expr = expr[1:]
    # If it's a plain identifier now, return it
    if re.fullmatch(r"[A-Za-z_][A-Za-z0-9_]*", expr):
        return expr
    return None


def _parse_reg_init(text: str, var: str) -> Optional[int]:
    m = re.search(rf"\breg\s+{re.escape(var)}\b\s*=\s*([01])\s*;", text)
    if m:
        return int(m.group(1))
    return None


def _parse_first_timed_assignment(text: str, var: str) -> Tuple[Optional[float], Optional[int]]:
    # Take the earliest '#<t> var = <0/1>' occurrence (in textual order)
    m = re.search(rf"#\s*(\d+(?:\.\d+)?)\s*\b{re.escape(var)}\b\s*(?:<=|=)\s*([01])\s*;", text)
    if not m:
        return None, None
    return float(m.group(1)), int(m.group(2))


def _parse_cycles_after_reset(text: str) -> Optional[int]:
    # Common: repeat (40) @(posedge clk);
    counts = [int(x) for x in re.findall(r"\brepeat\s*\(\s*(\d+)\s*\)\s*@\(\s*posedge\s+clk\s*\)", text)]
    if counts:
        return max(counts)
    return None


def parse_tb(verilog_path: Path) -> TbInfo:
    raw = verilog_path.read_text(encoding="utf-8")
    timescale = _parse_timescale(raw)
    text = _strip_comments(raw)

    clk_init = _parse_clk_init(text)
    half_period = _parse_half_period(text)
    half_period_ns = None if half_period is None else half_period * timescale.time_unit_ns

    rstn_expr = _parse_rst_connection_expr(text)
    rst_var = _infer_rst_var_from_expr(rstn_expr) if rstn_expr else None
    if rst_var is None:
        rst_var = "rst" if re.search(r"\breg\s+rst\b", text) else None

    rst_init = _parse_reg_init(text, rst_var) if rst_var else None
    rst_change_time, rst_change_value = (None, None)
    if rst_var:
        rst_change_time, rst_change_value = _parse_first_timed_assignment(text, rst_var)
    rst_change_time_ns = None if rst_change_time is None else rst_change_time * timescale.time_unit_ns

    cycles = _parse_cycles_after_reset(text)

    if half_period_ns is None:
        raise ValueError(f"Could not infer clk half-period from {verilog_path}")

    return TbInfo(
        half_period_ns=half_period_ns,
        clk_init=clk_init,
        rst_var=rst_var,
        rst_init=rst_init,
        rst_change_time_ns=rst_change_time_ns,
        rst_change_value=rst_change_value,
        rstn_expr=rstn_expr,
        cycles_after_reset=cycles,
    )


def _eval_rstn(expr: Optional[str], rst_var: str, rst_val: int) -> int:
    """Evaluate a very small subset of Verilog expressions for RSTn."""
    if not expr:
        # Default convention in these benches: RSTn(~rst)
        return 1 - rst_val

    e = re.sub(r"\s+", "", expr)
    e = e.replace("!", "~")
    if e == rst_var:
        return rst_val
    if e == f"~{rst_var}":
        return 1 - rst_val

    # Fallback: if expression contains ~<var> anywhere, assume invert.
    if re.fullmatch(rf"~?{re.escape(rst_var)}", e):
        return 1 - rst_val if e.startswith("~") else rst_val

    return 1 - rst_val


def _fmt_ns(ns: float) -> str:
    if ns < 0:
        raise ValueError("time must be non-negative")
    # Keep output clean; avoid scientific notation for typical values.
    if abs(ns - round(ns)) < 1e-9:
        return f"{int(round(ns))}n"
    s = f"{ns:.6f}".rstrip("0").rstrip(".")
    return f"{s}n"


def _compute_stop_time_ns(
    *,
    period_ns: float,
    half_ns: float,
    clk_init: int,
    rst_deassert_ns: float,
    cycles_after_reset: int,
) -> float:
    first_posedge_ns = half_ns if clk_init == 0 else period_ns

    if rst_deassert_ns <= first_posedge_ns:
        t_first = first_posedge_ns
    else:
        k = math.ceil((rst_deassert_ns - first_posedge_ns) / period_ns)
        t_first = first_posedge_ns + k * period_ns

    t_last = t_first + max(0, cycles_after_reset - 1) * period_ns
    return t_last + period_ns


def generate_spice_control(
    *,
    tb_basename: str,
    vdd: float,
    period_ns: float,
    half_ns: float,
    clk_init: int,
    rstn_initial: int,
    rstn_deassert_ns: float,
    tran_step_ns: float,
    tran_stop_ns: float,
) -> str:
    v1, v2 = (0.0, vdd) if clk_init == 0 else (vdd, 0.0)
    clk_td_ns = half_ns
    clk_pw_ns = half_ns

    # ngspice syntax in this repo uses alter on existing sources.
    lines = []
    lines.append(".control")
    lines.append("save all")
    lines.append("")
    lines.append("** CLK")
    lines.append(
        "alter @VCLK[PULSE] = [ "
        f"{v1:g} {v2:g} {_fmt_ns(clk_td_ns)} 1p 1p {_fmt_ns(clk_pw_ns)} {_fmt_ns(period_ns)} 0 "
        "]"
    )
    lines.append("** RSTn")
    lines.append("alter @VRSTn[PWL] = [ " + f"0 {rstn_initial * vdd:g} {_fmt_ns(rstn_deassert_ns)} {rstn_initial * vdd:g} {_fmt_ns(rstn_deassert_ns + 0.001)} {(1-rstn_initial) * vdd:g} " + "]")
    lines.append("")
    lines.append(f"tran {_fmt_ns(tran_step_ns)} {_fmt_ns(tran_stop_ns)}")
    lines.append("")
    lines.append(f"write {tb_basename}.raw")
    lines.append(".endc")
    return "\n".join(lines) + "\n"


def main() -> int:
    ap = argparse.ArgumentParser(description="Generate .spice control from a Verilog testbench")
    ap.add_argument("verilog_tb", type=Path, help="Path to .v testbench (typically benches/tb_*.v)")
    ap.add_argument("period_multiplier", type=float, help="Multiplier applied to the inferred clk period")
    ap.add_argument("--vdd", type=float, default=3.3, help="Clock/reset high voltage (default: 3.3)")
    ap.add_argument("--tran-step-ns", type=float, default=0.1, help="Transient step in ns (default: 0.1)")
    ap.add_argument("--extra-cycles", type=int, default=0, help="Extra cycles to add to inferred repeat() count")
    args = ap.parse_args()

    tb_path: Path = args.verilog_tb
    if not tb_path.exists():
        raise SystemExit(f"No such file: {tb_path}")

    info = parse_tb(tb_path)

    base_period_ns = 2.0 * info.half_period_ns
    if args.period_multiplier <= 0:
        raise SystemExit("period_multiplier must be > 0")
    period_ns = base_period_ns * args.period_multiplier
    half_ns = period_ns / 2.0

    # Reset deassert time: preserve the same number of cycles relative to the original clock.
    base_rst_deassert_ns = info.rst_change_time_ns if info.rst_change_time_ns is not None else 12.0
    rst_deassert_cycles = base_rst_deassert_ns / base_period_ns
    rst_deassert_ns = rst_deassert_cycles * period_ns

    cycles = info.cycles_after_reset
    if cycles is None:
        cycles = 100
    cycles += max(0, args.extra_cycles)

    # Infer initial/reset values.
    rst_var = info.rst_var or "rst"
    rst_init = info.rst_init if info.rst_init is not None else 1
    rst_change_val = info.rst_change_value if info.rst_change_value is not None else (1 - rst_init)

    rstn_initial = _eval_rstn(info.rstn_expr, rst_var, rst_init)
    rstn_after = _eval_rstn(info.rstn_expr, rst_var, rst_change_val)
    # If the change doesn't deassert, assume it does at the change time.
    if rstn_after == rstn_initial:
        rstn_initial = 0

    tran_stop_ns = _compute_stop_time_ns(
        period_ns=period_ns,
        half_ns=half_ns,
        clk_init=info.clk_init,
        rst_deassert_ns=rst_deassert_ns,
        cycles_after_reset=cycles,
    )

    tb_basename = tb_path.stem
    spice_text = generate_spice_control(
        tb_basename=tb_basename,
        vdd=args.vdd,
        period_ns=period_ns,
        half_ns=half_ns,
        clk_init=info.clk_init,
        rstn_initial=rstn_initial,
        rstn_deassert_ns=rst_deassert_ns,
        tran_step_ns=args.tran_step_ns,
        tran_stop_ns=tran_stop_ns,
    )

    out_path = tb_path.with_suffix(".spice")
    out_path.write_text(spice_text, encoding="utf-8")

    print(f"Wrote {out_path}")
    print(
        f"Inferred: base_period={base_period_ns:g} ns, period={period_ns:g} ns, "
        f"rst_deassert={rst_deassert_ns:g} ns, cycles={cycles}, stop={tran_stop_ns:g} ns"
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
