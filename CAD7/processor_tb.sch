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
C {engn1600-team1/CAD7/processor.sym} 0 0 0 0 {name=x1}
C {devices/code_shown.sym} 480 -30 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.include /foss/designs/engn1600-team1/CAD7/tb_tmp.spice
"}
C {lab_pin.sym} -150 -30 0 0 {name=p1 lab=CLK}
C {lab_pin.sym} -150 -10 0 0 {name=p2 lab=RSTn}
C {lab_pin.sym} -150 10 0 0 {name=p3 lab=SE}
C {lab_pin.sym} -150 30 0 0 {name=p4 lab=SI}
C {devices/vsource.sym} 0 400 1 0 {name=VCLK value=0}
C {devices/lab_pin.sym} 30 400 2 0 {name=pCLK lab=CLK}
C {devices/gnd.sym} -30 400 1 0 {name=gCLK}
C {devices/vsource.sym} 0 500 1 0 {name=VRSTn value=0}
C {devices/lab_pin.sym} 30 500 2 0 {name=pRSTn lab=RSTn}
C {devices/gnd.sym} -30 500 1 0 {name=gRSTn}
C {devices/vsource.sym} 0 600 1 0 {name=VSE value=0}
C {devices/lab_pin.sym} 30 600 2 0 {name=pSE lab=SE}
C {devices/gnd.sym} -30 600 1 0 {name=gSE}
C {devices/vsource.sym} 0 700 1 0 {name=VSI value=0}
C {devices/lab_pin.sym} 30 700 2 0 {name=pSI lab=SI}
C {devices/gnd.sym} -30 700 1 0 {name=gSI}