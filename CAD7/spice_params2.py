#!/usr/bin/python3

import re


def parse_to_float(val_str):
    """Converts SPICE numerical strings (e.g., 0.72u) to Python floats."""
    val_str = val_str.strip()
    suffixes = {"u": 1e-6, "n": 1e-9, "p": 1e-12, "m": 1e-3, "k": 1e3, "meg": 1e6}
    for suff, mult in suffixes.items():
        if val_str.lower().endswith(suff):
            try:
                return float(val_str[: -len(suff)]) * mult
            except ValueError:
                pass
    return float(val_str)


def evaluate_expr(expr, params):
    """Safely replaces parameter variables and evaluates SPICE math."""
    # Remove quotes
    expr = expr.strip("'\"")

    # Substitute local parameters (sorted by length to prevent partial matches like 'kY' inside 'kYb')
    for p in sorted(params.keys(), key=len, reverse=True):
        expr = re.sub(r"\b" + p + r"\b", str(params[p]), expr)

    # Temporarily replace standard SPICE suffixes for eval() math
    expr_for_eval = re.sub(r"(\d+(?:\.\d+)?)\s*u\b", r"\1e-6", expr)
    expr_for_eval = re.sub(r"(\d+(?:\.\d+)?)\s*n\b", r"\1e-9", expr_for_eval)
    expr_for_eval = re.sub(r"(\d+(?:\.\d+)?)\s*p\b", r"\1e-12", expr_for_eval)

    try:
        val = eval(expr_for_eval)
        # Convert small numbers back to nice SPICE 'u' format (micro)
        if val != 0 and abs(val) < 1e-3:
            return f"{val * 1e6:g}u"
        else:
            return f"{val:g}"
    except Exception:
        # Fallback to the original quoted expression if math evaluation fails
        return f"'{expr}'"


def process_netlist(input_text):
    out_lines = []
    in_subckt = False
    subckt_lines = []

    # We clear the params dictionary for every subcircuit
    # This prevents the "same name but different value" collision
    params = {}

    for line in input_text.splitlines():
        if line.lower().startswith(".subckt"):
            in_subckt = True
            subckt_lines = [line]
            params = {}

        elif line.lower().startswith(".ends"):
            subckt_lines.append(line)

            # PASS 1: Find all .param lines and establish the local scope values
            for s_line in subckt_lines:
                match = re.match(
                    r"^\s*\.param\s+([a-zA-Z0-9_]+)\s*=\s*(.+)$", s_line, re.IGNORECASE
                )
                if match:
                    p_name = match.group(1)
                    p_expr = match.group(2).strip()
                    # evaluate the param itself in case it's math (like 0.775/0.36)
                    evaluated_str = evaluate_expr(p_expr, params)
                    params[p_name] = parse_to_float(evaluated_str)

            # PASS 2: Replace parameterized W='...' and L='...' in the subcircuit body
            for s_line in subckt_lines:

                def replacer(match):
                    prefix = match.group(1)  # captures 'W' or 'L'
                    expr = match.group(2)  # captures the quoted string
                    new_val_str = evaluate_expr(expr, params)

                    if new_val_str.startswith("'"):
                        return match.group(0)  # Keep original if evaluation failed
                    return f"{prefix}={new_val_str}"

                # Target W='math' or L='math'
                new_line = re.sub(r'\b(W|L)=([\'"][^\'"]+[\'"])', replacer, s_line)
                out_lines.append(new_line)

            in_subckt = False

        elif in_subckt:
            subckt_lines.append(line)
        else:
            # Top-level global lines
            out_lines.append(line)

    return "\n".join(out_lines)


# --- Execution Block ---
if __name__ == "__main__":
    input_filename = "datapath.spice"
    output_filename = "datapath_flattened_params.spice"

    with open(input_filename, "r") as f:
        netlist = f.read()

    processed_netlist = process_netlist(netlist)

    with open(output_filename, "w") as f:
        f.write(processed_netlist)

    print(f"Success! Parameterized widths replaced. Saved to {output_filename}")
