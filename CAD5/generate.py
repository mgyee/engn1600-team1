#!/usr/bin/env python3

VHI = 3.3
VLO = 0.0
T = 5 # nanoseconds

def bits16(x):
    return [(x >> i) & 1 for i in range(16)]

def bits4(x):
    return [(x >> i) & 1 for i in range(4)]

def build_pwl(events):
    return "[ " + " ".join(f"{t} {v}" for t, v in events) + " ]"

def generate_summary(tests):
    lines = ["** TEST SUMMARY"]
    for i, (D, R, I, SEL) in enumerate(tests):
        Q = D << (I if SEL else R) & 0xFFFF
        lines.append(f"** {i:02d}: 0x{D:04X} << ({SEL} ? {I:02d} : {R:02d}) = 0x{Q:04X}")
    return "\n".join(lines)

def generate_pwl_blocks(tests):
    VD = {i: [] for i in range(16)}
    VR = {i: [] for i in range(4)}
    VI = {i: [] for i in range(4)}
    VSEL = []

    for idx, (D, R, I, SEL) in enumerate(tests):
        t0 = f"{idx * T}n"
        t1 = f"{(idx+1) * T}n"

        Dbits = bits16(D)
        Rbits = bits4(R)
        Ibits = bits4(I)

        for i in range(16):
            VD[i] += [(t0, VHI if Dbits[i] else VLO),
                      (t1, VHI if Dbits[i] else VLO)]
            
        for i in range(4):
            VR[i] += [(t0, VHI if Rbits[i] else VLO),
                      (t1, VHI if Rbits[i] else VLO)]
            VI[i] += [(t0, VHI if Ibits[i] else VLO),
                      (t1, VHI if Ibits[i] else VLO)]

        VSEL += [(t0, VHI if SEL else VLO),
                 (t1, VHI if SEL else VLO)]  
        
    lines = []

    # D bus
    lines.append("** D BUS")
    for i in reversed(range(16)):
        lines.append(f"alter @VD{i}[PWL] = {build_pwl(VD[i])}")

    # R bus
    lines.append("\n** R BUS")
    for i in reversed(range(4)):
        lines.append(f"alter @VR{i}[PWL] = {build_pwl(VR[i])}")

    # I bus
    lines.append("\n** I BUS")
    for i in reversed(range(4)):
        lines.append(f"alter @VI{i}[PWL] = {build_pwl(VI[i])}")

    # control
    lines.append("\n** CONTROL")
    lines.append(f"alter @VSEL[PWL] = {build_pwl(VSEL)}")

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

write shifter_tb.raw

.endc
"""

    return header + body + footer

if __name__ == "__main__":
    tests = [
        (0x1234, 5,  10, 0),
        (0x5678, 12, 3,  1),
        (0xFFFF, 15, 0,  0),
        (0x0001, 0,  15, 1),
    ]

    with open("shifter_tb_gen.spice", "w") as f:
        f.write(generate_ngspice(tests))
    print("Generated shifter_tb_gen.spice")
