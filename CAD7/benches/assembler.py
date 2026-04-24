#!/usr/bin/env python3
#
# ENGN1600 Baseline RISC Processor
# Anhang Li (anhangli@umich.edu)
# -----

"""
Very basic assembler for the 16-bit teaching ISA.

Scope
-----
- One instruction per line
- Labels for branch targets
- No directives
- No expressions
- Emits one 16-bit hex word per line (for $readmemh)

Supported syntax examples
-------------------------
ADD   R1, R2
ADDI  -5, R2
SUB   R3, R4
SUBI  7, R4
CMP   R1, R2
CMPI  -1, R2
AND   R1, R2
ANDI  0xF0, R2
OR    R1, R2
ORI   3, R2
XOR   R1, R2
XORI  0b1010, R2
MOV   R1, R2
MOVI  42, R2
LSH   R1, R2
LSHI  -3, R2      ; negative means right shift, positive means left shift
LUI   0x12, R2
LOAD  R2, R3
STOR  R2, R3
BNE   loop
BEQ   -4
BNE   7
BUC   -1
JEQ   R3
JNE   R3
JUC   R3
JAL   R1, R3
NOP
"""

from __future__ import annotations

import argparse
import pathlib
import re
import sys

COND_CODES = {
    "EQ": 0x0,
    "NE": 0x1,
    "CS": 0x2,
    "CC": 0x3,
    "HI": 0x4,
    "LS": 0x5,
    "GT": 0x6,
    "LE": 0x7,
    "FS": 0x8,
    "FC": 0x9,
    "LO": 0xA,
    "HS": 0xB,
    "LT": 0xC,
    "GE": 0xD,
    "UC": 0xE,
    "NV": 0xF,
}

REGREG_SUBOP = {
    "ADD": 0x5,
    "SUB": 0x9,
    "CMP": 0xB,
    "AND": 0x1,
    "OR":  0x2,
    "XOR": 0x3,
    "MOV": 0xD,
}

IMM_OPCODE = {
    "ADDI": 0x5,
    "SUBI": 0x9,
    "CMPI": 0xB,
    "ANDI": 0x1,
    "ORI":  0x2,
    "XORI": 0x3,
    "MOVI": 0xD,
    "LUI":  0xF,
}


class AsmError(Exception):
    pass


def strip_comment(line: str) -> str:
    for marker in (";", "#", "//"):
        pos = line.find(marker)
        if pos != -1:
            line = line[:pos]
    return line.strip()


def strip_label(line: str, lineno: int) -> tuple[str | None, str]:
    text = strip_comment(line)
    if not text:
        return None, ""

    if ":" not in text:
        return None, text

    label, rest = text.split(":", 1)
    label = label.strip()
    if not re.fullmatch(r"[A-Za-z_][A-Za-z0-9_]*", label):
        raise AsmError(f"line {lineno}: invalid label '{label}'")
    return label, rest.strip()


def split_operands(s: str) -> list[str]:
    return [x.strip() for x in s.split(",") if x.strip()]


def parse_reg(tok: str, lineno: int) -> int:
    m = re.fullmatch(r"R([0-9]|1[0-5])", tok.upper())
    if not m:
        raise AsmError(f"line {lineno}: invalid register '{tok}'")
    return int(m.group(1))


def parse_int(tok: str, lineno: int) -> int:
    tok = tok.strip()
    if re.fullmatch(r"-?0x[0-9A-Fa-f_]+", tok):
        return int(tok.replace("_", ""), 16)
    if re.fullmatch(r"-?0b[01_]+", tok):
        return int(tok.replace("_", ""), 2)
    if re.fullmatch(r"-?[0-9_]+", tok):
        return int(tok.replace("_", ""), 10)
    raise AsmError(f"line {lineno}: invalid immediate '{tok}'")


def parse_disp8(tok: str, labels: dict[str, int], pc: int, lineno: int) -> int:
    if tok in labels:
        return labels[tok] - (pc + 1)
    return parse_int(tok, lineno)


def check_range(val: int, lo: int, hi: int, what: str, lineno: int) -> None:
    if not (lo <= val <= hi):
        raise AsmError(f"line {lineno}: {what} out of range: {val} not in [{lo}, {hi}]")


def imm8_signed(val: int, lineno: int) -> int:
    check_range(val, -128, 127, "signed imm8", lineno)
    return val & 0xFF


def imm8_zero(val: int, lineno: int) -> int:
    check_range(val, 0, 255, "unsigned imm8", lineno)
    return val & 0xFF


def encode_regreg(subop: int, rsrc: int, rdest: int) -> int:
    return (0x0 << 12) | (rdest << 8) | (subop << 4) | rsrc


def encode_imm(opcode: int, imm8: int, rdest: int) -> int:
    return (opcode << 12) | (rdest << 8) | imm8


def encode_load(rdest: int, raddr: int) -> int:
    return (0x4 << 12) | (rdest << 8) | (0x0 << 4) | raddr


def encode_stor(rsrc: int, raddr: int) -> int:
    return (0x4 << 12) | (rsrc << 8) | (0x4 << 4) | raddr


def encode_bcond(cond: int, disp8: int) -> int:
    return (0xC << 12) | (cond << 8) | disp8


def encode_jcond(cond: int, rtarget: int) -> int:
    return (0x4 << 12) | (cond << 8) | (0xC << 4) | rtarget


def encode_jal(rlink: int, rtarget: int) -> int:
    return (0x4 << 12) | (rlink << 8) | (0x8 << 4) | rtarget


def encode_lsh_reg(ramount: int, rdest: int) -> int:
    return (0x8 << 12) | (rdest << 8) | (0x4 << 4) | ramount


def encode_lshi(amount: int, rdest: int, lineno: int) -> int:
    check_range(amount, -15, 15, "LSHI amount", lineno)
    sign = 1 if amount < 0 else 0
    mag = abs(amount)
    return (0x8 << 12) | (rdest << 8) | (sign << 4) | mag


def assemble_line(line: str, lineno: int, labels: dict[str, int] | None = None, pc: int = 0) -> int | None:
    _, text = strip_label(line, lineno)
    if not text:
        return None
    labels = labels or {}

    parts = text.split(None, 1)
    op = parts[0].upper()
    rest = parts[1].strip() if len(parts) > 1 else ""
    ops = split_operands(rest)

    if op == "NOP":
        return encode_regreg(REGREG_SUBOP["OR"], 0, 0)

    if op in REGREG_SUBOP:
        if len(ops) != 2:
            raise AsmError(f"line {lineno}: {op} needs 'Rsrc, Rdest'")
        rsrc = parse_reg(ops[0], lineno)
        rdest = parse_reg(ops[1], lineno)
        return encode_regreg(REGREG_SUBOP[op], rsrc, rdest)

    if op in {"ADDI", "SUBI", "CMPI"}:
        if len(ops) != 2:
            raise AsmError(f"line {lineno}: {op} needs 'imm, Rdest'")
        imm = imm8_signed(parse_int(ops[0], lineno), lineno)
        rdest = parse_reg(ops[1], lineno)
        return encode_imm(IMM_OPCODE[op], imm, rdest)

    if op in {"ANDI", "ORI", "XORI", "MOVI", "LUI"}:
        if len(ops) != 2:
            raise AsmError(f"line {lineno}: {op} needs 'imm, Rdest'")
        imm = imm8_zero(parse_int(ops[0], lineno), lineno)
        rdest = parse_reg(ops[1], lineno)
        return encode_imm(IMM_OPCODE[op], imm, rdest)

    if op == "LSH":
        if len(ops) != 2:
            raise AsmError(f"line {lineno}: LSH needs 'Ramount, Rdest'")
        ramount = parse_reg(ops[0], lineno)
        rdest = parse_reg(ops[1], lineno)
        return encode_lsh_reg(ramount, rdest)

    if op == "LSHI":
        if len(ops) != 2:
            raise AsmError(f"line {lineno}: LSHI needs 'imm, Rdest'")
        amount = parse_int(ops[0], lineno)
        rdest = parse_reg(ops[1], lineno)
        return encode_lshi(amount, rdest, lineno)

    if op == "LOAD":
        if len(ops) != 2:
            raise AsmError(f"line {lineno}: LOAD needs 'Rdest, Raddr'")
        rdest = parse_reg(ops[0], lineno)
        raddr = parse_reg(ops[1], lineno)
        return encode_load(rdest, raddr)

    if op == "STOR":
        if len(ops) != 2:
            raise AsmError(f"line {lineno}: STOR needs 'Rsrc, Raddr'")
        rsrc = parse_reg(ops[0], lineno)
        raddr = parse_reg(ops[1], lineno)
        return encode_stor(rsrc, raddr)

    if op == "JAL":
        if len(ops) != 2:
            raise AsmError(f"line {lineno}: JAL needs 'Rlink, Rtarget'")
        rlink = parse_reg(ops[0], lineno)
        rtarget = parse_reg(ops[1], lineno)
        return encode_jal(rlink, rtarget)

    if op.startswith("B") and len(op) == 3 and op[1:] in COND_CODES:
        if len(ops) != 1:
            raise AsmError(f"line {lineno}: {op} needs one signed 8-bit displacement")
        disp = imm8_signed(parse_disp8(ops[0], labels, pc, lineno), lineno)
        return encode_bcond(COND_CODES[op[1:]], disp)

    if op.startswith("J") and len(op) == 3 and op[1:] in COND_CODES:
        if len(ops) != 1:
            raise AsmError(f"line {lineno}: {op} needs one register target")
        rtarget = parse_reg(ops[0], lineno)
        return encode_jcond(COND_CODES[op[1:]], rtarget)

    raise AsmError(f"line {lineno}: unsupported instruction '{op}'")


def assemble_text(text: str) -> list[int]:
    labels: dict[str, int] = {}
    pc = 0
    for lineno, line in enumerate(text.splitlines(), start=1):
        label, rest = strip_label(line, lineno)
        if label is not None:
            if label in labels:
                raise AsmError(f"line {lineno}: duplicate label '{label}'")
            labels[label] = pc
        if rest:
            pc += 1

    words: list[int] = []
    for lineno, line in enumerate(text.splitlines(), start=1):
        word = assemble_line(line, lineno, labels, len(words))
        if word is not None:
            words.append(word & 0xFFFF)
    return words


def main() -> int:
    parser = argparse.ArgumentParser(description="Very basic assembler for the 16-bit ISA")
    parser.add_argument("input", help="assembly source file")
    parser.add_argument("-o", "--output", help="output hex file; default: <input>.memh")
    args = parser.parse_args()

    in_path = pathlib.Path(args.input)
    out_path = pathlib.Path(args.output) if args.output else in_path.with_suffix(".memh")

    try:
        text = in_path.read_text()
        words = assemble_text(text)
        out_path.write_text("\n".join(f"{w:04x}" for w in words) + ("\n" if words else ""))
    except AsmError as e:
        print(f"error: {e}", file=sys.stderr)
        return 1

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
