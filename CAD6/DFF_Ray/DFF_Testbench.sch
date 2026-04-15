v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -420 30 -420 60 {lab=GND}
N -380 30 -380 60 {lab=GND}
N -420 -70 -420 -30 {lab=VDD}
N -380 -70 -380 -30 {lab=VSS}
N -340 -70 -340 -30 {lab=CLK}
N -300 -70 -300 -30 {lab=D}
N -260 -70 -260 -30 {lab=RSTn}
N -340 30 -340 60 {lab=GND}
N -300 30 -300 60 {lab=GND}
N -260 30 -260 60 {lab=GND}
N -150 0 -100 0 {lab=D}
N -150 -20 -100 -20 {lab=RSTn}
N 200 -0 300 -0 {lab=Q}
N 350 80 350 130 {lab=Qb}
N 300 -0 420 -0 {lab=Q}
N 420 -0 420 110 {lab=Q}
N 420 110 420 130 {lab=Q}
N 420 190 420 210 {lab=GND}
N 350 190 350 210 {lab=GND}
N 200 40 270 40 {lab=CLK}
N 200 20 270 20 {lab=VSS}
N 200 -20 270 -20 {lab=VDD}
N 350 60 350 80 {lab=Qb}
N 200 60 350 60 {lab=Qb}
C {vsource.sym} -420 0 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} -380 0 0 0 {name=V2 value=0 savecurrent=false}
C {vsource.sym} -340 0 0 0 {name=V3 value=3 savecurrent=false}
C {vsource.sym} -300 0 0 0 {name=V4 value=3 savecurrent=false}
C {vsource.sym} -260 0 0 0 {name=V5 value=3.3 savecurrent=false}
C {gnd.sym} -380 60 0 0 {name=l1 lab=GND}
C {gnd.sym} -420 60 0 0 {name=l2 lab=GND}
C {gnd.sym} -340 60 0 0 {name=l3 lab=GND}
C {gnd.sym} -300 60 0 0 {name=l4 lab=GND}
C {gnd.sym} -260 60 0 0 {name=l5 lab=GND}
C {lab_wire.sym} -420 -70 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -380 -70 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -340 -70 0 0 {name=p3 sig_type=std_logic lab=CLK}
C {lab_wire.sym} -300 -70 0 0 {name=p4 sig_type=std_logic lab=D}
C {lab_wire.sym} -260 -70 0 0 {name=p5 sig_type=std_logic lab=RSTn}
C {devices/code_shown.sym} -560 -280 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 522.5 -564.375 0 0 {name=s1 only_toplevel=false value="
.control
save all 

** Define input signals
let fclock = 10e6
let clockper = 1/fclock
let inputper = clockper*3
let resetper = clockper*8
let resettfr = 0.01*resetper
let reseton = 0.5*resetper - 2*resettfr
let clocktfr = 0.01*clockper
let clockton = 0.5*clockper - 2*clocktfr
let inputtfr = 0.01*inputper
let inputton = 0.5*inputper - 2*inputtfr

** Define transient params
let tstop = 10*clockper
let tstep = 0.001*clockper

** Set source
alter @v3[DC] = 0.0
alter @v3[PULSE] = [ 0 3.3 0n $&clocktfr $&clocktfr $&clockton $&clockper 0 ]
alter @v4[PULSE] = [ 0 3.3 0 $&inputtfr $&inputtfr $&inputton $&inputper 0]
alter @v5[PULSE] = [ 3.3 0 0 $&resettfr $&resettfr $&reseton $&resetper 0]

** Simulations
op
dc v3 0 3.3 0.01
tran $&tstep $&tstop

** Save waveform 
write INV_Testbench.raw
.endc
"}
C {lab_wire.sym} -150 -20 0 0 {name=p6 sig_type=std_logic lab=RSTn}
C {lab_wire.sym} -150 0 0 0 {name=p7 sig_type=std_logic lab=D}
C {capa.sym} 350 160 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 420 160 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 350 210 0 0 {name=l6 lab=GND}
C {gnd.sym} 420 210 0 0 {name=l7 lab=GND}
C {lab_wire.sym} 270 40 0 0 {name=p9 sig_type=std_logic lab=CLK}
C {lab_wire.sym} 270 20 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 270 -20 0 0 {name=p14 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 350 0 0 0 {name=p15 sig_type=std_logic lab=Q}
C {lab_wire.sym} 340 60 0 0 {name=p16 sig_type=std_logic lab=Qb}
C {CAD2/DFF.sym} 50 20 0 0 {name=x1}
