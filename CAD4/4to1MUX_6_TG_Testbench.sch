v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 150 -70 310 -70 {lab=OUT}
N 310 -70 310 -40 {lab=OUT}
C {lab_wire.sym} -150 -70 0 0 {name=p1 sig_type=std_logic lab=A}
C {lab_wire.sym} -150 -50 0 0 {name=p2 sig_type=std_logic lab=B}
C {lab_wire.sym} -150 -10 0 0 {name=p4 sig_type=std_logic lab=D}
C {lab_wire.sym} -150 10 0 0 {name=p5 sig_type=std_logic lab=S0}
C {lab_wire.sym} -150 30 0 0 {name=p6 sig_type=std_logic lab=S1}
C {lab_wire.sym} -150 50 0 0 {name=p7 sig_type=std_logic lab=S0_bar}
C {lab_wire.sym} -150 70 0 0 {name=p8 sig_type=std_logic lab=S1_bar}
C {lab_wire.sym} 150 -30 2 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 150 -50 2 0 {name=p10 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 150 -70 2 0 {name=p11 sig_type=std_logic lab=OUT}
C {vsource.sym} -750 -60 0 0 {name=V1 value=3 savecurrent=false}
C {vsource.sym} -700 -60 0 0 {name=V2 value=3 savecurrent=false}
C {gnd.sym} -750 -30 0 0 {name=l1 lab=GND}
C {gnd.sym} -700 -30 0 0 {name=l2 lab=GND}
C {vsource.sym} -750 50 0 0 {name=V3 value=3 savecurrent=false}
C {vsource.sym} -700 50 0 0 {name=V4 value=3 savecurrent=false}
C {gnd.sym} -750 80 0 0 {name=l3 lab=GND}
C {gnd.sym} -700 80 0 0 {name=l4 lab=GND}
C {vsource.sym} -650 50 0 0 {name=V5 value=3 savecurrent=false}
C {vsource.sym} -600 50 0 0 {name=V6 value=3 savecurrent=false}
C {gnd.sym} -650 80 0 0 {name=l5 lab=GND}
C {gnd.sym} -600 80 0 0 {name=l6 lab=GND}
C {vsource.sym} -750 170 0 0 {name=V7 value=3 savecurrent=false}
C {vsource.sym} -700 170 0 0 {name=V8 value=3 savecurrent=false}
C {gnd.sym} -750 200 0 0 {name=l7 lab=GND}
C {gnd.sym} -700 200 0 0 {name=l8 lab=GND}
C {vsource.sym} -650 -60 0 0 {name=V11 value=3 savecurrent=false}
C {vsource.sym} -600 -60 0 0 {name=V12 value=3 savecurrent=false}
C {gnd.sym} -650 -30 0 0 {name=l11 lab=GND}
C {gnd.sym} -600 -30 0 0 {name=l12 lab=GND}
C {lab_wire.sym} -750 -90 0 0 {name=p12 sig_type=std_logic lab=A}
C {lab_wire.sym} -700 -90 0 0 {name=p13 sig_type=std_logic lab=B}
C {lab_wire.sym} -650 -90 0 0 {name=p14 sig_type=std_logic lab=C}
C {lab_wire.sym} -150 -30 0 0 {name=p16 sig_type=std_logic lab=C}
C {lab_wire.sym} -600 -90 0 0 {name=p17 sig_type=std_logic lab=D}
C {lab_wire.sym} -750 20 0 0 {name=p18 sig_type=std_logic lab=S0}
C {lab_wire.sym} -700 20 0 0 {name=p19 sig_type=std_logic lab=S1}
C {lab_wire.sym} -650 20 0 0 {name=p20 sig_type=std_logic lab=S0_bar}
C {lab_wire.sym} -600 20 0 0 {name=p21 sig_type=std_logic lab=S1_bar}
C {lab_wire.sym} -750 140 0 0 {name=p22 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -700 140 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {capa.sym} 310 -10 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 310 20 0 0 {name=l9 lab=GND}
C {code_shown.sym} 410 -390 0 0 {name=s1 only_toplevel=false value="

.control 
save all

**Define input signals
let freqA = 1e6
let perA = 1/freqA
let Aon = 0.5*perA
let freqB = freqA*2
let perB = 1/freqB
let Bon = 0.5*perB
let freqC = freqA*4
let perC = 1/freqC
let Con = 0.5*perC
let freqD = freqA*8
let perD = 1/freqD
let Don = 0.5*perD
let freqS0 = freqA*4
let perS0 = 1/freqS0
let S0on = 0.5*perS0
let freqS1 = freqA*8
let perS1 = 1/freqS1
let S1on = 0.5*perS1

let tstop = 2.5*perA
let tstep = 0.001*perA

alter @V1[PULSE] = [ 0 3.3 0 1n 1n $&Aon $&perA 0 ]
alter @V2[PULSE] = [ 0 3.3 0 1n 1n $&Bon $&perB 0 ]
alter @V11[PULSE] = [ 0 3.3 0 1n 1n $&Con $&perC 0 ]
alter @V12[PULSE] = [ 0 3.3 0 1n 1n $&Don $&perD 0 ]
alter @V3[PULSE] = [ 0 3.3 0 1n 1n $&S0on $&perS0 0 ]
alter @V4[PULSE] = [ 0 3.3 0 1n 1n $&S1on $&perS1 0 ]
alter @V5[PULSE] = [ 0 3.3 $&S0on 1n 1n $&S0on $&perS0 0 ]
alter @V6[PULSE] = [ 0 3.3 $&S1on 1n 1n $&S1on $&perS1 0 ]
alter @V7[DC] = 3.3
alter @V8[DC] = 0

tran $&tstep $&tstop

meas tran AtoOUT TRIG v(A) VAL=1.65 RISE = 1 TD=0.98u TARG v(OUT) VAL = 1.65 FALL=1 TD = 0.98u
print AtOUT

plot A B+4 C+8 D+12 S0+16 S1+20 OUT+24
plot OUT
.endc
"}
C {devices/code_shown.sym} -270 -290 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {engn1600-team1/CAD4/4to1MUX_6TG.sym} 0 0 0 0 {name=x1}
C {lab_wire.sym} 150 -10 2 0 {name=p3 sig_type=std_logic lab=M1}
C {lab_wire.sym} 150 10 2 0 {name=p15 sig_type=std_logic lab=M2}
