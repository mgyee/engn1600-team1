v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 60 -60 190 -60 {lab=VDD}
N 40 -30 60 -30 {lab=VDD}
N 60 -60 60 -30 {lab=VDD}
N 170 -30 190 -30 {lab=VDD}
N 190 -60 190 -30 {lab=VDD}
N 40 -0 190 0 {lab=OUT}
N 130 -30 130 30 {lab=IN0}
N 40 -60 60 -60 {lab=VDD}
N 170 30 190 30 {lab=VSS}
N 190 30 190 90 {lab=VSS}
N 190 90 190 120 {lab=VSS}
N 170 90 190 90 {lab=VSS}
N 170 120 190 120 {lab=VSS}
N 190 120 190 140 {lab=VSS}
N 60 -80 60 -60 {lab=VDD}
N -20 30 130 30 {lab=IN0}
N -0 -30 0 90 {lab=IN1}
N 0 90 130 90 {lab=IN1}
N -20 90 -0 90 {lab=IN1}
C {symbols/nfet_03v3.sym} 150 90 0 0 {name=M1
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
C {symbols/nfet_03v3.sym} 150 30 0 0 {name=M2
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
C {symbols/pfet_03v3.sym} 20 -30 0 0 {name=M3
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
C {symbols/pfet_03v3.sym} 150 -30 0 0 {name=M4
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
C {iopin.sym} 190 140 1 0 {name=p1 lab=VSS}
C {iopin.sym} 60 -80 3 0 {name=p2 lab=VDD}
C {ipin.sym} -20 30 0 0 {name=p3 lab=IN0}
C {ipin.sym} -20 90 0 0 {name=p4 lab=IN1}
C {opin.sym} 190 0 0 0 {name=p5 lab=OUT}
