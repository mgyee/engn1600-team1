v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 120 70 120 130 {lab=B}
N 180 70 180 130 {lab=Y}
N 120 -130 120 -70 {lab=A}
N 180 -130 180 -70 {lab=Y}
N 90 -100 120 -100 {lab=A}
N 90 100 120 100 {lab=B}
N 180 -100 210 -100 {lab=Y}
N 180 100 210 100 {lab=Y}
N 210 -100 210 100 {lab=Y}
N 210 0 240 0 {lab=Y}
N 150 -30 150 30 {lab=SELb}
N 150 170 150 200 {lab=SELb}
N 150 -200 150 -170 {lab=SEL}
C {ipin.sym} 90 -100 0 0 {name=p1 lab=A}
C {ipin.sym} 90 100 0 0 {name=p2 lab=B}
C {ipin.sym} -60 -50 0 0 {name=p3 lab=SEL}
C {opin.sym} 240 0 0 0 {name=p4 lab=Y}
C {symbols/nfet_03v3.sym} 150 150 1 1 {name=M1
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
C {symbols/pfet_03v3.sym} 150 50 3 1 {name=M2
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
C {symbols/nfet_03v3.sym} 150 -50 1 1 {name=M3
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
C {symbols/pfet_03v3.sym} 150 -150 3 1 {name=M4
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
C {iopin.sym} -60 20 2 0 {name=p5 lab=VDD}
C {iopin.sym} -60 50 2 0 {name=p6 lab=VSS}
C {lab_pin.sym} 150 70 2 1 {name=p7 lab=VDD}
C {lab_pin.sym} 150 -130 2 1 {name=p8 lab=VDD}
C {lab_pin.sym} 150 130 2 1 {name=p9 lab=VSS}
C {lab_pin.sym} 150 -70 2 1 {name=p10 lab=VSS}
C {ipin.sym} -60 -20 0 0 {name=p11 lab=SELb}
C {lab_pin.sym} -60 -50 2 0 {name=p12 lab=SEL}
C {lab_pin.sym} -60 -20 2 0 {name=p13 lab=SELb}
C {lab_pin.sym} -60 20 2 0 {name=p14 lab=VDD}
C {lab_pin.sym} -60 50 2 0 {name=p15 lab=VSS}
C {lab_pin.sym} 150 0 0 0 {name=p16 lab=SELb}
C {lab_pin.sym} 150 -200 0 0 {name=p17 lab=SEL}
C {lab_pin.sym} 150 200 0 0 {name=p18 lab=SEL}
