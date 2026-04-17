#!/usr/bin/env python3

from itertools import chain

VHI = 3.3
VLO = 0.0
T = 5 # nanoseconds

def bits16(x):
    return [(x >> i) & 1 for i in range(16)]

def bits8(x):
    return [(x >> i) & 1 for i in range(8)]

def bits4(x):
    return [(x >> i) & 1 for i in range(4)]

def build_pwl(events):
    return "[ " + " ".join(f"{t} {v}" for t, v in events) + " ]"

def generate_summary(tests):
    pc = None
    lines = ["** TEST SUMMARY"]
    for i, (RSTn, BR, DISP, JMP, DEST, SI, SE) in enumerate(tests):
        if (not RSTn):
            tag = f"RESET"
            pc = 0
        elif SE:
            tag = f"SI bit {SI}, SO was {(pc >> 15) & 1}"
            pc = pc if pc is None else ((pc << 1) + SI) & 0xFFFF
        elif JMP:
            tag = f"JMP to 0x{DEST:04X}"
            pc = DEST
        elif BR:
            tag = f"BR by {DISP - 256 if DISP &0x80 else DISP}"
            pc = pc if pc is None else (pc + (DISP - 256 if DISP & 0x80 else DISP)) & 0xFFFF
        else:
            tag = f"INCR"
            pc = pc if pc is None else (pc + 2) & 0xFFFF
        pc_str = f"0x{pc:04X}" if pc is not None else "0x????"
        lines.append(f"** {i:02d}: PC <= {pc_str} ({tag})")
    return "\n".join(lines)

def generate_pwl_blocks(tests):
    VRSTn = []
    VBR = []
    VDISP = {i: [] for i in range(8)}
    VJMP = []
    VDEST = {i: [] for i in range(16)}
    VSI = []
    VSE = []

    for idx, (RSTn, BR, DISP, JMP, DEST, SI, SE) in enumerate(tests):
        t0 = f"{idx * T}n"
        t1 = f"{(idx+1) * T}n"

        DISPbits = bits8(DISP)
        DESTbits = bits16(DEST)
        
        for i in range(16):
            VDEST[i] += [(t0, VHI if DESTbits[i] else VLO),
                         (t1, VHI if DESTbits[i] else VLO)]
            
        for i in range(8):
            VDISP[i] += [(t0, VHI if DISPbits[i] else VLO),
                         (t1, VHI if DISPbits[i] else VLO)]

        VRSTn += [(t0, VHI if RSTn else VLO),
                  (t1, VHI if RSTn else VLO)]
        VBR += [(t0, VHI if BR else VLO),
                (t1, VHI if BR else VLO)]
        VJMP += [(t0, VHI if JMP else VLO),
                (t1, VHI if JMP else VLO)]
        VSI += [(t0, VHI if SI else VLO),
                (t1, VHI if SI else VLO)]
        VSE += [(t0, VHI if SE else VLO),
                (t1, VHI if SE else VLO)]
        
    lines = []

    # DEST bus
    lines.append("** DEST BUS")
    for i in reversed(range(16)):
        lines.append(f"alter @VDEST{i}[PWL] = {build_pwl(VDEST[i])}")

    # DISP bus
    lines.append("\n** DISP BUS")
    for i in reversed(range(8)):
        lines.append(f"alter @VDISP{i}[PWL] = {build_pwl(VDISP[i])}")

    # Control signals
    lines.append("\n** CONTROL")
    lines.append(f"alter @VRSTn[PWL] = {build_pwl(VRSTn)}")
    lines.append(f"alter @VBR[PWL] = {build_pwl(VBR)}")
    lines.append(f"alter @VJMP[PWL] = {build_pwl(VJMP)}")
    lines.append(f"alter @VSI[PWL] = {build_pwl(VSI)}")
    lines.append(f"alter @VSE[PWL] = {build_pwl(VSE)}")

    # CLK signal
    lines.append(f"\n** CLK")
    lines.append(f"alter @VCLK[PULSE] = [ 0 {VHI} {T * 3/4}n 0 0 {T/2}n {T}n 0 ]")

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

write pc_tb.raw

.endc
"""

    return header + body + footer

if __name__ == "__main__":
    tests = [
        # RSTn, BR, DISP, JMP, DEST, SI, SE
        (1, 0, 0, 0, 0x0000, 0, 0),
        (0, 0, 0, 0, 0x0000, 0, 0), # RESET
        (1, 0, 0, 0, 0x0000, 0, 0),
        (1, 1, +16 & 0xFF, 0, 0x0000, 0, 0), # BR forward
        (1, 0, 0, 0, 0x0000, 0, 0),
        (1, 1, -16 & 0xFF, 0, 0x0000, 0, 0), # BR backward
        (1, 0, 0, 0, 0x0000, 0, 0),
        (1, 0, 0, 1, 0x1234, 0, 0), # JMP
        (1, 0, 0, 0, 0x0000, 0, 0),
        (1, 1, +32, 1, 0x3579, 0, 0), # BR + JMP (ignore BR)
        # SCANNING TESTS
        *((1, 1, +32, 1, 0xFFFF, i & 0, 1) for i in range(16)),
        *((1, 1, +32, 1, 0xFFFF, i & 1, 1) for i in range(16)),
    ]
    
    with open("pc_tb_gen.spice", "w") as f:
        f.write(generate_ngspice(tests))
    print("Generated pc_tb_gen.spice")
