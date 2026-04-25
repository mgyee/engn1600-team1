#!/usr/bin/env python3
import os
import re

ROOT = "."  # run from project root

RULES = {
    "CAD4": {
        "2x1_mux": "alu_2x1_mux",
        "2x1_mux_cmos": "alu_2x1_mux_cmos",
        "4x1_mux": "alu_4x1_mux",
        "full_adder": "alu_full_adder",
        "inv": "alu_inv",
        "nand2": "alu_nand2",
        "nor2": "alu_nor2",
    },
    "CAD5": {
        "2x1_mux": "shifter_2x1_mux",
        "2x1_mux_cmos": "shifter_2x1_mux_cmos",
        "inv": "shifter_inv",
        "nand2": "shifter_nand2",
        "nor2": "shifter_nor2",
    },
    "CAD6": {
        "2x1_mux": "pc_2x1_mux",
        "dff": "pc_dff",
        "full_adder": "pc_full_adder",
        "inv": "pc_inv",
    },
    "CAD7": {
        "2x1_mux": "datapath_2x1_mux",
        "4x1_mux": "datapath_4x1_mux",
        "dff": "datapath_dff",
        "inv": "datapath_inv",
        "nand2": "datapath_nand2",
    },
}

EXTS = [".sch", ".sym", ".spice"]


def replace_in_file(path, mapping):
    with open(path, "r", encoding="utf-8") as f:
        text = f.read()

    original = text

    for old, new in mapping.items():
        for ext in EXTS:
            pattern = re.compile(rf"\b{re.escape(old)}{re.escape(ext)}\b")
            text = pattern.sub(f"{new}{ext}", text)

    if text != original:
        with open(path, "w", encoding="utf-8") as f:
            f.write(text)
        print(f"updated contents: {path}")


def rename_files(dir_path, mapping):
    for root, _, files in os.walk(dir_path):
        for filename in files:
            name, ext = os.path.splitext(filename)
            if ext not in EXTS:
                continue

            if name in mapping:
                new_name = mapping[name] + ext
                old_path = os.path.join(root, filename)
                new_path = os.path.join(root, new_name)

                os.rename(old_path, new_path)
                print(f"renamed: {old_path} → {new_path}")


def process_dir(base, mapping):
    dir_path = os.path.join(ROOT, base)

    if not os.path.isdir(dir_path):
        return

    # 1. update contents
    for root, _, files in os.walk(dir_path):
        for file in files:
            if any(file.endswith(ext) for ext in EXTS):
                replace_in_file(os.path.join(root, file), mapping)

    # 2. rename files
    rename_files(dir_path, mapping)


def main():
    for base, mapping in RULES.items():
        process_dir(base, mapping)


if __name__ == "__main__":
    main()