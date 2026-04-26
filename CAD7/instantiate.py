#!/usr/bin/env python3
# Converts a Verilog module into a SPICE subcircuit instantiation.

import re
import sys
from pathlib import Path

MODULE_RE = re.compile(
    r"module\s+(\w+)\s*(?:#\s*\(.*?\)\s*)?\((.*?)\)\s*;.*?endmodule",
    re.S,
)

PORT_RE = re.compile(
    r"\b(input|output|inout)\b\s*(?:wire|reg)?\s*(?:\[(\d+):(\d+)\])?\s*([\w]+)",
)

def expand_bus(name, msb, lsb):
    if not msb:
        return [name]

    msb = int(msb)
    lsb = int(lsb)
    step = -1 if msb > lsb else 1
    return [f"{name}{i}" for i in range(msb, lsb + step, step)]


def parse_ports(port_block):
    inputs = []
    outputs = []

    for direction, msb, lsb, name in PORT_RE.findall(port_block):
        expanded = expand_bus(name, msb, lsb)

        if direction == "input":
            inputs.extend(expanded)
        elif direction == "output":
            outputs.extend(expanded)
        elif direction == "inout":
            inputs.extend(expanded)
            outputs.extend(expanded)

    return inputs, outputs


def emit_terminations(inputs, outputs, model_name):
    lines = []

    # Inputs: weak pull-down (can change to VDD if needed)
    for p in inputs:
        lines.append(f"R{model_name}_{p}_term {p} 0 1G")
    # Outputs: also weak termination (stabilizes floating outputs)
    for p in outputs:
        lines.append(f"R{model_name}_{p}_term {p} 0 1G")

    return lines


def main():
    if len(sys.argv) != 2:
        print("usage: instantiate.py file.v")
        sys.exit(1)

    path = Path(sys.argv[1])
    text = path.read_text()

    m = MODULE_RE.search(text)
    if not m:
        print("no module found")
        sys.exit(1)

    module_name = m.group(1)
    port_block = m.group(2)

    inputs, outputs = parse_ports(port_block)

    in_str = " ".join(inputs)
    out_str = " ".join(outputs)

    print(f"* {module_name.upper()}")

    print(f"* Instantiation")
    print(f"a{module_name} [ {in_str} ] [ {out_str} ] null {module_name}")
    print(f'.model {module_name} d_cosim simulation="/foss/designs/engn1600-team1/CAD7/{module_name}.so" delay=10p')

    print()

    print("* Termination")
    for line in emit_terminations(inputs, outputs, module_name):
        print(line)

    print()


if __name__ == "__main__":
    main()
