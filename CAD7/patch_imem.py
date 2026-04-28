#!/usr/bin/env python3
"""Patch CAD7/imem.v so its MEMFILE parameter defaults to a given path.

Usage:
  python3 patch_imem.py imem.v benches/bench_arith.memh

This is intentionally tiny and strict: it edits the first occurrence of
  parameter MEMFILE = "..."
and fails if it can't find it.
"""

from __future__ import annotations

import re
import sys
from pathlib import Path


def main(argv: list[str]) -> int:
    if len(argv) != 3:
        print("Usage: patch_imem.py <imem.v path> <memfile>", file=sys.stderr)
        return 2

    imem_path = Path(argv[1])
    memfile = argv[2]

    text = imem_path.read_text(encoding="utf-8")

    # Match: parameter MEMFILE = "..."
    pat = re.compile(r'(parameter\s+MEMFILE\s*=\s*")([^"]*)(")')
    m = pat.search(text)
    if not m:
        print(f"Could not find MEMFILE parameter assignment in {imem_path}", file=sys.stderr)
        return 1

    new_text = pat.sub(lambda mm: mm.group(1) + memfile + mm.group(3), text, count=1)
    if new_text == text:
        print("No change made (already set?)", file=sys.stderr)
        return 1

    imem_path.write_text(new_text, encoding="utf-8")
    return 0


if __name__ == "__main__":
    raise SystemExit(main(sys.argv))
