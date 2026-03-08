v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {vsource.sym} -220 -110 0 0 {name=VA value=0 savecurrent=false}
C {vsource.sym} -170 -110 0 0 {name=VB value=0 savecurrent=false}
C {gnd.sym} -220 -80 0 0 {name=l1 lab=GND}
C {gnd.sym} -170 -80 0 0 {name=l2 lab=GND}
C {vsource.sym} -220 0 0 0 {name=VSEL value=0 savecurrent=false}
C {vsource.sym} -170 0 0 0 {name=VSELb value=0 savecurrent=false}
C {gnd.sym} -220 30 0 0 {name=l3 lab=GND}
C {gnd.sym} -170 30 0 0 {name=l4 lab=GND}
C {vsource.sym} -220 110 0 0 {name=VDD value=3.3 savecurrent=false}
C {vsource.sym} -170 110 0 0 {name=VSS value=0 savecurrent=false}
C {gnd.sym} -220 140 0 0 {name=l5 lab=GND}
C {gnd.sym} -170 140 0 0 {name=l6 lab=GND}
C {code_shown.sym} 140 -220 0 0 {name=s1 only_toplevel=false value="

.control

** Define input signals
let f = 1e8
let T = 1/f
let PW = T/2

let DT = T * 2
let FT = T * 4

let tstop = 4 * T
let tstep = 0.001 * T

alter @VA[PULSE] = [ 0 3.3 $&PW 0 0 $&PW $&T 0 ]
alter @VB[PULSE] = [ 0 3.3 $&T 0 0 $&T $&DT 0 ]

alter @VSEL[PULSE] = [ 0 3.3 $&DT 0 0 $&DT $&FT 0 ]
alter @VSELb[PULSE] = [ 3.3 0 $&DT 0 0 $&DT $&FT 0 ]

tran $&tstep $&tstop

plot Y A+5 B+10 SEL+15
.endc
"}
C {devices/code_shown.sym} 150 290 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {engn1600-team1/CAD4/2x1_mux.sym} 10 0 0 0 {name=x1}
C {lab_pin.sym} -30 -10 0 0 {name=p1 lab=A}
C {lab_pin.sym} 0 70 3 0 {name=p2 lab=SEL}
C {lab_pin.sym} 20 60 3 0 {name=p3 lab=SELb}
C {lab_pin.sym} 50 0 0 1 {name=p4 lab=Y}
C {lab_pin.sym} 0 -70 1 0 {name=p5 lab=VDD}
C {lab_pin.sym} 20 -60 3 1 {name=p6 lab=VSS}
C {lab_pin.sym} -30 10 0 0 {name=p7 lab=B}
C {lab_pin.sym} -220 -140 0 0 {name=p8 lab=A}
C {lab_pin.sym} -170 -140 0 0 {name=p9 lab=B}
C {lab_pin.sym} -220 -30 0 0 {name=p10 lab=SEL}
C {lab_pin.sym} -170 -30 2 0 {name=p11 lab=SELb}
C {lab_pin.sym} -220 80 0 0 {name=p12 lab=VDD}
C {lab_pin.sym} -170 80 0 1 {name=p13 lab=VSS}
