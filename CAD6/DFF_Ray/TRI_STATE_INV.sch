v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 40 50 40 60 {lab=OUT}
N 40 50 40 60 {lab=OUT}
N 40 50 170 50 {lab=OUT}
N 170 50 170 60 {lab=OUT}
N -80 60 -0 60 {lab=IN}
N -0 50 -0 60 {lab=IN}
N -0 20 0 50 {lab=IN}
N -0 60 0 90 {lab=IN}
N 40 -120 40 -90 {lab=VDD}
N 40 -30 40 -10 {lab=#net1}
N 40 120 40 140 {lab=#net2}
N 40 200 40 250 {lab=VSS}
N 38.75 170 51.25 170 {lab=VSS}
N 51.25 170 51.25 200 {lab=VSS}
N 40 200 51.25 200 {lab=VSS}
N 38.75 90 52.5 90 {lab=VSS}
N 52.5 90 52.5 177.5 {lab=VSS}
N 51.25 177.5 52.5 177.5 {lab=VSS}
N 36.25 20 66.25 20 {lab=VDD}
N 66.25 -60 66.25 20 {lab=VDD}
N 36.25 -60 66.25 -60 {lab=VDD}
N 66.25 -105 66.25 -60 {lab=VDD}
N 41.25 -105 66.25 -105 {lab=VDD}
N 40 -105 41.25 -105 {lab=VDD}
N -40 -60 -20 -60 {lab=CLKN}
N -20 -60 -20 170 {lab=CLKN}
N -20 170 0 170 {lab=CLKN}
N -40 -30 -40 170 {lab=CLK}
N -40 -30 -0 -30 {lab=CLK}
N -0 -60 -0 -30 {lab=CLK}
C {symbols/pfet_03v3.sym} 20 -60 0 0 {name=M1
L=0.28u
W=4u
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
C {symbols/pfet_03v3.sym} 20 20 0 0 {name=M2
L=0.28u
W=4u
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
C {symbols/nfet_03v3.sym} 20 90 0 0 {name=M3
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
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 20 170 0 0 {name=M4
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
model=nfet_03v3
spiceprefix=X
}
C {iopin.sym} 40 250 1 0 {name=p1 lab=VSS}
C {iopin.sym} 40 -120 3 0 {name=p2 lab=VDD}
C {iopin.sym} -40 170 2 0 {name=p3 lab=CLK}
C {iopin.sym} -40 -60 2 0 {name=p4 lab=CLKN}
C {ipin.sym} -80 60 0 0 {name=p5 lab=IN}
C {opin.sym} 170 60 0 0 {name=p6 lab=OUT}
