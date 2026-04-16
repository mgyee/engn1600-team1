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
x2=50n
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
color="4 5 6 8 9 10 11"
node="CLK
RSTn
BR
DISP[7..0];disp7,disp6,disp5,disp4,disp3,disp2,disp1,disp0
JMP
DEST[15..0];dest15,dest14,dest13,dest12,dest11,dest10,dest9,dest8,dest7,dest6,dest5,dest4,dest3,dest2,dest1,dest0
PC[15..0];pc15,pc14,pc13,pc12,pc11,pc10,pc9,pc8,pc7,pc6,pc5,pc4,pc3,pc2,pc1,pc0
"
rawfile=$netlist_dir/pc_tb.raw}
B 2 -1000 -600 1000 -200 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=50n
x2=210n
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
color="4 5 6 8 9 10 11"
node="CLK
JMP
DEST[15..0];dest15,dest14,dest13,dest12,dest11,dest10,dest9,dest8,dest7,dest6,dest5,dest4,dest3,dest2,dest1,dest0
SI
SE
SO;pc15
PC[15..0];pc15,pc14,pc13,pc12,pc11,pc10,pc9,pc8,pc7,pc6,pc5,pc4,pc3,pc2,pc1,pc0
"
rawfile=$netlist_dir/pc_tb.raw}
B 2 1000 -1000 1300 -600 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=50n
x2=51n
divx=1
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
digital=1
autoload=1
color="4 5 6 8 9 10 11"
node="CLK
RSTn
BR
DISP[7..0];disp7,disp6,disp5,disp4,disp3,disp2,disp1,disp0
JMP
DEST[15..0];dest15,dest14,dest13,dest12,dest11,dest10,dest9,dest8,dest7,dest6,dest5,dest4,dest3,dest2,dest1,dest0
PC[15..0];pc15,pc14,pc13,pc12,pc11,pc10,pc9,pc8,pc7,pc6,pc5,pc4,pc3,pc2,pc1,pc0
"
rawfile=$netlist_dir/pc_tb.raw}
B 2 1000 -600 1300 -200 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=209n
x2=210n
divx=1
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
digital=1
autoload=1
color="4 5 6 8 9 10 11"
node="CLK
JMP
DEST[15..0];dest15,dest14,dest13,dest12,dest11,dest10,dest9,dest8,dest7,dest6,dest5,dest4,dest3,dest2,dest1,dest0
SI
SE
SO;pc15
PC[15..0];pc15,pc14,pc13,pc12,pc11,pc10,pc9,pc8,pc7,pc6,pc5,pc4,pc3,pc2,pc1,pc0
"
rawfile=$netlist_dir/pc_tb.raw}
C {engn1600-team1/CAD6/pc.sym} 0 0 0 0 {name=x1}
C {lab_pin.sym} 150 -70 0 1 {name=p1 lab=VDD}
C {lab_pin.sym} 150 -50 0 1 {name=p2 lab=VSS}
C {lab_pin.sym} -150 -70 0 0 {name=p3 lab=CLK}
C {lab_pin.sym} -150 -50 0 0 {name=p4 lab=RSTn}
C {lab_pin.sym} -150 -30 0 0 {name=p5 lab=BR}
C {lab_pin.sym} -150 -10 0 0 {name=p6 lab=DISP[7..0]}
C {lab_pin.sym} -150 10 0 0 {name=p7 lab=JMP}
C {lab_pin.sym} -150 30 0 0 {name=p8 lab=DEST[15..0]}
C {lab_pin.sym} -150 50 0 0 {name=p9 lab=SI}
C {lab_pin.sym} -150 70 0 0 {name=p10 lab=SE}
C {lab_pin.sym} 150 -30 0 1 {name=p12 lab=PC[15..0]}
C {devices/vsource.sym} -1290 750 1 0 {name=VDEST15 value=0}
C {devices/lab_pin.sym} -1260 750 2 0 {name=pDEST15 lab=DEST15}
C {devices/gnd.sym} -1320 750 1 0 {name=gDEST15}
C {devices/vsource.sym} -1290 650 1 0 {name=VDEST14 value=0}
C {devices/lab_pin.sym} -1260 650 2 0 {name=pDEST14 lab=DEST14}
C {devices/gnd.sym} -1320 650 1 0 {name=gDEST14}
C {devices/vsource.sym} -1290 550 1 0 {name=VDEST13 value=0}
C {devices/lab_pin.sym} -1260 550 2 0 {name=pDEST13 lab=DEST13}
C {devices/gnd.sym} -1320 550 1 0 {name=gDEST13}
C {devices/vsource.sym} -1290 450 1 0 {name=VDEST12 value=0}
C {devices/lab_pin.sym} -1260 450 2 0 {name=pDEST12 lab=DEST12}
C {devices/gnd.sym} -1320 450 1 0 {name=gDEST12}
C {devices/vsource.sym} -1290 350 1 0 {name=VDEST11 value=0}
C {devices/lab_pin.sym} -1260 350 2 0 {name=pDEST11 lab=DEST11}
C {devices/gnd.sym} -1320 350 1 0 {name=gDEST11}
C {devices/vsource.sym} -1290 250 1 0 {name=VDEST10 value=0}
C {devices/lab_pin.sym} -1260 250 2 0 {name=pDEST10 lab=DEST10}
C {devices/gnd.sym} -1320 250 1 0 {name=gDEST10}
C {devices/vsource.sym} -1290 150 1 0 {name=VDEST9 value=0}
C {devices/lab_pin.sym} -1260 150 2 0 {name=pDEST9 lab=DEST9}
C {devices/gnd.sym} -1320 150 1 0 {name=gDEST9}
C {devices/vsource.sym} -1290 50 1 0 {name=VDEST8 value=0}
C {devices/lab_pin.sym} -1260 50 2 0 {name=pDEST8 lab=DEST8}
C {devices/gnd.sym} -1320 50 1 0 {name=gDEST8}
C {devices/vsource.sym} -1290 -50 1 0 {name=VDEST7 value=0}
C {devices/lab_pin.sym} -1260 -50 2 0 {name=pDEST7 lab=DEST7}
C {devices/gnd.sym} -1320 -50 1 0 {name=gDEST7}
C {devices/vsource.sym} -1290 -150 1 0 {name=VDEST6 value=0}
C {devices/lab_pin.sym} -1260 -150 2 0 {name=pDEST6 lab=DEST6}
C {devices/gnd.sym} -1320 -150 1 0 {name=gDEST6}
C {devices/vsource.sym} -1290 -250 1 0 {name=VDEST5 value=0}
C {devices/lab_pin.sym} -1260 -250 2 0 {name=pDEST5 lab=DEST5}
C {devices/gnd.sym} -1320 -250 1 0 {name=gDEST5}
C {devices/vsource.sym} -1290 -350 1 0 {name=VDEST4 value=0}
C {devices/lab_pin.sym} -1260 -350 2 0 {name=pDEST4 lab=DEST4}
C {devices/gnd.sym} -1320 -350 1 0 {name=gDEST4}
C {devices/vsource.sym} -1290 -450 1 0 {name=VDEST3 value=0}
C {devices/lab_pin.sym} -1260 -450 2 0 {name=pDEST3 lab=DEST3}
C {devices/gnd.sym} -1320 -450 1 0 {name=gDEST3}
C {devices/vsource.sym} -1290 -550 1 0 {name=VDEST2 value=0}
C {devices/lab_pin.sym} -1260 -550 2 0 {name=pDEST2 lab=DEST2}
C {devices/gnd.sym} -1320 -550 1 0 {name=gDEST2}
C {devices/vsource.sym} -1290 -650 1 0 {name=VDEST1 value=0}
C {devices/lab_pin.sym} -1260 -650 2 0 {name=pDEST1 lab=DEST1}
C {devices/gnd.sym} -1320 -650 1 0 {name=gDEST1}
C {devices/vsource.sym} -1290 -750 1 0 {name=VDEST0 value=0}
C {devices/lab_pin.sym} -1260 -750 2 0 {name=pDEST0 lab=DEST0}
C {devices/gnd.sym} -1320 -750 1 0 {name=gDEST0}
C {devices/vsource.sym} -1140 -50 1 0 {name=VDISP7 value=0}
C {devices/lab_pin.sym} -1110 -50 2 0 {name=pDISP7 lab=DISP7}
C {devices/gnd.sym} -1170 -50 1 0 {name=gDISP7}
C {devices/vsource.sym} -1140 -150 1 0 {name=VDISP6 value=0}
C {devices/lab_pin.sym} -1110 -150 2 0 {name=pDISP6 lab=DISP6}
C {devices/gnd.sym} -1170 -150 1 0 {name=gDISP6}
C {devices/vsource.sym} -1140 -250 1 0 {name=VDISP5 value=0}
C {devices/lab_pin.sym} -1110 -250 2 0 {name=pDISP5 lab=DISP5}
C {devices/gnd.sym} -1170 -250 1 0 {name=gDISP5}
C {devices/vsource.sym} -1140 -350 1 0 {name=VDISP4 value=0}
C {devices/lab_pin.sym} -1110 -350 2 0 {name=pDISP4 lab=DISP4}
C {devices/gnd.sym} -1170 -350 1 0 {name=gDISP4}
C {devices/vsource.sym} -1140 -450 1 0 {name=VDISP3 value=0}
C {devices/lab_pin.sym} -1110 -450 2 0 {name=pDISP3 lab=DISP3}
C {devices/gnd.sym} -1170 -450 1 0 {name=gDISP3}
C {devices/vsource.sym} -1140 -550 1 0 {name=VDISP2 value=0}
C {devices/lab_pin.sym} -1110 -550 2 0 {name=pDISP2 lab=DISP2}
C {devices/gnd.sym} -1170 -550 1 0 {name=gDISP2}
C {devices/vsource.sym} -1140 -650 1 0 {name=VDISP1 value=0}
C {devices/lab_pin.sym} -1110 -650 2 0 {name=pDISP1 lab=DISP1}
C {devices/gnd.sym} -1170 -650 1 0 {name=gDISP1}
C {devices/vsource.sym} -1140 -750 1 0 {name=VDISP0 value=0}
C {devices/lab_pin.sym} -1110 -750 2 0 {name=pDISP0 lab=DISP0}
C {devices/gnd.sym} -1170 -750 1 0 {name=gDISP0}
C {devices/vsource.sym} -1440 150 1 0 {name=VVDD value=3.3}
C {devices/lab_pin.sym} -1410 150 2 0 {name=pVDD lab=VDD}
C {devices/gnd.sym} -1470 150 1 0 {name=gVDD}
C {devices/vsource.sym} -1440 50 1 0 {name=VVSS value=0}
C {devices/lab_pin.sym} -1410 50 2 0 {name=pVSS lab=VSS}
C {devices/gnd.sym} -1470 50 1 0 {name=gVSS}
C {devices/vsource.sym} -1440 250 1 0 {name=VCLK value=0}
C {devices/lab_pin.sym} -1410 250 2 0 {name=pCLK lab=CLK}
C {devices/gnd.sym} -1470 250 1 0 {name=gCLK}
C {devices/vsource.sym} -1440 350 1 0 {name=VRSTn value=3.3}
C {devices/lab_pin.sym} -1410 350 2 0 {name=pRSTn lab=RSTn}
C {devices/gnd.sym} -1470 350 1 0 {name=gRSTn}
C {devices/vsource.sym} -1440 450 1 0 {name=VBR value=0}
C {devices/lab_pin.sym} -1410 450 2 0 {name=pBR lab=BR}
C {devices/gnd.sym} -1470 450 1 0 {name=gBR}
C {devices/vsource.sym} -1440 550 1 0 {name=VJMP value=0}
C {devices/lab_pin.sym} -1410 550 2 0 {name=pJMP lab=JMP}
C {devices/gnd.sym} -1470 550 1 0 {name=gJMP}
C {devices/vsource.sym} -1440 650 1 0 {name=VSI value=0}
C {devices/lab_pin.sym} -1410 650 2 0 {name=pSI lab=SI}
C {devices/gnd.sym} -1470 650 1 0 {name=gSI}
C {devices/vsource.sym} -1440 750 1 0 {name=VSE value=0}
C {devices/lab_pin.sym} -1410 750 2 0 {name=pSE lab=SE}
C {devices/gnd.sym} -1470 750 1 0 {name=gSE}
C {devices/code_shown.sym} 480 -30 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.include /foss/designs/engn1600-team1/CAD6/pc_tb_gen.spice
"}
