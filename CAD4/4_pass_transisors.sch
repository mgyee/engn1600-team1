v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 70 -10 70 440 {lab=Y}
N -40 360 10 360 {lab=D}
N -40 240 10 240 {lab=C}
N -40 90 10 90 {lab=B}
N -40 -10 10 -10 {lab=A}
N -410 0 -410 40 {lab=A}
N -400 150 -400 190 {lab=B}
N -400 300 -400 340 {lab=C}
N -390 460 -390 500 {lab=D}
N 40 -10 40 -0 {lab=GND}
N 40 0 200 0 {lab=GND}
N 200 -0 200 370 {lab=GND}
N 40 360 40 370 {lab=GND}
N 40 370 200 370 {lab=GND}
N 40 240 40 250 {lab=GND}
N 40 250 200 250 {lab=GND}
N 40 90 40 100 {lab=GND}
N 40 100 200 100 {lab=GND}
N 550 -40 550 0 {lab=S0}
N 620 -40 620 0 {lab=S1}
N 690 -40 690 0 {lab=S2}
N 750 -40 750 0 {lab=S3}
N 70 550 70 570 {lab=OUT}
N 550 120 550 160 {lab=VDD}
N 620 120 620 160 {lab=VSS}
C {symbols/nfet_03v3.sym} 40 -30 1 0 {name=M1
L=0.28u
W=0.36u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 40 70 1 0 {name=M2
L=0.28u
W=0.36u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 40 220 1 0 {name=M3
L=0.28u
W=0.36u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 40 340 1 0 {name=M4
L=0.28u
W=0.36u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {vsource.sym} -410 70 0 0 {name=V1 value=0 savecurrent=false}
C {gnd.sym} -410 100 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -410 10 0 0 {name=p6 sig_type=std_logic lab=A}
C {vsource.sym} -400 220 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} -400 250 0 0 {name=l2 lab=GND}
C {lab_wire.sym} -400 160 0 0 {name=p11 sig_type=std_logic lab=B}
C {vsource.sym} -400 370 0 0 {name=V3 value=0 savecurrent=false}
C {gnd.sym} -400 400 0 0 {name=l3 lab=GND}
C {lab_wire.sym} -400 310 0 0 {name=p12 sig_type=std_logic lab=C}
C {vsource.sym} -390 530 0 0 {name=V4 value=0 savecurrent=false}
C {gnd.sym} -390 560 0 0 {name=l4 lab=GND}
C {lab_wire.sym} -390 470 0 0 {name=p13 sig_type=std_logic lab=D}
C {gnd.sym} 200 370 0 0 {name=l5 lab=GND}
C {vsource.sym} 550 30 0 0 {name=V5 value=3.3 savecurrent=false}
C {gnd.sym} 550 60 0 0 {name=l6 lab=GND}
C {lab_wire.sym} 550 -30 0 0 {name=p14 sig_type=std_logic lab=S0}
C {vsource.sym} 620 30 0 0 {name=V6 value=0 savecurrent=false}
C {gnd.sym} 620 60 0 0 {name=l7 lab=GND}
C {lab_wire.sym} 620 -30 0 0 {name=p15 sig_type=std_logic lab=S1}
C {vsource.sym} 690 30 0 0 {name=V7 value=0 savecurrent=false}
C {gnd.sym} 690 60 0 0 {name=l8 lab=GND}
C {lab_wire.sym} 690 -30 0 0 {name=p16 sig_type=std_logic lab=S2}
C {vsource.sym} 750 30 0 0 {name=V8 value=0 savecurrent=false}
C {gnd.sym} 750 60 0 0 {name=l9 lab=GND}
C {lab_wire.sym} 750 -30 0 0 {name=p17 sig_type=std_logic lab=S3}
C {devices/code_shown.sym} -590 -280 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 450 -800 0 0 {name=s1 only_toplevel=false value="
.control

** Timing
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

plot OUT Y+5 A+10

.endc


"}
C {engn1600-team1/CAD4/INV.sym} 70 460 1 0 {name=x1}
C {lab_pin.sym} 110 480 3 0 {name=p18 lab=VDD}
C {lab_pin.sym} 30 480 3 0 {name=p19 lab=VSS}
C {lab_pin.sym} 70 570 3 0 {name=p5 lab=OUT}
C {lab_pin.sym} -40 -10 0 0 {name=p1 sig_type=std_logic lab=A}
C {lab_pin.sym} -40 90 0 0 {name=p2 sig_type=std_logic lab=B}
C {lab_pin.sym} -40 240 0 0 {name=p3 sig_type=std_logic lab=C}
C {lab_pin.sym} -40 360 0 0 {name=p4 sig_type=std_logic lab=D}
C {lab_pin.sym} 40 -50 2 0 {name=p7 sig_type=std_logic lab=S0}
C {lab_pin.sym} 40 50 2 0 {name=p8 sig_type=std_logic lab=S1}
C {lab_pin.sym} 40 200 2 0 {name=p9 sig_type=std_logic lab=S2}
C {lab_pin.sym} 40 320 2 0 {name=p10 sig_type=std_logic lab=S3}
C {lab_pin.sym} 70 420 2 0 {name=p20 lab=Y}
C {vsource.sym} 550 190 0 0 {name=V9 value=3.3 savecurrent=false}
C {gnd.sym} 550 220 0 0 {name=l10 lab=GND}
C {lab_wire.sym} 550 130 0 0 {name=p21 sig_type=std_logic lab=VDD}
C {vsource.sym} 620 190 0 0 {name=V10 value=0 savecurrent=false}
C {gnd.sym} 620 220 0 0 {name=l11 lab=GND}
C {lab_wire.sym} 620 130 0 0 {name=p22 sig_type=std_logic lab=VSS}
