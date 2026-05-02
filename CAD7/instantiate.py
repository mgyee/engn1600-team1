#!/usr/bin/env python3
# Converts Verilator-generated header files into a SPICE subcircuit instantiation.

import argparse
import re
from pathlib import Path

# Parse VL_DATA entries from generated header files
# Format: VL_DATA(width, name, msb, lsb)
VL_DATA_RE = re.compile(r"VL_DATA\(\d+,(\w+),(\d+),(\d+)\)")


def expand_bus(name, msb, lsb):
    """Expand a bus signal into individual bit signals."""
    if msb == lsb:
        return [name]

    msb = int(msb)
    lsb = int(lsb)
    step = -1 if msb > lsb else 1
    return [f"{name}{i}" for i in range(msb, lsb + step, step)]


def parse_header_files(inputs_h_path, outputs_h_path):
    """Parse inputs.h and outputs.h to extract port order and expand buses."""
    inputs = []
    outputs = []

    inputs_text = inputs_h_path.read_text()
    for name, msb, lsb in VL_DATA_RE.findall(inputs_text):
        expanded = expand_bus(name, msb, lsb)
        inputs.extend(expanded)

    outputs_text = outputs_h_path.read_text()
    for name, msb, lsb in VL_DATA_RE.findall(outputs_text):
        expanded = expand_bus(name, msb, lsb)
        outputs.extend(expanded)

    return inputs, outputs


def emit_terminations(inputs, outputs, model_name):
    lines = []

    # Inputs: weak pull-down (can change to VDD if needed)
    for p in inputs:
        lines.append(f"R{model_name}_{p} {p} 0 1G")
    # Outputs: also weak termination (stabilizes floating outputs)
    for p in outputs:
        lines.append(f"R{model_name}_{p} {p} 0 1G")

    return lines


def main():
    parser = argparse.ArgumentParser(
        description="Convert Verilator-generated header files into a SPICE subcircuit instantiation."
    )
    parser.add_argument(
        "--inputs-h",
        type=Path,
        required=True,
        help="Path to generated inputs.h header file"
    )
    parser.add_argument(
        "--outputs-h",
        type=Path,
        required=True,
        help="Path to generated outputs.h header file"
    )
    parser.add_argument(
        "--module-name",
        type=str,
        required=True,
        help="Module name to use in SPICE instantiation"
    )
    parser.add_argument(
        "--irreversible",
        type=int,
        default=None,
        help="If set, emit d_cosim model parameter irreversible=<N>",
    )

    args = parser.parse_args()

    inputs, outputs = parse_header_files(args.inputs_h, args.outputs_h)
    module_name = args.module_name

    in_str = " ".join(inputs)
    out_str = " ".join(outputs)

    print(f"* {module_name.upper()}")

    print(f"* Instantiation")
    print(f"a{module_name} [ {in_str} ] [ {out_str} ] null {module_name}")
    model_line = f'.model {module_name} d_cosim simulation="/foss/designs/engn1600-team1/CAD7/{module_name}.so" delay=10p'
    if args.irreversible is not None and args.irreversible > 1:
        model_line += f" irreversible={args.irreversible}"
    print(model_line)

    print()

    print("* Termination")
    for line in emit_terminations(inputs, outputs, module_name):
        print(line)


if __name__ == "__main__":
    main()
