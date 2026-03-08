v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {engn1600-team1/CAD4/2x4_decoder.sym} -10 0 0 0 {name=x1}
C {code_shown.sym} 230 -290 0 0 {name=s1 only_toplevel=false value="

.control

** Define input signals
let freq0 = 1e8
let freq1 = freq0/2

let per0 = 1/freq0
let per1 = 1/freq1

let ton0 = per0/2
let ton1 = per1/2

let tfr0 = 0.01*ton0
let tfr1 = 0.01*ton1

let tstep = 0.001*per0
let tstop = 10*per0

alter @V1[PULSE] = [ 0 3.3 $&ton0 $&tfr0 $&tfr0 $&ton0 $&per0 0 ]
alter @V2[PULSE] = [ 0 3.3 $&ton1 $&tfr1 $&tfr1 $&ton1 $&per1 0 ]

tran $&tstep $&tstop

plot S0 S1+4 SA+8 SB+12 SC+16 SD+20
.endc
"}
C {vsource.sym} -790 -70 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} -740 -70 0 0 {name=V2 value=3.3 savecurrent=false}
C {vsource.sym} -790 160 0 0 {name=V7 value=3.3 savecurrent=false}
C {vsource.sym} -740 160 0 0 {name=V8 value=0 savecurrent=false}
C {gnd.sym} -790 190 0 0 {name=l1 lab=GND}
C {gnd.sym} -740 190 0 0 {name=l2 lab=GND}
C {gnd.sym} -790 -40 0 0 {name=l7 lab=GND}
C {gnd.sym} -740 -40 0 0 {name=l8 lab=GND}
C {lab_wire.sym} -790 130 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -740 130 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -790 -100 0 0 {name=p8 sig_type=std_logic lab=S0}
C {lab_wire.sym} -740 -100 0 0 {name=p9 sig_type=std_logic lab=S1}
C {lab_wire.sym} 140 30 2 0 {name=p6 sig_type=std_logic lab=SC}
C {lab_wire.sym} 140 50 2 0 {name=p10 sig_type=std_logic lab=SD}
C {lab_wire.sym} 140 10 2 0 {name=p11 sig_type=std_logic lab=SB}
C {lab_wire.sym} 140 -10 2 0 {name=p12 sig_type=std_logic lab=SA}
C {lab_wire.sym} 140 -50 2 0 {name=p13 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 140 -30 2 0 {name=p14 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -160 -50 0 0 {name=p15 sig_type=std_logic lab=S0}
C {lab_wire.sym} -160 -30 0 0 {name=p16 sig_type=std_logic lab=S1}
C {devices/code_shown.sym} -410 -420 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
