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
x2=150n
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
node="CLK;clk
RSTn;rstn
JMP;x1.pc_jmp
PC[15..0];x1.pc15,x1.pc14,x1.pc13,x1.pc12,x1.pc11,x1.pc10,x1.pc9,x1.pc8,x1.pc7,x1.pc6,x1.pc5,x1.pc4,x1.pc3,x1.pc2,x1.pc1,x1.pc0
IMEMQ[15..0];x1.imem_q15,x1.imem_q14,x1.imem_q13,x1.imem_q12,x1.imem_q11,x1.imem_q10,x1.imem_q9,x1.imem_q8,x1.imem_q7,x1.imem_q6,x1.imem_q5,x1.imem_q4,x1.imem_q3,x1.imem_q2,x1.imem_q1,x1.imem_q0
INSTR[15..0];x1.instr15,x1.instr14,x1.instr13,x1.instr12,x1.instr11,x1.instr10,x1.instr9,x1.instr8,x1.instr7,x1.instr6,x1.instr5,x1.instr4,x1.instr3,x1.instr2,x1.instr1,x1.instr0
WE;x1.mem_write
WA[15..0];x1.dmem_addr15,x1.dmem_addr14,x1.dmem_addr13,x1.dmem_addr12,x1.dmem_addr11,x1.dmem_addr10,x1.dmem_addr9,x1.dmem_addr8,x1.dmem_addr7,x1.dmem_addr6,x1.dmem_addr5,x1.dmem_addr4,x1.dmem_addr3,x1.dmem_addr2,x1.dmem_addr1,x1.dmem_addr0
WD[15..0];x1.rdst15,x1.rdst14,x1.rdst13,x1.rdst12,x1.rdst11,x1.rdst10,x1.rdst9,x1.rdst8,x1.rdst7,x1.rdst6,x1.rdst5,x1.rdst4,x1.rdst3,x1.rdst2,x1.rdst1,x1.rdst0
"
rawfile=/foss/designs/engn1600-team1/CAD7/tb_arith.raw}
B 2 -1000 -600 1000 -200 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=150n
x2=300n
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
node="CLK;clk
RSTn;rstn
JMP;x1.pc_jmp
PC[15..0];x1.pc15,x1.pc14,x1.pc13,x1.pc12,x1.pc11,x1.pc10,x1.pc9,x1.pc8,x1.pc7,x1.pc6,x1.pc5,x1.pc4,x1.pc3,x1.pc2,x1.pc1,x1.pc0
IMEMQ[15..0];x1.imem_q15,x1.imem_q14,x1.imem_q13,x1.imem_q12,x1.imem_q11,x1.imem_q10,x1.imem_q9,x1.imem_q8,x1.imem_q7,x1.imem_q6,x1.imem_q5,x1.imem_q4,x1.imem_q3,x1.imem_q2,x1.imem_q1,x1.imem_q0
INSTR[15..0];x1.instr15,x1.instr14,x1.instr13,x1.instr12,x1.instr11,x1.instr10,x1.instr9,x1.instr8,x1.instr7,x1.instr6,x1.instr5,x1.instr4,x1.instr3,x1.instr2,x1.instr1,x1.instr0
WE;x1.mem_write
WA[15..0];x1.dmem_addr15,x1.dmem_addr14,x1.dmem_addr13,x1.dmem_addr12,x1.dmem_addr11,x1.dmem_addr10,x1.dmem_addr9,x1.dmem_addr8,x1.dmem_addr7,x1.dmem_addr6,x1.dmem_addr5,x1.dmem_addr4,x1.dmem_addr3,x1.dmem_addr2,x1.dmem_addr1,x1.dmem_addr0
WD[15..0];x1.rdst15,x1.rdst14,x1.rdst13,x1.rdst12,x1.rdst11,x1.rdst10,x1.rdst9,x1.rdst8,x1.rdst7,x1.rdst6,x1.rdst5,x1.rdst4,x1.rdst3,x1.rdst2,x1.rdst1,x1.rdst0
"
rawfile=/foss/designs/engn1600-team1/CAD7/tb_arith.raw}
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
C {lab_pin.sym} 150 -30 0 1 {name=p5 lab=VDD}
C {lab_pin.sym} 150 -10 0 1 {name=p6 lab=VSS}
C {devices/vsource.sym} 1110 -850 1 0 {name=VCLK value=0}
C {devices/lab_pin.sym} 1140 -850 2 0 {name=pCLK lab=CLK}
C {devices/gnd.sym} 1080 -850 1 0 {name=gCLK}
C {devices/vsource.sym} 1110 -750 1 0 {name=VRSTn value=0}
C {devices/lab_pin.sym} 1140 -750 2 0 {name=pRSTn lab=RSTn}
C {devices/gnd.sym} 1080 -750 1 0 {name=gRSTn}
C {devices/vsource.sym} 1110 -650 1 0 {name=VSE value=0}
C {devices/lab_pin.sym} 1140 -650 2 0 {name=pSE lab=SE}
C {devices/gnd.sym} 1080 -650 1 0 {name=gSE}
C {devices/vsource.sym} 1110 -550 1 0 {name=VSI value=0}
C {devices/lab_pin.sym} 1140 -550 2 0 {name=pSI lab=SI}
C {devices/gnd.sym} 1080 -550 1 0 {name=gSI}
C {devices/vsource.sym} 1110 -450 1 0 {name=VVDD value=3.3}
C {devices/lab_pin.sym} 1140 -450 2 0 {name=pVDD lab=VDD}
C {devices/gnd.sym} 1080 -450 1 0 {name=gVDD}
C {devices/vsource.sym} 1110 -350 1 0 {name=VVSS value=0}
C {devices/lab_pin.sym} 1140 -350 2 0 {name=pVSS lab=VSS}
C {devices/gnd.sym} 1080 -350 1 0 {name=gVSS}
