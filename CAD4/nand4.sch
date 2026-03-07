v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -190 -90 200 -90 {lab=VDD}
N 70 -0 90 -0 {lab=VSS}
N 90 0 90 210 {lab=VSS}
N 70 210 90 210 {lab=VSS}
N 70 180 90 180 {lab=VSS}
N 70 120 90 120 {lab=VSS}
N 70 60 90 60 {lab=VSS}
N -190 -60 -170 -60 {lab=VDD}
N -170 -90 -170 -60 {lab=VDD}
N -60 -60 -40 -60 {lab=VDD}
N -40 -90 -40 -60 {lab=VDD}
N 70 -60 90 -60 {lab=VDD}
N 90 -90 90 -60 {lab=VDD}
N 200 -60 220 -60 {lab=VDD}
N 220 -90 220 -60 {lab=VDD}
N 200 -90 220 -90 {lab=VDD}
N -190 -30 220 -30 {lab=OUT}
C {symbols/nfet_03v3.sym} 50 60 0 0 {name=M1
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
C {symbols/nfet_03v3.sym} 50 0 0 0 {name=M2
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
C {symbols/pfet_03v3.sym} -80 -60 0 0 {name=M3
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
C {symbols/pfet_03v3.sym} 50 -60 0 0 {name=M4
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
C {iopin.sym} -80 50 2 0 {name=p1 lab=VSS}
C {iopin.sym} -80 70 2 0 {name=p2 lab=VDD}
C {ipin.sym} -80 90 0 0 {name=p3 lab=IN0}
C {ipin.sym} -80 110 0 0 {name=p4 lab=IN1}
C {opin.sym} 220 -30 0 0 {name=p5 lab=OUT}
C {ipin.sym} -80 130 0 0 {name=p6 lab=IN2}
C {ipin.sym} -80 150 0 0 {name=p7 lab=IN3}
C {symbols/pfet_03v3.sym} -210 -60 0 0 {name=M5
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
C {symbols/pfet_03v3.sym} 180 -60 0 0 {name=M6
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
C {symbols/nfet_03v3.sym} 50 180 0 0 {name=M7
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
C {symbols/nfet_03v3.sym} 50 120 0 0 {name=M8
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
C {lab_pin.sym} 30 180 0 0 {name=p9 sig_type=std_logic lab=IN0}
C {lab_pin.sym} 30 120 0 0 {name=p10 sig_type=std_logic lab=IN1}
C {lab_pin.sym} 30 60 0 0 {name=p11 sig_type=std_logic lab=IN2}
C {lab_pin.sym} 30 0 0 0 {name=p12 sig_type=std_logic lab=IN3}
C {lab_pin.sym} -230 -60 0 0 {name=p8 sig_type=std_logic lab=IN0}
C {lab_pin.sym} -100 -60 0 0 {name=p13 sig_type=std_logic lab=IN1}
C {lab_pin.sym} 30 -60 0 0 {name=p14 sig_type=std_logic lab=IN2}
C {lab_pin.sym} 160 -60 0 0 {name=p15 sig_type=std_logic lab=IN3}
C {lab_pin.sym} 90 210 3 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 220 -90 1 0 {name=p17 sig_type=std_logic lab=VDD}
