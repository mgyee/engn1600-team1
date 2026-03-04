v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 530 -250 530 -230 {lab=VDD}
N 530 -170 530 -150 {lab=GND}
N 730 -200 810 -200 {lab=B}
N 730 -200 730 -160 {lab=B}
N 670 -220 670 -160 {lab=A}
N 670 -220 810 -220 {lab=A}
N 670 -100 670 -80 {lab=GND}
N 730 -100 730 -80 {lab=GND}
N 1020 -140 1020 -120 {lab=GND}
N 1020 -210 1020 -200 {lab=SUMb}
N 600 -250 600 -230 {lab=VSS}
N 600 -170 600 -150 {lab=GND}
N 980 -210 1020 -210 {lab=SUMb}
N 950 -190 970 -190 {lab=COUT}
N 970 -190 970 -180 {lab=COUT}
N 950 -210 980 -210 {lab=SUMb}
N 970 -120 970 -100 {lab=GND}
C {devices/code_shown.sym} 30 -140 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 30 -930 0 0 {name=NGSPICE only_toplevel=true
value="

.control
save all

** input signal
let fsig = 1k
let tper = 1/fsig
let tfr = 0.01*tper
let ton = 0.5*tper-2*tfr

let tper2 = 2*tper
let ton2 = 0.5*tper2-2*tfr

** transient params
let tstop = 2*tper
let tstep = 0.001*tper

** sources
alter @VB[DC] = 0.0
alter @VB[PULSE] = [ 0 3.3 0 $&tfr $&tfr $&ton $&tper 0 ]

alter @VA[DC] = 0.0
alter @VA[PULSE] = [ 0 3.3 0 $&tfr $&tfr $&ton2 $&tper2 0 ]


** simulation
op
dc VA 0 3.3 3.3 VB 0 3.3 3.3
tran $&tstep $&tstop

plot A B+4 SUMb+8 COUT+12

write full_adder__cin_0_tb.raw
.endc
"}
C {vsource.sym} 530 -200 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} 670 -130 0 0 {name=VA value=3.3 savecurrent=false}
C {vsource.sym} 730 -130 0 0 {name=VB value=3.3 savecurrent=false}
C {gnd.sym} 530 -150 0 0 {name=l3 lab=GND}
C {gnd.sym} 670 -80 0 0 {name=l4 lab=GND}
C {gnd.sym} 730 -80 0 0 {name=l5 lab=GND}
C {lab_wire.sym} 1010 -210 0 0 {name=p1 sig_type=std_logic lab=SUMb}
C {lab_wire.sym} 800 -200 0 0 {name=p3 sig_type=std_logic lab=B}
C {lab_wire.sym} 800 -220 0 0 {name=p4 sig_type=std_logic lab=A}
C {capa.sym} 1020 -170 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1020 -120 0 0 {name=l2 lab=GND}
C {vsource.sym} 600 -200 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} 600 -150 0 0 {name=l10 lab=GND}
C {lab_wire.sym} 530 -240 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 600 -240 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {capa.sym} 970 -150 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 970 -190 0 0 {name=p9 sig_type=std_logic lab=COUT}
C {gnd.sym} 970 -100 0 0 {name=l1 lab=GND}
C {engn1600-team1/CAD4/full_adder_cin_0.sym} 810 -130 0 0 {name=x1}
C {lab_wire.sym} 880 -260 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 880 -130 0 0 {name=p7 sig_type=std_logic lab=VSS}
