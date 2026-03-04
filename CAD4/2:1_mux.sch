v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -170 -420 -90 -420 {lab=A}
N -170 -370 -90 -370 {lab=B}
N -460 -220 -380 -220 {lab=S0}
N -170 -20 -90 -20 {lab=OUT}
N 200 -480 200 -420 {lab=A}
N 260 -480 260 -420 {lab=#net1}
N 140 -450 200 -450 {lab=A}
N 260 -450 310 -450 {lab=#net1}
N 200 -290 200 -230 {lab=B}
N 260 -290 260 -230 {lab=#net1}
N 140 -260 200 -260 {lab=B}
N 260 -260 310 -260 {lab=#net1}
N -170 30 -90 30 {lab=VDD}
N -170 80 -90 80 {lab=VSS}
N 310 -450 310 -260 {lab=#net1}
N 310 -260 310 -170 {lab=#net1}
N 230 -380 230 -330 {lab=S0b}
C {ipin.sym} -170 -420 0 0 {name=p1 lab=A
}
C {ipin.sym} -170 -370 0 0 {name=p2 lab=B}
C {ipin.sym} -460 -220 0 0 {name=p3 lab=S0}
C {opin.sym} -170 -20 2 0 {name=p6 lab=OUT}
C {lab_wire.sym} -90 -20 0 0 {name=p7 sig_type=std_logic lab=OUT}
C {lab_wire.sym} -380 -220 0 0 {name=p8 sig_type=std_logic lab=S0}
C {lab_wire.sym} -90 -370 0 0 {name=p11 sig_type=std_logic lab=B}
C {lab_wire.sym} -90 -420 0 0 {name=p12 sig_type=std_logic lab=A}
C {symbols/nfet_03v3.sym} 230 -500 1 0 {name=M1
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
C {symbols/pfet_03v3.sym} 230 -400 3 0 {name=M2
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
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 230 -310 1 0 {name=M3
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
C {symbols/pfet_03v3.sym} 230 -210 3 0 {name=M4
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
model=pfet_03v3
spiceprefix=X
}
C {iopin.sym} -170 30 2 0 {name=p15 lab=VDD}
C {iopin.sym} -170 80 2 0 {name=p16 lab=VSS}
C {lab_wire.sym} -90 30 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -90 80 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 140 -450 0 0 {name=p19 sig_type=std_logic lab=A}
C {lab_wire.sym} 140 -260 0 0 {name=p21 sig_type=std_logic lab=B}
C {lab_wire.sym} 230 -420 0 0 {name=p41 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 230 -230 0 0 {name=p42 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 230 -480 0 0 {name=p50 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 230 -290 0 0 {name=p51 sig_type=std_logic lab=VSS}
C {engn1600-team1/CAD4/INV.sym} 330 -170 0 0 {name=x1}
C {lab_pin.sym} 350 -210 0 1 {name=p27 lab=VDD}
C {lab_pin.sym} 350 -130 0 1 {name=p29 lab=VSS}
C {engn1600-team1/CAD4/INV.sym} -360 -220 0 0 {name=x2}
C {lab_pin.sym} -340 -260 0 1 {name=p30 lab=VDD}
C {lab_pin.sym} -270 -220 0 1 {name=p31 lab=S0b}
C {lab_pin.sym} -340 -180 0 1 {name=p32 lab=VSS}
C {lab_pin.sym} 230 -380 0 1 {name=p48 lab=S0b}
C {lab_pin.sym} 230 -520 0 1 {name=p34 lab=S0
}
C {lab_wire.sym} 420 -170 2 0 {name=p28 sig_type=std_logic lab=OUT}
C {lab_pin.sym} 230 -190 0 1 {name=p20 lab=S0
}
