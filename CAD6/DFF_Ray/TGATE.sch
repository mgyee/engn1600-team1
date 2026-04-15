v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 30 10 80 10 {lab=OUT}
N -70 10 -30 10 {lab=IN}
N -30 -50 -30 10 {lab=IN}
N 30 -50 30 10 {lab=OUT}
N -0 -50 -0 -30 {lab=VDD}
N -0 -30 60 -30 {lab=VDD}
N -0 -10 -0 10 {lab=VSS}
N -0 -10 60 -10 {lab=VSS}
N -0 70 170 70 {lab=CLKN}
N 170 -90 170 70 {lab=CLKN}
N 0 -90 170 -90 {lab=CLKN}
N -140 -120 -0 -120 {lab=CLK}
N -140 -120 -140 50 {lab=CLK}
N -140 50 -0 50 {lab=CLK}
C {ipin.sym} -70 10 0 0 {name=p1 lab=IN}
C {opin.sym} 80 10 0 0 {name=p2 lab=OUT}
C {iopin.sym} 0 70 1 0 {name=p3 lab=CLKN
}
C {iopin.sym} 0 -120 3 0 {name=p4 lab=CLK}
C {symbols/nfet_03v3.sym} 0 30 3 0 {name=M1
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
C {symbols/pfet_03v3.sym} 0 -70 1 0 {name=M2
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
C {iopin.sym} 60 -30 0 0 {name=p5 lab=VDD}
C {iopin.sym} 60 -10 0 0 {name=p6 lab=VSS}
