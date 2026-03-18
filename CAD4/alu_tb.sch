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
x2=25n
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
color="4 5 6 8 9 10 11 12"
node="A[15..0];a15,a14,a13,a12,a11,a10,a9,a8,a7,a6,a5,a4,a3,a2,a1,a0
B[15..0];b15,b14,b13,b12,b11,b10,b9,b8,b7,b6,b5,b4,b3,b2,b1,b0
CIN
SEL[1..0];sel1,sel0
Y[15..0];y15,y14,y13,y12,y11,y10,y9,y8,y7,y6,y5,y4,y3,y2,y1,y0
F
Z
N"
rawfile=$netlist_dir/alu_tb.raw}
C {engn1600-team1/CAD4/alu.sym} 0 0 0 0 {name=x1}
C {lab_pin.sym} 150 -50 0 1 {name=p1 lab=VDD}
C {lab_pin.sym} 150 -30 0 1 {name=p2 lab=VSS}
C {lab_pin.sym} -150 -50 0 0 {name=p3 lab=A[15..0]}
C {lab_pin.sym} -150 -30 0 0 {name=p4 lab=B[15..0]}
C {lab_pin.sym} -150 -10 0 0 {name=p5 lab=CIN}
C {lab_pin.sym} -150 10 0 0 {name=p6 lab=SEL[1..0]}
C {lab_pin.sym} 150 -10 0 1 {name=p7 lab=Y[15..0]}
C {lab_pin.sym} 150 10 0 1 {name=p8 lab=F}
C {lab_pin.sym} 150 30 0 1 {name=p9 lab=Z}
C {lab_pin.sym} 150 50 0 1 {name=p10 lab=N}
C {devices/vsource.sym} -1170 750 1 0 {name=VCIN value=0}
C {devices/lab_pin.sym} -1140 750 2 0 {name=pCIN lab=CIN}
C {devices/gnd.sym} -1200 750 1 0 {name=gCIN}
C {devices/vsource.sym} -1170 550 1 0 {name=VSEL1 value=0}
C {devices/lab_pin.sym} -1140 550 2 0 {name=pSEL1 lab=SEL1}
C {devices/gnd.sym} -1200 550 1 0 {name=gSEL1}
C {devices/vsource.sym} -1170 450 1 0 {name=VVDD value=3.3}
C {devices/lab_pin.sym} -1140 450 2 0 {name=pVDD lab=VDD}
C {devices/gnd.sym} -1200 450 1 0 {name=gVDD}
C {devices/vsource.sym} -1170 350 1 0 {name=VVSS value=0}
C {devices/lab_pin.sym} -1140 350 2 0 {name=pVSS lab=VSS}
C {devices/gnd.sym} -1200 350 1 0 {name=gVSS}
C {devices/vsource.sym} -1020 750 1 0 {name=VA15 value=0}
C {devices/lab_pin.sym} -990 750 2 0 {name=pA15 lab=A15}
C {devices/gnd.sym} -1050 750 1 0 {name=gA15}
C {devices/vsource.sym} -1020 650 1 0 {name=VA14 value=0}
C {devices/lab_pin.sym} -990 650 2 0 {name=pA14 lab=A14}
C {devices/gnd.sym} -1050 650 1 0 {name=gA14}
C {devices/vsource.sym} -1020 550 1 0 {name=VA13 value=0}
C {devices/lab_pin.sym} -990 550 2 0 {name=pA13 lab=A13}
C {devices/gnd.sym} -1050 550 1 0 {name=gA13}
C {devices/vsource.sym} -1020 450 1 0 {name=VA12 value=0}
C {devices/lab_pin.sym} -990 450 2 0 {name=pA12 lab=A12}
C {devices/gnd.sym} -1050 450 1 0 {name=gA12}
C {devices/vsource.sym} -1020 350 1 0 {name=VA11 value=0}
C {devices/lab_pin.sym} -990 350 2 0 {name=pA11 lab=A11}
C {devices/gnd.sym} -1050 350 1 0 {name=gA11}
C {devices/vsource.sym} -1020 250 1 0 {name=VA10 value=0}
C {devices/lab_pin.sym} -990 250 2 0 {name=pA10 lab=A10}
C {devices/gnd.sym} -1050 250 1 0 {name=gA10}
C {devices/vsource.sym} -1020 150 1 0 {name=VA9 value=0}
C {devices/lab_pin.sym} -990 150 2 0 {name=pA9 lab=A9}
C {devices/gnd.sym} -1050 150 1 0 {name=gA9}
C {devices/vsource.sym} -1020 50 1 0 {name=VA8 value=0}
C {devices/lab_pin.sym} -990 50 2 0 {name=pA8 lab=A8}
C {devices/gnd.sym} -1050 50 1 0 {name=gA8}
C {devices/vsource.sym} -1020 -50 1 0 {name=VA7 value=0}
C {devices/lab_pin.sym} -990 -50 2 0 {name=pA7 lab=A7}
C {devices/gnd.sym} -1050 -50 1 0 {name=gA7}
C {devices/vsource.sym} -1020 -150 1 0 {name=VA6 value=0}
C {devices/lab_pin.sym} -990 -150 2 0 {name=pA6 lab=A6}
C {devices/gnd.sym} -1050 -150 1 0 {name=gA6}
C {devices/vsource.sym} -1020 -250 1 0 {name=VA5 value=0}
C {devices/lab_pin.sym} -990 -250 2 0 {name=pA5 lab=A5}
C {devices/gnd.sym} -1050 -250 1 0 {name=gA5}
C {devices/vsource.sym} -1020 -350 1 0 {name=VA4 value=0}
C {devices/lab_pin.sym} -990 -350 2 0 {name=pA4 lab=A4}
C {devices/gnd.sym} -1050 -350 1 0 {name=gA4}
C {devices/vsource.sym} -1020 -450 1 0 {name=VA3 value=0}
C {devices/lab_pin.sym} -990 -450 2 0 {name=pA3 lab=A3}
C {devices/gnd.sym} -1050 -450 1 0 {name=gA3}
C {devices/vsource.sym} -1020 -550 1 0 {name=VA2 value=0}
C {devices/lab_pin.sym} -990 -550 2 0 {name=pA2 lab=A2}
C {devices/gnd.sym} -1050 -550 1 0 {name=gA2}
C {devices/vsource.sym} -1020 -650 1 0 {name=VA1 value=0}
C {devices/lab_pin.sym} -990 -650 2 0 {name=pA1 lab=A1}
C {devices/gnd.sym} -1050 -650 1 0 {name=gA1}
C {devices/vsource.sym} -1020 -750 1 0 {name=VA0 value=0}
C {devices/lab_pin.sym} -990 -750 2 0 {name=pA0 lab=A0}
C {devices/gnd.sym} -1050 -750 1 0 {name=gA0}
C {devices/vsource.sym} -870 750 1 0 {name=VB15 value=0}
C {devices/lab_pin.sym} -840 750 2 0 {name=pB15 lab=B15}
C {devices/gnd.sym} -900 750 1 0 {name=gB15}
C {devices/vsource.sym} -870 650 1 0 {name=VB14 value=0}
C {devices/lab_pin.sym} -840 650 2 0 {name=pB14 lab=B14}
C {devices/gnd.sym} -900 650 1 0 {name=gB14}
C {devices/vsource.sym} -870 550 1 0 {name=VB13 value=0}
C {devices/lab_pin.sym} -840 550 2 0 {name=pB13 lab=B13}
C {devices/gnd.sym} -900 550 1 0 {name=gB13}
C {devices/vsource.sym} -870 450 1 0 {name=VB12 value=0}
C {devices/lab_pin.sym} -840 450 2 0 {name=pB12 lab=B12}
C {devices/gnd.sym} -900 450 1 0 {name=gB12}
C {devices/vsource.sym} -870 350 1 0 {name=VB11 value=0}
C {devices/lab_pin.sym} -840 350 2 0 {name=pB11 lab=B11}
C {devices/gnd.sym} -900 350 1 0 {name=gB11}
C {devices/vsource.sym} -870 250 1 0 {name=VB10 value=0}
C {devices/lab_pin.sym} -840 250 2 0 {name=pB10 lab=B10}
C {devices/gnd.sym} -900 250 1 0 {name=gB10}
C {devices/vsource.sym} -870 150 1 0 {name=VB9 value=0}
C {devices/lab_pin.sym} -840 150 2 0 {name=pB9 lab=B9}
C {devices/gnd.sym} -900 150 1 0 {name=gB9}
C {devices/vsource.sym} -870 50 1 0 {name=VB8 value=0}
C {devices/lab_pin.sym} -840 50 2 0 {name=pB8 lab=B8}
C {devices/gnd.sym} -900 50 1 0 {name=gB8}
C {devices/vsource.sym} -870 -50 1 0 {name=VB7 value=0}
C {devices/lab_pin.sym} -840 -50 2 0 {name=pB7 lab=B7}
C {devices/gnd.sym} -900 -50 1 0 {name=gB7}
C {devices/vsource.sym} -870 -150 1 0 {name=VB6 value=0}
C {devices/lab_pin.sym} -840 -150 2 0 {name=pB6 lab=B6}
C {devices/gnd.sym} -900 -150 1 0 {name=gB6}
C {devices/vsource.sym} -870 -250 1 0 {name=VB5 value=0}
C {devices/lab_pin.sym} -840 -250 2 0 {name=pB5 lab=B5}
C {devices/gnd.sym} -900 -250 1 0 {name=gB5}
C {devices/vsource.sym} -870 -350 1 0 {name=VB4 value=0}
C {devices/lab_pin.sym} -840 -350 2 0 {name=pB4 lab=B4}
C {devices/gnd.sym} -900 -350 1 0 {name=gB4}
C {devices/vsource.sym} -870 -450 1 0 {name=VB3 value=0}
C {devices/lab_pin.sym} -840 -450 2 0 {name=pB3 lab=B3}
C {devices/gnd.sym} -900 -450 1 0 {name=gB3}
C {devices/vsource.sym} -870 -550 1 0 {name=VB2 value=0}
C {devices/lab_pin.sym} -840 -550 2 0 {name=pB2 lab=B2}
C {devices/gnd.sym} -900 -550 1 0 {name=gB2}
C {devices/vsource.sym} -870 -650 1 0 {name=VB1 value=0}
C {devices/lab_pin.sym} -840 -650 2 0 {name=pB1 lab=B1}
C {devices/gnd.sym} -900 -650 1 0 {name=gB1}
C {devices/vsource.sym} -870 -750 1 0 {name=VB0 value=0}
C {devices/lab_pin.sym} -840 -750 2 0 {name=pB0 lab=B0}
C {devices/gnd.sym} -900 -750 1 0 {name=gB0}
C {devices/vsource.sym} -1170 650 1 0 {name=VSEL0 value=0}
C {devices/lab_pin.sym} -1140 650 2 0 {name=pSEL0 lab=SEL0}
C {devices/gnd.sym} -1200 650 1 0 {name=gSEL0}
C {code_shown.sym} 610 -950 0 0 {name=s1 only_toplevel=false value="
** TEST SUMMARY
** 00: 0xFFFF + 0x0001
** 01: 0x1234 & 0x00FF
** 02: 0xAAAA | 0x5555
** 03: 0xF0F0 ^ 0x0F0F
** 04: 0x0000 - 0x0001

.control
save all

** Define input signals

** A BUS
alter @VA15[PWL] = [ 0n 3.3 5n 3.3 5n 0.0 10n 0.0 10n 3.3 15n 3.3 15n 3.3 20n 3.3 20n 0.0 25n 0.0 ]
alter @VA14[PWL] = [ 0n 3.3 5n 3.3 5n 0.0 10n 0.0 10n 0.0 15n 0.0 15n 3.3 20n 3.3 20n 0.0 25n 0.0 ]
alter @VA13[PWL] = [ 0n 3.3 5n 3.3 5n 0.0 10n 0.0 10n 3.3 15n 3.3 15n 3.3 20n 3.3 20n 0.0 25n 0.0 ]
alter @VA12[PWL] = [ 0n 3.3 5n 3.3 5n 3.3 10n 3.3 10n 0.0 15n 0.0 15n 3.3 20n 3.3 20n 0.0 25n 0.0 ]
alter @VA11[PWL] = [ 0n 3.3 5n 3.3 5n 0.0 10n 0.0 10n 3.3 15n 3.3 15n 0.0 20n 0.0 20n 0.0 25n 0.0 ]
alter @VA10[PWL] = [ 0n 3.3 5n 3.3 5n 0.0 10n 0.0 10n 0.0 15n 0.0 15n 0.0 20n 0.0 20n 0.0 25n 0.0 ]
alter @VA9[PWL] = [ 0n 3.3 5n 3.3 5n 3.3 10n 3.3 10n 3.3 15n 3.3 15n 0.0 20n 0.0 20n 0.0 25n 0.0 ]
alter @VA8[PWL] = [ 0n 3.3 5n 3.3 5n 0.0 10n 0.0 10n 0.0 15n 0.0 15n 0.0 20n 0.0 20n 0.0 25n 0.0 ]
alter @VA7[PWL] = [ 0n 3.3 5n 3.3 5n 0.0 10n 0.0 10n 3.3 15n 3.3 15n 3.3 20n 3.3 20n 0.0 25n 0.0 ]
alter @VA6[PWL] = [ 0n 3.3 5n 3.3 5n 0.0 10n 0.0 10n 0.0 15n 0.0 15n 3.3 20n 3.3 20n 0.0 25n 0.0 ]
alter @VA5[PWL] = [ 0n 3.3 5n 3.3 5n 3.3 10n 3.3 10n 3.3 15n 3.3 15n 3.3 20n 3.3 20n 0.0 25n 0.0 ]
alter @VA4[PWL] = [ 0n 3.3 5n 3.3 5n 3.3 10n 3.3 10n 0.0 15n 0.0 15n 3.3 20n 3.3 20n 0.0 25n 0.0 ]
alter @VA3[PWL] = [ 0n 3.3 5n 3.3 5n 0.0 10n 0.0 10n 3.3 15n 3.3 15n 0.0 20n 0.0 20n 0.0 25n 0.0 ]
alter @VA2[PWL] = [ 0n 3.3 5n 3.3 5n 3.3 10n 3.3 10n 0.0 15n 0.0 15n 0.0 20n 0.0 20n 0.0 25n 0.0 ]
alter @VA1[PWL] = [ 0n 3.3 5n 3.3 5n 0.0 10n 0.0 10n 3.3 15n 3.3 15n 0.0 20n 0.0 20n 0.0 25n 0.0 ]
alter @VA0[PWL] = [ 0n 3.3 5n 3.3 5n 0.0 10n 0.0 10n 0.0 15n 0.0 15n 0.0 20n 0.0 20n 0.0 25n 0.0 ]

** B BUS
alter @VB15[PWL] = [ 0n 0.0 5n 0.0 5n 0.0 10n 0.0 10n 0.0 15n 0.0 15n 0.0 20n 0.0 20n 0.0 25n 0.0 ]
alter @VB14[PWL] = [ 0n 0.0 5n 0.0 5n 0.0 10n 0.0 10n 3.3 15n 3.3 15n 0.0 20n 0.0 20n 0.0 25n 0.0 ]
alter @VB13[PWL] = [ 0n 0.0 5n 0.0 5n 0.0 10n 0.0 10n 0.0 15n 0.0 15n 0.0 20n 0.0 20n 0.0 25n 0.0 ]
alter @VB12[PWL] = [ 0n 0.0 5n 0.0 5n 0.0 10n 0.0 10n 3.3 15n 3.3 15n 0.0 20n 0.0 20n 0.0 25n 0.0 ]
alter @VB11[PWL] = [ 0n 0.0 5n 0.0 5n 0.0 10n 0.0 10n 0.0 15n 0.0 15n 3.3 20n 3.3 20n 0.0 25n 0.0 ]
alter @VB10[PWL] = [ 0n 0.0 5n 0.0 5n 0.0 10n 0.0 10n 3.3 15n 3.3 15n 3.3 20n 3.3 20n 0.0 25n 0.0 ]
alter @VB9[PWL] = [ 0n 0.0 5n 0.0 5n 0.0 10n 0.0 10n 0.0 15n 0.0 15n 3.3 20n 3.3 20n 0.0 25n 0.0 ]
alter @VB8[PWL] = [ 0n 0.0 5n 0.0 5n 0.0 10n 0.0 10n 3.3 15n 3.3 15n 3.3 20n 3.3 20n 0.0 25n 0.0 ]
alter @VB7[PWL] = [ 0n 0.0 5n 0.0 5n 3.3 10n 3.3 10n 0.0 15n 0.0 15n 0.0 20n 0.0 20n 0.0 25n 0.0 ]
alter @VB6[PWL] = [ 0n 0.0 5n 0.0 5n 3.3 10n 3.3 10n 3.3 15n 3.3 15n 0.0 20n 0.0 20n 0.0 25n 0.0 ]
alter @VB5[PWL] = [ 0n 0.0 5n 0.0 5n 3.3 10n 3.3 10n 0.0 15n 0.0 15n 0.0 20n 0.0 20n 0.0 25n 0.0 ]
alter @VB4[PWL] = [ 0n 0.0 5n 0.0 5n 3.3 10n 3.3 10n 3.3 15n 3.3 15n 0.0 20n 0.0 20n 0.0 25n 0.0 ]
alter @VB3[PWL] = [ 0n 0.0 5n 0.0 5n 3.3 10n 3.3 10n 0.0 15n 0.0 15n 3.3 20n 3.3 20n 0.0 25n 0.0 ]
alter @VB2[PWL] = [ 0n 0.0 5n 0.0 5n 3.3 10n 3.3 10n 3.3 15n 3.3 15n 3.3 20n 3.3 20n 0.0 25n 0.0 ]
alter @VB1[PWL] = [ 0n 0.0 5n 0.0 5n 3.3 10n 3.3 10n 0.0 15n 0.0 15n 3.3 20n 3.3 20n 0.0 25n 0.0 ]
alter @VB0[PWL] = [ 0n 3.3 5n 3.3 5n 3.3 10n 3.3 10n 3.3 15n 3.3 15n 3.3 20n 3.3 20n 3.3 25n 3.3 ]

** CONTROL
alter @VSEL1[PWL] = [ 0n 0.0 5n 0.0 5n 0.0 10n 0.0 10n 3.3 15n 3.3 15n 3.3 20n 3.3 20n 0.0 25n 0.0 ]
alter @VSEL0[PWL] = [ 0n 0.0 5n 0.0 5n 3.3 10n 3.3 10n 0.0 15n 0.0 15n 3.3 20n 3.3 20n 0.0 25n 0.0 ]
alter @VCIN[PWL]  = [ 0n 0.0 5n 0.0 5n 0.0 10n 0.0 10n 0.0 15n 0.0 15n 0.0 20n 0.0 20n 3.3 25n 3.3 ]

tran 0.005n 25n

write alu_tb.raw

.endc
"}
C {devices/code_shown.sym} 610 -1110 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
