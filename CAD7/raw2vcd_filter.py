import sys
import os
import numpy as np
from PyLTSpice import RawRead
from vcd import VCDWriter


def convert_raw_to_vcd(input_path, search_terms=None):
    if not os.path.exists(input_path):
        print(f"Error: File '{input_path}' not found.")
        return

    base_path = os.path.splitext(input_path)[0]
    output_path = base_path + ".vcd"

    print(f"Reading: {input_path}")
    ltr = RawRead(input_path)

    time_axis = np.abs(ltr.get_trace(0))
    all_trace_names = ltr.get_trace_names()

    # --- Flexible Substring Filter ---
    signal_names = []
    if search_terms:
        for trace in all_trace_names:
            # Check if any of your search terms are inside the trace name
            if any(term.lower() in trace.lower() for term in search_terms):
                if trace.lower() != "time":
                    signal_names.append(trace)
    else:
        # Default: All voltages if no search term is provided
        signal_names = [n for n in all_trace_names if n.startswith("V(")]

    if not signal_names:
        print("Error: No signals found matching your search terms.")
        return

    print(f"Matched {len(signal_names)} signals. Exporting {len(time_axis)} points...")

    timestamps = (time_axis * 1e12).astype(np.int64)

    with open(output_path, "w") as f:
        with VCDWriter(f, timescale="1 ns") as writer:
            vcd_vars = []
            data_arrays = []

            # Tracking used names to prevent VCD collisions
            used_names = set()

            for i, name in enumerate(signal_names):
                # Clean up name for VCD compatibility
                clean_name = name.replace("(", "_").replace(")", "").replace(".", "_")

                # Double-check for duplicates in the cleaned names
                if clean_name in used_names:
                    clean_name = f"{clean_name}_{i}"
                used_names.add(clean_name)

                vcd_vars.append(
                    writer.register_var("logic", clean_name, "wire", size=1)
                )
                data_arrays.append(ltr.get_trace(name))

            # Stream the data
            for i, ts in enumerate(timestamps):
                ts_val = int(ts)
                for sig_idx, var in enumerate(vcd_vars):
                    digital_val = 1 if float(data_arrays[sig_idx][i]) > 1.65 else 0
                    writer.change(var, ts_val, digital_val)
    print(f"Success! Saved {len(signal_names)} signals to {output_path}")


if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python3 raw2vcd_filter.py <file.raw> [substring1 substring2 ...]")
    else:
        raw_file = sys.argv[1]
        search_terms = sys.argv[2:] if len(sys.argv) > 2 else None
        convert_raw_to_vcd(raw_file, search_terms)
