v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 190 0 190 30 {lab=VSS}
N 170 0 190 0 {lab=VSS}
N -20 -60 130 -60 {lab=IN0}
N 40 30 190 30 {lab=VSS}
N -20 0 0 0 {lab=IN1}
N 40 0 60 0 {lab=VSS}
N 60 0 60 30 {lab=VSS}
N 60 30 60 50 {lab=VSS}
N 40 -30 190 -30 {lab=OUT}
N 170 -60 190 -60 {lab=VDD}
N 190 -120 190 -60 {lab=VDD}
N 170 -120 190 -120 {lab=VDD}
N 190 -150 190 -120 {lab=VDD}
N 170 -150 190 -150 {lab=VDD}
N 190 -170 190 -150 {lab=VDD}
N 0 -120 0 0 {lab=IN1}
N 0 -120 130 -120 {lab=IN1}
N 130 -60 130 0 {lab=IN0}
C {symbols/nfet_03v3.sym} 150 0 0 0 {name=M1
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
C {symbols/nfet_03v3.sym} 20 0 0 0 {name=M2
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
C {symbols/pfet_03v3.sym} 150 -120 0 0 {name=M3
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
C {symbols/pfet_03v3.sym} 150 -60 0 0 {name=M4
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
C {iopin.sym} 60 50 1 0 {name=p1 lab=VSS}
C {iopin.sym} 190 -170 3 0 {name=p2 lab=VDD}
C {ipin.sym} -20 -60 0 0 {name=p3 lab=IN0}
C {ipin.sym} -20 0 0 0 {name=p4 lab=IN1}
C {opin.sym} 190 -30 0 0 {name=p5 lab=OUT}
