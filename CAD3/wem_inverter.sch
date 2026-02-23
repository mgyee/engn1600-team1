v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 80 -190 140 -190 {lab=WEM}
N 140 -240 160 -240 {lab=WEM}
N 140 -240 140 -140 {lab=WEM}
N 140 -140 160 -140 {lab=WEM}
N 200 -210 200 -170 {lab=WEMb}
N 200 -140 220 -140 {lab=VSS}
N 220 -140 220 -90 {lab=VSS}
N 200 -90 220 -90 {lab=VSS}
N 200 -110 200 -90 {lab=VSS}
N 200 -90 200 -70 {lab=VSS}
N 200 -310 200 -270 {lab=VDD}
N 200 -290 220 -290 {lab=VDD}
N 220 -290 220 -240 {lab=VDD}
N 200 -240 220 -240 {lab=VDD}
N 200 -190 240 -190 {lab=WEMb}
C {devices/ipin.sym} 80 -190 0 0 {name=pin_we17 lab=WEM}
C {symbols/pfet_03v3.sym} 180 -240 0 0 {name=M1
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
C {symbols/nfet_03v3.sym} 180 -140 0 0 {name=M2
L=0.28u
W=0.36
u
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
C {devices/opin.sym} 240 -190 0 0 {name=pin_we1 lab=WEMb
}
C {devices/iopin.sym} 200 -310 3 0 {name=pin_we2 lab=VDD}
C {devices/iopin.sym} 200 -70 1 0 {name=pin_we3 lab=VSS}
