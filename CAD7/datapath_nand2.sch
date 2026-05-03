v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 150 -270 280 -270 {lab=VDD}
N 130 -240 150 -240 {lab=VDD}
N 150 -270 150 -240 {lab=VDD}
N 260 -240 280 -240 {lab=VDD}
N 280 -270 280 -240 {lab=VDD}
N 130 -210 280 -210 {lab=OUT}
N 220 -240 220 -180 {lab=IN0}
N 130 -270 150 -270 {lab=VDD}
N 260 -180 280 -180 {lab=VSS}
N 280 -180 280 -120 {lab=VSS}
N 280 -120 280 -90 {lab=VSS}
N 260 -120 280 -120 {lab=VSS}
N 260 -90 280 -90 {lab=VSS}
N 280 -90 280 -70 {lab=VSS}
N 150 -290 150 -270 {lab=VDD}
N 70 -180 220 -180 {lab=IN0}
N 90 -240 90 -120 {lab=IN1}
N 90 -120 220 -120 {lab=IN1}
N 70 -120 90 -120 {lab=IN1}
C {symbols/nfet_03v3.sym} 240 -120 0 0 {name=M1
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
C {symbols/nfet_03v3.sym} 240 -180 0 0 {name=M2
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
C {symbols/pfet_03v3.sym} 110 -240 0 0 {name=M3
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
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 240 -240 0 0 {name=M4
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
model=pfet_03v3
spiceprefix=X
}
C {iopin.sym} 280 -70 1 0 {name=p1 lab=VSS}
C {iopin.sym} 150 -290 3 0 {name=p2 lab=VDD}
C {ipin.sym} 70 -180 0 0 {name=p3 lab=IN0}
C {ipin.sym} 70 -120 0 0 {name=p4 lab=IN1}
C {opin.sym} 280 -210 0 0 {name=p5 lab=OUT}
