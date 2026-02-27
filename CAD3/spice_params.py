#!/usr/bin/env python3

import argparse
import re
from pathlib import Path


ARCH_BEGIN = "**** begin user architecture code"
ARCH_END   = "**** end user architecture code"


# .param kNAME = VALUE
PARAM_RE = re.compile(
    r"\.param\s+(\w+)\s*=\s*([^\s]+)",
    re.IGNORECASE,
)

# W='kQb*0.36u'
WIDTH_RE = re.compile(
    r"(W\s*=\s*')([^']*)(')",
    re.IGNORECASE,
)


def parse_params(lines):
    """
    Find FIRST architecture block and return dict:
        { "kQb": "0.36/0.36", ... }
    """
    begin = None
    end = None

    for i, line in enumerate(lines):
        if begin is None and ARCH_BEGIN in line:
            begin = i
            continue

        if begin is not None and ARCH_END in line:
            end = i
            break

    if begin is None or end is None:
        raise RuntimeError("Architecture code delimiters not found.")

    params = {}

    for line in lines[begin:end]:
        m = PARAM_RE.search(line)
        if m:
            name, value = m.groups()
            params[name] = value

    return params


def substitute_width(expr: str, params: dict):
    """
    Replace kXXX tokens with parameter values.

    Example:
        kQb*0.36u -> 0.36/0.36*0.36u
    """
    def repl(match):
        name = match.group(0)
        return params.get(name, name)

    return re.sub(r"\bk\w+\b", repl, expr)


def process_line(line: str, params: dict):
    """
    Substitute only inside W='...'
    Leave everything else intact.
    """
    def repl(m):
        prefix, expr, suffix = m.groups()
        new_expr = substitute_width(expr, params)
        return f"{prefix}{new_expr}{suffix}"

    return WIDTH_RE.sub(repl, line)


def main():
    parser = argparse.ArgumentParser(
        description="Overwrite SPICE netlist replacing W='kX*...' using .param values."
    )
    parser.add_argument("file", help="input .spice netlist")

    args = parser.parse_args()

    path = Path(args.file)

    with path.open() as f:
        lines = f.readlines()

    params = parse_params(lines)

    new_lines = [
        process_line(line, params)
        for line in lines
    ]

    # overwrite file
    with path.open("w") as f:
        f.writelines(new_lines)


if __name__ == "__main__":
    main()