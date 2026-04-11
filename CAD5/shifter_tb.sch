v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 -1000 -1000 1000 -600 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0n
x2=80n
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
color="4 5 6 8 9"
node="D[15..0];d15,d14,d13,d12,d11,d10,d9,d8,d7,d6,d5,d4,d3,d2,d1,d0
R[3..0];r3,r2,r1,r0
I[3..0];i3,i2,i1,i0
SEL
X[15..0]b;x1.x15b,x1.x14b,x1.x13b,x1.x12b,x1.x11b,x1.x10b,x1.x9b,x1.x8b,x1.x7b,x1.x6b,x1.x5b,x1.x4b,x1.x3b,x1.x2b,x1.x1b,x1.x0b
Y[15..0]b;x1.y15b,x1.y14b,x1.y13b,x1.y12b,x1.y11b,x1.y10b,x1.y9b,x1.y8b,x1.y7b,x1.y6b,x1.y5b,x1.y4b,x1.y3b,x1.y2b,x1.y1b,x1.y0b
Z[15..0]b;x1.z15b,x1.z14b,x1.z13b,x1.z12b,x1.z11b,x1.z10b,x1.z9b,x1.z8b,x1.z7b,x1.z6b,x1.z5b,x1.z4b,x1.z3b,x1.z2b,x1.z1b,x1.z0b
Q[15..0];q15,q14,q13,q12,q11,q10,q9,q8,q7,q6,q5,q4,q3,q2,q1,q0
"
rawfile=$netlist_dir/shifter_tb.raw}
B 2 -1000 -600 1000 -200 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=80n
x2=160n
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
color="4 5 6 8 9"
node="D[15..0];d15,d14,d13,d12,d11,d10,d9,d8,d7,d6,d5,d4,d3,d2,d1,d0
R[3..0];r3,r2,r1,r0
I[3..0];i3,i2,i1,i0
SEL
X[15..0]b;x1.x15b,x1.x14b,x1.x13b,x1.x12b,x1.x11b,x1.x10b,x1.x9b,x1.x8b,x1.x7b,x1.x6b,x1.x5b,x1.x4b,x1.x3b,x1.x2b,x1.x1b,x1.x0b
Y[15..0]b;x1.y15b,x1.y14b,x1.y13b,x1.y12b,x1.y11b,x1.y10b,x1.y9b,x1.y8b,x1.y7b,x1.y6b,x1.y5b,x1.y4b,x1.y3b,x1.y2b,x1.y1b,x1.y0b
Z[15..0]b;x1.z15b,x1.z14b,x1.z13b,x1.z12b,x1.z11b,x1.z10b,x1.z9b,x1.z8b,x1.z7b,x1.z6b,x1.z5b,x1.z4b,x1.z3b,x1.z2b,x1.z1b,x1.z0b
Q[15..0];q15,q14,q13,q12,q11,q10,q9,q8,q7,q6,q5,q4,q3,q2,q1,q0
"
rawfile=$netlist_dir/shifter_tb.raw}
C {engn1600-team1/CAD5/shifter.sym} 0 0 0 0 {name=x1}
C {devices/vsource.sym} -1440 450 1 0 {name=VVDD value=3.3}
C {devices/lab_pin.sym} -1410 450 2 0 {name=pVDD lab=VDD}
C {devices/gnd.sym} -1470 450 1 0 {name=gVDD}
C {devices/vsource.sym} -1440 350 1 0 {name=VVSS value=0}
C {devices/lab_pin.sym} -1410 350 2 0 {name=pVSS lab=VSS}
C {devices/gnd.sym} -1470 350 1 0 {name=gVSS}
C {devices/vsource.sym} -1290 750 1 0 {name=VD15 value=0}
C {devices/lab_pin.sym} -1260 750 2 0 {name=pD15 lab=D15}
C {devices/gnd.sym} -1320 750 1 0 {name=gD15}
C {devices/vsource.sym} -1290 650 1 0 {name=VD14 value=0}
C {devices/lab_pin.sym} -1260 650 2 0 {name=pD14 lab=D14}
C {devices/gnd.sym} -1320 650 1 0 {name=gD14}
C {devices/vsource.sym} -1290 550 1 0 {name=VD13 value=0}
C {devices/lab_pin.sym} -1260 550 2 0 {name=pD13 lab=D13}
C {devices/gnd.sym} -1320 550 1 0 {name=gD13}
C {devices/vsource.sym} -1290 450 1 0 {name=VD12 value=0}
C {devices/lab_pin.sym} -1260 450 2 0 {name=pD12 lab=D12}
C {devices/gnd.sym} -1320 450 1 0 {name=gD12}
C {devices/vsource.sym} -1290 350 1 0 {name=VD11 value=0}
C {devices/lab_pin.sym} -1260 350 2 0 {name=pD11 lab=D11}
C {devices/gnd.sym} -1320 350 1 0 {name=gD11}
C {devices/vsource.sym} -1290 250 1 0 {name=VD10 value=0}
C {devices/lab_pin.sym} -1260 250 2 0 {name=pD10 lab=D10}
C {devices/gnd.sym} -1320 250 1 0 {name=gD10}
C {devices/vsource.sym} -1290 150 1 0 {name=VD9 value=0}
C {devices/lab_pin.sym} -1260 150 2 0 {name=pD9 lab=D9}
C {devices/gnd.sym} -1320 150 1 0 {name=gD9}
C {devices/vsource.sym} -1290 50 1 0 {name=VD8 value=0}
C {devices/lab_pin.sym} -1260 50 2 0 {name=pD8 lab=D8}
C {devices/gnd.sym} -1320 50 1 0 {name=gD8}
C {devices/vsource.sym} -1290 -50 1 0 {name=VD7 value=0}
C {devices/lab_pin.sym} -1260 -50 2 0 {name=pD7 lab=D7}
C {devices/gnd.sym} -1320 -50 1 0 {name=gD7}
C {devices/vsource.sym} -1290 -150 1 0 {name=VD6 value=0}
C {devices/lab_pin.sym} -1260 -150 2 0 {name=pD6 lab=D6}
C {devices/gnd.sym} -1320 -150 1 0 {name=gD6}
C {devices/vsource.sym} -1290 -250 1 0 {name=VD5 value=0}
C {devices/lab_pin.sym} -1260 -250 2 0 {name=pD5 lab=D5}
C {devices/gnd.sym} -1320 -250 1 0 {name=gD5}
C {devices/vsource.sym} -1290 -350 1 0 {name=VD4 value=0}
C {devices/lab_pin.sym} -1260 -350 2 0 {name=pD4 lab=D4}
C {devices/gnd.sym} -1320 -350 1 0 {name=gD4}
C {devices/vsource.sym} -1290 -450 1 0 {name=VD3 value=0}
C {devices/lab_pin.sym} -1260 -450 2 0 {name=pD3 lab=D3}
C {devices/gnd.sym} -1320 -450 1 0 {name=gD3}
C {devices/vsource.sym} -1290 -550 1 0 {name=VD2 value=0}
C {devices/lab_pin.sym} -1260 -550 2 0 {name=pD2 lab=D2}
C {devices/gnd.sym} -1320 -550 1 0 {name=gD2}
C {devices/vsource.sym} -1290 -650 1 0 {name=VD1 value=0}
C {devices/lab_pin.sym} -1260 -650 2 0 {name=pD1 lab=D1}
C {devices/gnd.sym} -1320 -650 1 0 {name=gD1}
C {devices/vsource.sym} -1290 -750 1 0 {name=VD0 value=0}
C {devices/lab_pin.sym} -1260 -750 2 0 {name=pD0 lab=D0}
C {devices/gnd.sym} -1320 -750 1 0 {name=gD0}
C {devices/vsource.sym} -1140 -50 1 0 {name=VI3 value=0}
C {devices/lab_pin.sym} -1110 -50 2 0 {name=pI3 lab=I3}
C {devices/gnd.sym} -1170 -50 1 0 {name=gI3}
C {devices/vsource.sym} -1140 -150 1 0 {name=VI2 value=0}
C {devices/lab_pin.sym} -1110 -150 2 0 {name=pI2 lab=I2}
C {devices/gnd.sym} -1170 -150 1 0 {name=gI2}
C {devices/vsource.sym} -1140 -250 1 0 {name=VI1 value=0}
C {devices/lab_pin.sym} -1110 -250 2 0 {name=pI1 lab=I1}
C {devices/gnd.sym} -1170 -250 1 0 {name=gI1}
C {devices/vsource.sym} -1140 -350 1 0 {name=VI0 value=0}
C {devices/lab_pin.sym} -1110 -350 2 0 {name=pI0 lab=I0}
C {devices/gnd.sym} -1170 -350 1 0 {name=gI0}
C {devices/vsource.sym} -1140 -450 1 0 {name=VR3 value=0}
C {devices/lab_pin.sym} -1110 -450 2 0 {name=pR3 lab=R3}
C {devices/gnd.sym} -1170 -450 1 0 {name=gR3}
C {devices/vsource.sym} -1140 -550 1 0 {name=VR2 value=0}
C {devices/lab_pin.sym} -1110 -550 2 0 {name=pR2 lab=R2}
C {devices/gnd.sym} -1170 -550 1 0 {name=gR2}
C {devices/vsource.sym} -1140 -650 1 0 {name=VR1 value=0}
C {devices/lab_pin.sym} -1110 -650 2 0 {name=pR1 lab=R1}
C {devices/gnd.sym} -1170 -650 1 0 {name=gR1}
C {devices/vsource.sym} -1140 -750 1 0 {name=VR0 value=0}
C {devices/lab_pin.sym} -1110 -750 2 0 {name=pR0 lab=R0}
C {devices/gnd.sym} -1170 -750 1 0 {name=gR0}
C {devices/vsource.sym} -1440 650 1 0 {name=VSEL value=0}
C {devices/lab_pin.sym} -1410 650 2 0 {name=pSEL lab=SEL}
C {devices/gnd.sym} -1470 650 1 0 {name=gSEL0}
C {devices/code_shown.sym} 480 -30 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.include /foss/designs/engn1600-team1/CAD5/shifter_tb_gen.spice
"}
C {lab_pin.sym} 150 -30 0 1 {name=p1 lab=VDD}
C {lab_pin.sym} 150 -10 0 1 {name=p2 lab=VSS}
C {lab_pin.sym} -150 -30 0 0 {name=p3 lab=D[15..0]}
C {lab_pin.sym} -150 -10 0 0 {name=p4 lab=I[3..0]}
C {lab_pin.sym} -150 10 0 0 {name=p5 lab=R[3..0]}
C {lab_pin.sym} -150 30 0 0 {name=p6 lab=SEL}
C {lab_pin.sym} 150 10 0 1 {name=p7 lab=Q[15..0]}
