#!/usr/bin/env python3
import re
import sys

PIN_RE = re.compile(
    r'\{[^}]*name=([A-Za-z_]\w*(?:\[\d+\.\.\d+\])?)[^}]*dir=(in|inout)[^}]*\}'
)

BUS_RE = re.compile(r'([A-Za-z_]\w*)\[(\d+)\.\.(\d+)\]')


def expand_pin(name):
    m = BUS_RE.fullmatch(name)
    if not m:
        return [name]

    base, hi, lo = m.group(1), int(m.group(2)), int(m.group(3))

    step = -1 if hi > lo else 1
    return [f"{base}{i}" for i in range(hi, lo + step, step)]


def parse_pins(sym_text):
    groups = []

    for match in PIN_RE.finditer(sym_text):
        name = match.group(1)
        expanded = expand_pin(name)
        groups.append(expanded)

    return groups


def generate_sch(groups):
    lines = []

    start_x = 0
    start_y = 400
    row_spacing = 100
    col_spacing = 150

    for row_idx, group in enumerate(groups):
        y = start_y + row_idx * row_spacing

        for col_idx, signal in enumerate(group):
            x = start_x + col_idx * col_spacing

            # voltage source
            lines.append(
                f'C {{devices/vsource.sym}} {x} {y} 1 0 {{name=V{signal} value=0}}'
            )
            # lab pin
            lines.append(
                f'C {{devices/lab_pin.sym}} {x+30} {y} 2 0 {{name=p{signal} lab={signal}}}'
            )
            # ground
            lines.append(
                f'C {{devices/gnd.sym}} {x-30} {y} 1 0 {{name=g{signal}}}'
            )

    return "\n".join(lines)


def main():
    if len(sys.argv) != 2:
        print("usage: vsources.py input.sym")
        sys.exit(1)

    with open(sys.argv[1], "r") as f:
        sym_text = f.read()

    groups = parse_pins(sym_text)
    sch_text = generate_sch(groups)

    with open("tmp.sch", "w") as f:
        f.write(sch_text)

    print("wrote tmp.sch")


if __name__ == "__main__":
    main()