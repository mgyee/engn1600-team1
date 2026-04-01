#!/usr/bin/env python3

VHI = 3.3
VLO = 0.0
T = 5 # nanoseconds

def bits16(x):
    return [(x >> i) & 1 for i in range(16)]

def op_to_sel(op):
    if op == "+":
        return (0, 0, 0)
    elif op == "&":
        return (0, 1, 0)
    elif op == "|":
        return (1, 0, 0)
    elif op == "^":
        return (1, 1, 0)
    elif op == "-":
        return (0, 0, 1)
    else:
        raise ValueError(op)

def build_pwl(events):
    return "[ " + " ".join(f"{t} {v}" for t, v in events) + " ]"

def generate_summary(tests):
    lines = ["** TEST SUMMARY"]
    for i, (A, B, op) in enumerate(tests):
        lines.append(f"** {i:02d}: 0x{A:04X} {op} 0x{B:04X}")
    return "\n".join(lines)

def generate_pwl_blocks(tests):
    VA = {i: [] for i in range(16)}
    VB = {i: [] for i in range(16)}
    VSEL0, VSEL1, VCIN = [], [], []

    for idx, (A, B, op) in enumerate(tests):
        t0 = f"{idx * T}n"
        t1 = f"{(idx+1) * T}n"

        Abits = bits16(A)
        Bbits = bits16(B)
        sel1, sel0, cin = op_to_sel(op)

        for i in range(16):
            VA[i] += [(t0, VHI if Abits[i] else VLO),
                      (t1, VHI if Abits[i] else VLO)]
            VB[i] += [(t0, VHI if Bbits[i] else VLO),
                      (t1, VHI if Bbits[i] else VLO)]

        VSEL1 += [(t0, VHI if sel1 else VLO),
                  (t1, VHI if sel1 else VLO)]
        VSEL0 += [(t0, VHI if sel0 else VLO),
                  (t1, VHI if sel0 else VLO)]
        VCIN  += [(t0, VHI if cin  else VLO),
                  (t1, VHI if cin  else VLO)]

    lines = []

    # A bus
    lines.append("** A BUS")
    for i in reversed(range(16)):
        lines.append(f"alter @VA{i}[PWL] = {build_pwl(VA[i])}")

    # B bus
    lines.append("\n** B BUS")
    for i in reversed(range(16)):
        lines.append(f"alter @VB{i}[PWL] = {build_pwl(VB[i])}")

    # control
    lines.append("\n** CONTROL")
    lines.append(f"alter @VSEL1[PWL] = {build_pwl(VSEL1)}")
    lines.append(f"alter @VSEL0[PWL] = {build_pwl(VSEL0)}")
    lines.append(f"alter @VCIN[PWL]  = {build_pwl(VCIN)}")

    return "\n".join(lines)

def generate_ngspice(tests):
    n = len(tests)
    tstop = n * T
    tstep = 0.001 * T

    header = f"""{generate_summary(tests)}

.control
save all

** Define input signals

"""

    body = generate_pwl_blocks(tests)

    footer = f"""

tran {tstep}n {tstop}n

write alu_tb.raw

.endc
"""

    return header + body + footer

if __name__ == "__main__":
    tests = [
        (0x1234, 0x4321, "+"), # Simple addition
        (0xFFFF, 0x0001, "+"), # -1 + 1 = 0
        (0x7FFF, 0x0001, "+"), # Signed overflow
        (0x4321, 0x1234, "-"), # Simple subtraction
        (0x0000, 0x0001, "-"), # 0 - 1 = -1
        (0x8000, 0x0001, "-"), # Signed underflow
        (0x1234, 0x1234, "-"), # Raise Z
        (0x1234, 0x4321, "-"), # Raise N, lower Z
        (0x1234, 0x00FF, "&"), # AND
        (0xAAAA, 0x5555, "|"), # OR
        (0xF0F0, 0x0F0F, "^"), # XOR
    ]

    with open("alu_tb_gen.spice", "w") as f:
        f.write(generate_ngspice(tests))
    print("Generated alu_tb_gen.spice")
