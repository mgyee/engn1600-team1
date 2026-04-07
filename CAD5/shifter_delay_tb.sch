v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 -390 -640 410 -240 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=7n
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
digital=1
autoload=1
color="4 5 6 8 9 4 4 4"
node="D[15..0];d15,d14,d13,d12,d11,d10,d9,d8,d7,d6,d5,d4,d3,d2,d1,d0
R[3..0];r3,r2,r1,r0
I[3..0];i3,i2,i1,i0
SEL
X[15..0]b;x1.x15b,x1.x14b,x1.x13b,x1.x12b,x1.x11b,x1.x10b,x1.x9b,x1.x8b,x1.x7b,x1.x6b,x1.x5b,x1.x4b,x1.x3b,x1.x2b,x1.x1b,x1.x0b
Y[15..0]b;x1.y15b,x1.y14b,x1.y13b,x1.y12b,x1.y11b,x1.y10b,x1.y9b,x1.y8b,x1.y7b,x1.y6b,x1.y5b,x1.y4b,x1.y3b,x1.y2b,x1.y1b,x1.y0b
Z[15..0]b;x1.z15b,x1.z14b,x1.z13b,x1.z12b,x1.z11b,x1.z10b,x1.z9b,x1.z8b,x1.z7b,x1.z6b,x1.z5b,x1.z4b,x1.z3b,x1.z2b,x1.z1b,x1.z0b
Q[15..0];q15,q14,q13,q12,q11,q10,q9,q8,q7,q6,q5,q4,q3,q2,q1,q0
"
rawfile=$netlist_dir/shifter_delay_tb.raw}
C {engn1600-team1/CAD5/shifter.sym} 0 0 0 0 {name=x1}
C {devices/vsource.sym} -1170 450 1 0 {name=VVDD value=3.3}
C {devices/lab_pin.sym} -1140 450 2 0 {name=pVDD lab=VDD}
C {devices/gnd.sym} -1200 450 1 0 {name=gVDD}
C {devices/vsource.sym} -1170 350 1 0 {name=VVSS value=0}
C {devices/lab_pin.sym} -1140 350 2 0 {name=pVSS lab=VSS}
C {devices/gnd.sym} -1200 350 1 0 {name=gVSS}
C {devices/vsource.sym} -1020 750 1 0 {name=VD15 value=0}
C {devices/lab_pin.sym} -990 750 2 0 {name=pD15 lab=D15}
C {devices/gnd.sym} -1050 750 1 0 {name=gD15}
C {devices/vsource.sym} -1020 650 1 0 {name=VD14 value=0}
C {devices/lab_pin.sym} -990 650 2 0 {name=pD14 lab=D14}
C {devices/gnd.sym} -1050 650 1 0 {name=gD14}
C {devices/vsource.sym} -1020 550 1 0 {name=VD13 value=0}
C {devices/lab_pin.sym} -990 550 2 0 {name=pD13 lab=D13}
C {devices/gnd.sym} -1050 550 1 0 {name=gD13}
C {devices/vsource.sym} -1020 450 1 0 {name=VD12 value=0}
C {devices/lab_pin.sym} -990 450 2 0 {name=pD12 lab=D12}
C {devices/gnd.sym} -1050 450 1 0 {name=gD12}
C {devices/vsource.sym} -1020 350 1 0 {name=VD11 value=0}
C {devices/lab_pin.sym} -990 350 2 0 {name=pD11 lab=D11}
C {devices/gnd.sym} -1050 350 1 0 {name=gD11}
C {devices/vsource.sym} -1020 250 1 0 {name=VD10 value=0}
C {devices/lab_pin.sym} -990 250 2 0 {name=pD10 lab=D10}
C {devices/gnd.sym} -1050 250 1 0 {name=gD10}
C {devices/vsource.sym} -1020 150 1 0 {name=VD9 value=0}
C {devices/lab_pin.sym} -990 150 2 0 {name=pD9 lab=D9}
C {devices/gnd.sym} -1050 150 1 0 {name=gD9}
C {devices/vsource.sym} -1020 50 1 0 {name=VD8 value=0}
C {devices/lab_pin.sym} -990 50 2 0 {name=pD8 lab=D8}
C {devices/gnd.sym} -1050 50 1 0 {name=gD8}
C {devices/vsource.sym} -1020 -50 1 0 {name=VD7 value=0}
C {devices/lab_pin.sym} -990 -50 2 0 {name=pD7 lab=D7}
C {devices/gnd.sym} -1050 -50 1 0 {name=gD7}
C {devices/vsource.sym} -1020 -150 1 0 {name=VD6 value=0}
C {devices/lab_pin.sym} -990 -150 2 0 {name=pD6 lab=D6}
C {devices/gnd.sym} -1050 -150 1 0 {name=gD6}
C {devices/vsource.sym} -1020 -250 1 0 {name=VD5 value=0}
C {devices/lab_pin.sym} -990 -250 2 0 {name=pD5 lab=D5}
C {devices/gnd.sym} -1050 -250 1 0 {name=gD5}
C {devices/vsource.sym} -1020 -350 1 0 {name=VD4 value=0}
C {devices/lab_pin.sym} -990 -350 2 0 {name=pD4 lab=D4}
C {devices/gnd.sym} -1050 -350 1 0 {name=gD4}
C {devices/vsource.sym} -1020 -450 1 0 {name=VD3 value=0}
C {devices/lab_pin.sym} -990 -450 2 0 {name=pD3 lab=D3}
C {devices/gnd.sym} -1050 -450 1 0 {name=gD3}
C {devices/vsource.sym} -1020 -550 1 0 {name=VD2 value=0}
C {devices/lab_pin.sym} -990 -550 2 0 {name=pD2 lab=D2}
C {devices/gnd.sym} -1050 -550 1 0 {name=gD2}
C {devices/vsource.sym} -1020 -650 1 0 {name=VD1 value=0}
C {devices/lab_pin.sym} -990 -650 2 0 {name=pD1 lab=D1}
C {devices/gnd.sym} -1050 -650 1 0 {name=gD1}
C {devices/vsource.sym} -1020 -750 1 0 {name=VD0 value=0}
C {devices/lab_pin.sym} -990 -750 2 0 {name=pD0 lab=D0}
C {devices/gnd.sym} -1050 -750 1 0 {name=gD0}
C {devices/vsource.sym} -870 -50 1 0 {name=VI3 value=0}
C {devices/lab_pin.sym} -840 -50 2 0 {name=pI3 lab=I3}
C {devices/gnd.sym} -900 -50 1 0 {name=gI3}
C {devices/vsource.sym} -870 -150 1 0 {name=VI2 value=0}
C {devices/lab_pin.sym} -840 -150 2 0 {name=pI2 lab=I2}
C {devices/gnd.sym} -900 -150 1 0 {name=gI2}
C {devices/vsource.sym} -870 -250 1 0 {name=VI1 value=0}
C {devices/lab_pin.sym} -840 -250 2 0 {name=pI1 lab=I1}
C {devices/gnd.sym} -900 -250 1 0 {name=gI1}
C {devices/vsource.sym} -870 -350 1 0 {name=VI0 value=0}
C {devices/lab_pin.sym} -840 -350 2 0 {name=pI0 lab=I0}
C {devices/gnd.sym} -900 -350 1 0 {name=gI0}
C {devices/vsource.sym} -870 -450 1 0 {name=VR3 value=0}
C {devices/lab_pin.sym} -840 -450 2 0 {name=pR3 lab=R3}
C {devices/gnd.sym} -900 -450 1 0 {name=gR3}
C {devices/vsource.sym} -870 -550 1 0 {name=VR2 value=0}
C {devices/lab_pin.sym} -840 -550 2 0 {name=pR2 lab=R2}
C {devices/gnd.sym} -900 -550 1 0 {name=gR2}
C {devices/vsource.sym} -870 -650 1 0 {name=VR1 value=0}
C {devices/lab_pin.sym} -840 -650 2 0 {name=pR1 lab=R1}
C {devices/gnd.sym} -900 -650 1 0 {name=gR1}
C {devices/vsource.sym} -870 -750 1 0 {name=VR0 value=0}
C {devices/lab_pin.sym} -840 -750 2 0 {name=pR0 lab=R0}
C {devices/gnd.sym} -900 -750 1 0 {name=gR0}
C {devices/vsource.sym} -1170 650 1 0 {name=VSEL value=0}
C {devices/lab_pin.sym} -1140 650 2 0 {name=pSEL lab=SEL}
C {devices/gnd.sym} -1200 650 1 0 {name=gSEL0}
C {lab_pin.sym} 150 -30 0 1 {name=p1 lab=VDD}
C {lab_pin.sym} 150 -10 0 1 {name=p2 lab=VSS}
C {lab_pin.sym} -150 -30 0 0 {name=p3 lab=D[15..0]}
C {lab_pin.sym} -150 -10 0 0 {name=p4 lab=I[3..0]}
C {lab_pin.sym} -150 10 0 0 {name=p5 lab=R[3..0]}
C {lab_pin.sym} -150 30 0 0 {name=p6 lab=SEL}
C {lab_pin.sym} 150 10 0 1 {name=p7 lab=Q[15..0]}
C {code_shown.sym} 610 -950 0 0 {name=s1 only_toplevel=false value="
** DELAY 0x0001 << [0xE -> 0xF -> 0xE]

.control
save all

** Define input signals
let f = 1e9
let T = 1/f
let PW = T/2

let TT = T * 3
let ST = T * 6

let tstop = 7 * T
let tstep = 0.001 * T

** D (0x0001)
alter @VD15[DC] = 0
alter @VD14[DC] = 0
alter @VD13[DC] = 0
alter @VD12[DC] = 0
alter @VD11[DC] = 0
alter @VD10[DC] = 0
alter @VD9[DC]  = 0
alter @VD8[DC]  = 0
alter @VD7[DC]  = 0
alter @VD6[DC]  = 0
alter @VD5[DC]  = 0
alter @VD4[DC]  = 0
alter @VD3[DC]  = 0
alter @VD2[DC]  = 0
alter @VD1[DC]  = 0
alter @VD0[DC]  = 3.3

** R (0x0)
alter @VR3[DC] = 3.3
alter @VR2[DC] = 3.3
alter @VR1[DC] = 3.3
alter @VR0[DC] = 0

** I (0xF)
alter @VI3[DC] = 3.3
alter @VI2[DC] = 3.3
alter @VI1[DC] = 3.3
alter @VI0[DC] = 3.3

** SEL (0 -> 1 -> 0)
alter @VSEL[PULSE] = [ 0 3.3 $&T 0 0 $&TT $&ST 0 ]

tran $&tstep $&tstop

meas tran TPLH TRIG V(SEL) VAL=1.65 RISE=1 TARG V(Q15) VAL=1.65 RISE=1
meas tran TPHL TRIG V(SEL) VAL=1.65 FALL=1 TARG V(Q15) VAL=1.65 FALL=1

plot Q15 x1.Z7b+5 x1.Y3b+10 x1.X1b+15 SEL+20

write shifter_delay_tb.raw

.endc
"}
C {devices/code_shown.sym} 610 -1110 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
