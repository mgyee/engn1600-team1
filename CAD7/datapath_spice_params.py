import re


class NetlistSpecializer:
    def __init__(self, text):
        self.lines = self.merge_continuations(text.splitlines())
        self.templates = {}
        self.generated = {}
        self.parse_templates()

    def merge_continuations(self, lines):
        """Merges SPICE '+' line continuations into single lines."""
        merged = []
        for line in lines:
            if line.strip().startswith("+"):
                if merged:
                    merged[-1] += " " + line.strip()[1:].strip()
            else:
                merged.append(line)
        return merged

    def parse_templates(self):
        """Extracts all .subckt blocks and their default .params."""
        in_sub = False
        cur_sub = None
        for line in self.lines:
            tokens = line.split()
            if not tokens:
                continue

            if tokens[0].lower() == ".subckt":
                in_sub = True
                cur_sub = tokens[1]
                self.templates[cur_sub] = {"def_line": line, "defaults": {}, "body": []}
            elif tokens[0].lower() == ".ends":
                in_sub = False
                cur_sub = None
            elif in_sub:
                if tokens[0].lower() == ".param":
                    # Extract default params (e.g., .param kI=2.5)
                    pairs = re.findall(r"(\w+)\s*=\s*([^\s]+)", line[6:])
                    for k, v in pairs:
                        self.templates[cur_sub]["defaults"][k] = v.strip("'\"")
                else:
                    self.templates[cur_sub]["body"].append(line)

    def eval_expr(self, expr, context):
        """Evaluates SPICE math strings into formatted numerical strings rounded to nearest 0.005."""
        expr = str(expr).strip("'\"")

        # Replace variables from context (longest keys first to prevent partial matches)
        for k, v in sorted(context.items(), key=lambda x: len(x[0]), reverse=True):
            expr = re.sub(r"\b" + k + r"\b", str(v), expr)

        # Translate SPICE suffixes for python eval()
        expr_for_eval = re.sub(r"(\d+(?:\.\d+)?)\s*u\b", r"\1e-6", expr)
        expr_for_eval = re.sub(r"(\d+(?:\.\d+)?)\s*n\b", r"\1e-9", expr_for_eval)
        expr_for_eval = re.sub(r"(\d+(?:\.\d+)?)\s*p\b", r"\1e-12", expr_for_eval)

        try:
            val = eval(expr_for_eval)
            if type(val) in (int, float):
                # Convert small numbers back to nice SPICE 'u' format
                if val != 0 and abs(val) < 1e-3:
                    val_u = val * 1e6
                    # Round to nearest 0.005 and clamp to 3 decimal places to avoid float artifacts
                    rounded_u = round(round(val_u / 0.005) * 0.005, 3)
                    return f"{rounded_u:g}u"
                else:
                    # Round standard numeric values to nearest 0.005 as well
                    rounded_val = round(round(val / 0.005) * 0.005, 3)
                    return f"{rounded_val:g}"
        except:
            pass
        return expr.strip("'\"")

    def specialize(self, subckt_name, passed_params):
        """Recursively generates hardcoded clones of subcircuits based on passed params."""
        if subckt_name not in self.templates:
            return subckt_name  # Primitive element (e.g., nfet_03v3)

        tmpl = self.templates[subckt_name]

        # 1. Resolve the math context for this specific instance
        context = {}
        for k, v in tmpl["defaults"].items():
            context[k] = v
        for k, v in passed_params.items():
            context[k] = v  # Passed params override defaults

        # Re-evaluate in case parameters depend on each other (e.g., kY=kI/2)
        for _ in range(3):
            for k, v in context.items():
                context[k] = self.eval_expr(v, context)

        # 2. Build a unique name for this specific parameter combo
        if not context:
            new_name = subckt_name
        else:
            suff_parts = [
                f"{k}_{str(v).replace('.', 'p').replace('-', 'm')}"
                for k, v in sorted(context.items())
            ]
            new_name = f"{subckt_name}_" + "_".join(suff_parts)

        if new_name in self.generated:
            return new_name  # We already built this clone!

        # Initialize empty to prevent infinite recursion loop
        self.generated[new_name] = []
        out_lines = []

        # 3. Write the new .subckt definition line
        def_tokens = tmpl["def_line"].split()
        port_tokens = [t for t in def_tokens[2:] if "=" not in t]
        out_lines.append(f".subckt {new_name} " + " ".join(port_tokens))

        # 4. Process the body line-by-line using the resolved context
        for line in tmpl["body"]:
            tokens = line.split()
            if not tokens:
                continue

            # Helper to replace param=val assignments
            def repl(m):
                k, v = m.group(1), m.group(2)
                return f"{k}={self.eval_expr(v, context)}"

            if tokens[0].lower().startswith("x"):
                # It's an instance of another subcircuit. Find the subcircuit name.
                sub_idx = -1
                for i in range(len(tokens) - 1, 0, -1):
                    if tokens[i] in self.templates:
                        sub_idx = i
                        break

                if sub_idx != -1:
                    child_name = tokens[sub_idx]
                    child_params = {}

                    # Extract the params passed to the child
                    for t in tokens[sub_idx + 1 :]:
                        if "=" in t:
                            k, v = t.split("=", 1)
                            child_params[k] = self.eval_expr(v, context)

                    # Recursively build the child!
                    spec_child = self.specialize(child_name, child_params)

                    # Rewrite the line to call the hardcoded child (and drop param passing)
                    new_line = " ".join(tokens[:sub_idx]) + f" {spec_child}"
                    out_lines.append(new_line)
                else:
                    # Unknown subcircuit / standard cell. Just evaluate its parameters.
                    new_line = re.sub(
                        r'\b([a-zA-Z0-9_]+)=([\'"][^\'"]+[\'"]|[^\s]+)', repl, line
                    )
                    out_lines.append(new_line)

            elif tokens[0].lower().startswith("m"):
                # MOSFET - replace W, L, nf, m, etc.
                new_line = re.sub(
                    r'\b([a-zA-Z0-9_]+)=([\'"][^\'"]+[\'"]|[^\s]+)', repl, line
                )
                out_lines.append(new_line)
            else:
                out_lines.append(line)

        out_lines.append(".ends")
        self.generated[new_name] = out_lines
        return new_name

    def process_all(self):
        # Seed the process by specializing all templates with empty parameters.
        # This triggers the recursive evaluation tree for the entire hierarchy.
        for t in self.templates:
            self.specialize(t, {})

        # Compile the final flat file
        final_lines = []
        for name, body in self.generated.items():
            final_lines.extend(body)
            final_lines.append("")  # Blank line separator

        return "\n".join(final_lines)


# --- Execution Block ---
if __name__ == "__main__":
    input_filename = "datapath.spice"
    output_filename = "datapath_snapped.spice"

    with open(input_filename, "r") as f:
        netlist = f.read()

    specializer = NetlistSpecializer(netlist)
    processed_netlist = specializer.process_all()

    with open(output_filename, "w") as f:
        f.write(processed_netlist)

    print(
        f"Success! Hierarchical parameters resolved and snapped to 0.005 grid. Saved to {output_filename}"
    )
