v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -180 0 210 0 {lab=OUT}
N 80 -210 100 -210 {lab=VDD}
N 80 -30 100 -30 {lab=VDD}
N 80 -90 100 -90 {lab=VDD}
N 80 -150 100 -150 {lab=VDD}
N -180 30 -160 30 {lab=OUT}
N -160 0 -160 30 {lab=OUT}
N -50 30 -30 30 {lab=OUT}
N -30 0 -30 30 {lab=OUT}
N 80 30 100 30 {lab=OUT}
N 100 0 100 30 {lab=OUT}
N 210 30 230 30 {lab=OUT}
N 230 0 230 30 {lab=OUT}
N 210 0 230 0 {lab=OUT}
N -180 60 230 60 {lab=VSS}
N 100 -240 100 -30 {lab=VDD}
N 80 -240 100 -240 {lab=VDD}
C {symbols/pfet_03v3.sym} 60 -150 0 0 {name=M1
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
C {symbols/pfet_03v3.sym} 60 -210 0 0 {name=M2
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
C {symbols/nfet_03v3.sym} -70 30 0 0 {name=M3
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
C {symbols/nfet_03v3.sym} 60 30 0 0 {name=M4
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
C {iopin.sym} -60 -180 2 0 {name=p1 lab=VSS}
C {iopin.sym} -60 -160 2 0 {name=p2 lab=VDD}
C {ipin.sym} -60 -140 0 0 {name=p3 lab=IN0}
C {ipin.sym} -60 -120 0 0 {name=p4 lab=IN1}
C {opin.sym} 230 0 0 0 {name=p5 lab=OUT}
C {ipin.sym} -60 -100 0 0 {name=p6 lab=IN2}
C {ipin.sym} -60 -80 0 0 {name=p7 lab=IN3}
C {symbols/nfet_03v3.sym} -200 30 0 0 {name=M5
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
C {symbols/nfet_03v3.sym} 190 30 0 0 {name=M6
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
C {symbols/pfet_03v3.sym} 60 -30 0 0 {name=M7
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
C {symbols/pfet_03v3.sym} 60 -90 0 0 {name=M8
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
C {lab_pin.sym} 40 -210 0 0 {name=p9 sig_type=std_logic lab=IN0}
C {lab_pin.sym} 40 -150 0 0 {name=p10 sig_type=std_logic lab=IN1}
C {lab_pin.sym} 40 -90 0 0 {name=p11 sig_type=std_logic lab=IN2}
C {lab_pin.sym} 40 -30 0 0 {name=p12 sig_type=std_logic lab=IN3}
C {lab_pin.sym} -220 30 0 0 {name=p8 sig_type=std_logic lab=IN0}
C {lab_pin.sym} -90 30 0 0 {name=p13 sig_type=std_logic lab=IN1}
C {lab_pin.sym} 40 30 0 0 {name=p14 sig_type=std_logic lab=IN2}
C {lab_pin.sym} 170 30 0 0 {name=p15 sig_type=std_logic lab=IN3}
C {lab_pin.sym} 230 60 2 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 100 -240 1 0 {name=p17 sig_type=std_logic lab=VDD}
