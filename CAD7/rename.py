#!/usr/bin/env python3
import re
import sys

MODULE_RE = re.compile(
    r"(module\s+([a-zA-Z_]\w*)\b.*?endmodule)",
    re.DOTALL
)

INSTANCE_RE = re.compile(
    r"""
    ^\s*                              # start of line + indentation
    ([a-zA-Z_]\w*)                    # submodule
    \s*
    (?:\#\s*\(.*?\)\s*)?              # optional #( ... )
    ([a-zA-Z_]\w*)                    # instance name
    \s*\(                             # opening paren
    """,
    re.MULTILINE | re.DOTALL | re.VERBOSE
)


def process_module(module_text, module_name):
    def repl(match):
        submodule = match.group(1)
        inst = match.group(2)

        # Skip module declaration line
        if submodule == "module":
            return match.group(0)

        new_inst = f"{module_name}_{inst}"

        full = match.group(0)
        # Replace only the instance name (second identifier)
        return full.replace(inst, new_inst, 1)

    return INSTANCE_RE.sub(repl, module_text)


def main():
    if len(sys.argv) != 2:
        print("usage: prefix_instances.py <file.v>")
        sys.exit(1)

    path = sys.argv[1]

    with open(path, "r", encoding="utf-8") as f:
        text = f.read()

    def module_repl(match):
        full = match.group(1)
        name = match.group(2)
        return process_module(full, name)

    new_text = MODULE_RE.sub(module_repl, text)

    with open(path, "w", encoding="utf-8") as f:
        f.write(new_text)

    print("done")


if __name__ == "__main__":
    main()