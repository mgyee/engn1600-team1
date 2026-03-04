v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
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
C {vsource.sym} -750 -60 0 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} -700 -60 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} -750 -30 0 0 {name=l1 lab=GND}
C {gnd.sym} -700 -30 0 0 {name=l2 lab=GND}
C {vsource.sym} -750 50 0 0 {name=V3 value=3.3 savecurrent=false}
C {vsource.sym} -700 50 0 0 {name=V4 value=3.3 savecurrent=false}
C {gnd.sym} -750 80 0 0 {name=l3 lab=GND}
C {gnd.sym} -700 80 0 0 {name=l4 lab=GND}
C {vsource.sym} -650 50 0 0 {name=V5 value=0 savecurrent=false}
C {vsource.sym} -600 50 0 0 {name=V6 value=0 savecurrent=false}
C {gnd.sym} -650 80 0 0 {name=l5 lab=GND}
C {gnd.sym} -600 80 0 0 {name=l6 lab=GND}
C {vsource.sym} -750 170 0 0 {name=V7 value=3.3 savecurrent=false}
C {vsource.sym} -700 170 0 0 {name=V8 value=0 savecurrent=false}
C {gnd.sym} -750 200 0 0 {name=l7 lab=GND}
C {gnd.sym} -700 200 0 0 {name=l8 lab=GND}
C {vsource.sym} -650 -60 0 0 {name=V11 value=0 savecurrent=false}
C {vsource.sym} -600 -60 0 0 {name=V12 value=0 savecurrent=false}
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
C {code_shown.sym} 410 -390 0 0 {name=s1 only_toplevel=false value="

.control

** Define input signals
let f = 1e8
let T = 1/f
let PW = T/2
let QT = T/4

let tstop = 2 * T
let tstep = 0.001 * T

alter @V1[PULSE] = [ 0 3.3 $&PW 0 0 $&PW $&T 0 ]
tran $&tstep $&tstop

meas tran TPHL TRIG V(A) VAL=1.65 RISE=1 TARG V(OUT) VAL=1.65 FALL=1 TD=$&QT
meas tran TPLH TRIG V(A) VAL=1.65 FALL=1 TARG V(OUT) VAL=1.65 RISE=1 TD=$&QT

plot OUT A+4
.endc
"}
C {devices/code_shown.sym} -270 -290 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {engn1600-team1/CAD4/4:1_mux.sym} 0 0 0 0 {name=x1}
C {lab_wire.sym} 150 -10 2 0 {name=p3 sig_type=std_logic lab=M1}
C {lab_wire.sym} 150 10 2 0 {name=p15 sig_type=std_logic lab=M2}
