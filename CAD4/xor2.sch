v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -110 -210 140 -210 {lab=VDD}
N 140 -210 140 -180 {lab=VDD}
N 70 -90 210 -90 {lab=#net1}
N 70 -30 210 -30 {lab=OUT}
N 70 -30 210 -30 {lab=OUT}
N 140 -120 140 -90 {lab=#net1}
N 140 -30 140 0 {lab=OUT}
N 140 0 210 0 {lab=OUT}
N 70 0 140 0 {lab=OUT}
N 210 0 210 30 {lab=OUT}
N 70 0 70 30 {lab=OUT}
N 210 150 210 170 {lab=VSS}
N 70 170 210 170 {lab=VSS}
N 70 90 70 170 {lab=VSS}
N 0 60 30 60 {lab=#net2}
N 0 -60 0 60 {lab=#net2}
N 0 -150 100 -150 {lab=#net2}
N -110 -90 -110 0 {lab=#net2}
N -110 0 0 0 {lab=#net2}
N -110 0 -110 60 {lab=#net2}
N -180 60 -40 60 {lab=#net2}
N -180 120 -40 120 {lab=VSS}
N -110 120 -110 170 {lab=VSS}
N -110 170 70 170 {lab=VSS}
N -0 -150 0 -60 {lab=#net2}
C {symbols/pfet_03v3.sym} -130 -180 0 0 {name=M1
L=0.28u
W=1.44u
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
C {symbols/pfet_03v3.sym} -130 -120 0 0 {name=M2
L=0.28u
W=1.44u
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
C {symbols/nfet_03v3.sym} -200 90 0 0 {name=M3
L=0.28u
W=0.72u
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
C {iopin.sym} -360 -30 2 0 {name=p1 lab=VSS}
C {iopin.sym} -360 -10 2 0 {name=p2 lab=VDD}
C {ipin.sym} -360 10 0 0 {name=p3 lab=IN0}
C {ipin.sym} -360 30 0 0 {name=p4 lab=IN1}
C {opin.sym} 210 0 0 0 {name=p5 lab=OUT}
C {symbols/nfet_03v3.sym} 50 60 0 0 {name=M5
L=0.28u
W=0.72u
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
C {symbols/nfet_03v3.sym} -60 90 0 0 {name=M6
L=0.28u
W=0.72u
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
C {symbols/pfet_03v3.sym} 190 -60 0 0 {name=M7
L=0.28u
W=1.44u
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
C {symbols/pfet_03v3.sym} 50 -60 0 0 {name=M8
L=0.28u
W=1.44u
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
C {lab_pin.sym} 170 -60 0 0 {name=p9 sig_type=std_logic lab=IN0}
C {lab_pin.sym} -150 -120 0 0 {name=p10 sig_type=std_logic lab=IN1}
C {lab_pin.sym} -150 -180 0 0 {name=p8 sig_type=std_logic lab=IN0}
C {lab_pin.sym} 30 -60 0 0 {name=p6 sig_type=std_logic lab=IN1}
C {lab_pin.sym} 210 -60 2 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 70 -60 2 0 {name=p11 sig_type=std_logic lab=VDD}
C {symbols/pfet_03v3.sym} 120 -150 0 0 {name=M9
L=0.28u
W=1.44u
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
C {symbols/nfet_03v3.sym} 190 60 0 0 {name=M10
L=0.28u
W=0.72u
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
C {symbols/nfet_03v3.sym} 190 120 0 0 {name=M11
L=0.28u
W=0.72u
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
C {lab_pin.sym} -220 90 0 0 {name=p12 sig_type=std_logic lab=IN0}
C {lab_pin.sym} -80 90 0 0 {name=p13 sig_type=std_logic lab=IN1}
C {lab_pin.sym} 170 60 0 0 {name=p14 sig_type=std_logic lab=IN0}
C {lab_pin.sym} 170 120 0 0 {name=p15 sig_type=std_logic lab=IN1}
C {lab_pin.sym} -110 -180 2 0 {name=p16 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -110 -120 2 0 {name=p17 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 140 -150 2 0 {name=p18 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -180 90 2 0 {name=p19 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -40 90 2 0 {name=p20 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 210 120 2 0 {name=p21 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 210 60 2 0 {name=p22 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 70 60 2 0 {name=p23 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 70 170 2 0 {name=p24 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 140 -210 0 0 {name=p25 sig_type=std_logic lab=VDD}
