v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 110 -60 110 -20 {lab=OUT}
N 70 -90 70 10 {lab=IN}
N 10 -40 70 -40 {lab=IN}
N 110 -40 220 -40 {lab=OUT}
N 110 -160 110 -120 {lab=vdd}
N 110 40 110 90 {lab=vss}
N 110 -90 130 -90 {lab=vdd}
N 130 -100 130 -90 {lab=vdd}
N 130 -120 130 -100 {lab=vdd}
N 110 -120 130 -120 {lab=vdd}
N 110 60 140 60 {lab=vss}
N 110 10 140 10 {lab=vss}
N 140 10 140 60 {lab=vss}
C {symbols/nfet_03v3.sym} 90 10 0 0 {name=M1
L=0.28u
W=1u
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
C {symbols/pfet_03v3.sym} 90 -90 0 0 {name=M2
L=0.28u
W=2u
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
C {ipin.sym} 10 -40 0 0 {name=p1 lab=IN}
C {opin.sym} 220 -40 0 0 {name=p2 lab=OUT
}
C {iopin.sym} 110 90 0 0 {name=p3 lab=vss}
C {iopin.sym} 110 -160 0 0 {name=p4 lab=vdd}
