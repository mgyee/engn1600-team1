v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -340 30 -340 70 {lab=GND}
N -340 -80 -340 -30 {lab=VDD}
N -280 30 -280 70 {lab=GND}
N -280 -80 -280 -30 {lab=VSS}
N -220 30 -220 70 {lab=GND}
N -220 -80 -220 -30 {lab=A}
N -160 30 -160 70 {lab=GND}
N -160 -80 -160 -30 {lab=B}
C {engn1600-team1/CAD4/logic_extended.sym} 0 0 0 0 {name=x1}
C {lab_pin.sym} -60 -10 0 0 {name=p5 lab=A}
C {lab_pin.sym} -60 10 0 0 {name=p6 lab=B}
C {vsource.sym} -340 0 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} -340 70 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -340 -80 2 0 {name=p71 sig_type=std_logic lab=VDD}
C {vsource.sym} -280 0 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} -280 70 0 0 {name=l2 lab=GND}
C {lab_wire.sym} -280 -80 2 0 {name=p72 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -160 -80 2 0 {name=lw_rA lab=B}
C {devices/lab_wire.sym} -220 -80 2 0 {name=lw_wE lab=A}
C {vsource.sym} -220 0 0 0 {name=VA value=0 savecurrent=false}
C {gnd.sym} -220 70 0 0 {name=l6 lab=GND}
C {vsource.sym} -160 0 0 0 {name=VB value=0 savecurrent=false}
C {gnd.sym} -160 70 0 0 {name=l7 lab=GND}
C {code_shown.sym} 0 190 0 0 {name=s1 only_toplevel=false value="
** LOGIC TEST

.control

** Define input signals
let f = 1e8
let T = 1/f
let PW = T/2

let DT = T * 2

let tstop = 2 * T
let tstep = 0.001 * T

** Pulse A
alter @VA[PULSE] = [ 0 3.3 $&PW 0 0 $&PW $&T 0 ]

** pulse B
alter @VB[PULSE] = [ 0 3.3 $&T 0 0 $&T $&DT 0 ]

tran $&tstep $&tstop

plot XOR OR_+5 AND_+10 XNOR+15 NOR+20 NAND+25 B+30 A+35

.endc
"}
C {devices/code_shown.sym} -460 190 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {lab_pin.sym} 60 10 0 1 {name=p1 lab=AND_}
C {lab_pin.sym} 60 50 0 1 {name=p2 lab=XOR}
C {lab_pin.sym} 60 30 0 1 {name=p3 lab=OR_}
C {lab_pin.sym} 60 -30 0 1 {name=p4 lab=NOR}
C {lab_pin.sym} 0 -110 0 1 {name=p7 lab=VDD}
C {lab_pin.sym} 0 110 0 1 {name=p8 lab=VSS}
C {lab_pin.sym} 60 -10 0 1 {name=p9 lab=XNOR}
C {lab_pin.sym} 60 -50 0 1 {name=p10 lab=NAND}
