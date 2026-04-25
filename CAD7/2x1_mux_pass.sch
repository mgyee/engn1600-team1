v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 90 -110 90 110 {lab=VSS}
N 120 -110 120 110 {lab=Y}
N 30 -110 60 -110 {lab=A}
N 30 110 60 110 {lab=B}
C {ipin.sym} 30 -110 0 0 {name=p1 lab=A}
C {ipin.sym} 30 110 0 0 {name=p2 lab=B}
C {ipin.sym} -290 -20 0 0 {name=p3 lab=SEL}
C {opin.sym} 120 0 0 0 {name=p4 lab=Y}
C {symbols/nfet_03v3.sym} 90 130 1 1 {name=M1
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
C {symbols/nfet_03v3.sym} 90 -130 1 0 {name=M3
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
C {iopin.sym} -290 0 2 0 {name=p5 lab=VDD}
C {iopin.sym} -290 20 2 0 {name=p6 lab=VSS}
C {lab_wire.sym} 90 -10 2 1 {name=p10 lab=VSS}
C {lab_pin.sym} -290 -20 2 0 {name=p12 lab=SEL}
C {lab_pin.sym} -290 0 2 0 {name=p14 lab=VDD}
C {lab_pin.sym} -290 20 2 0 {name=p15 lab=VSS}
C {lab_pin.sym} 90 -150 1 0 {name=p16 lab=SELb}
C {lab_pin.sym} 90 150 3 0 {name=p18 lab=SEL}
C {engn1600-team1/CAD7/datapath_inv.sym} -140 0 0 0 {name=x1 kINV=1}
C {lab_pin.sym} -120 -40 0 1 {name=p7 lab=VDD}
C {lab_pin.sym} -160 0 0 0 {name=p8 lab=SEL}
C {lab_pin.sym} -50 0 0 1 {name=p9 lab=SELb}
C {lab_pin.sym} -120 40 0 1 {name=p11 lab=VSS}
