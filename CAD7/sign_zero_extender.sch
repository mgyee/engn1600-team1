v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 150 -70 150 -50 {lab=#net1}
N 110 -100 110 -20 {lab=#net2}
N 150 -160 150 -130 {lab=VDD}
N 150 -150 170 -150 {lab=VDD}
N 170 -150 170 -100 {lab=VDD}
N 150 -100 170 -100 {lab=VDD}
N 150 -170 150 -160 {lab=VDD}
N 150 -20 170 -20 {lab=VSS}
N 170 -20 170 30 {lab=VSS}
N 150 30 170 30 {lab=VSS}
N 150 10 150 50 {lab=VSS}
N 330 -70 330 -50 {lab=OUT}
N 290 -100 290 -20 {lab=#net1}
N 330 -160 330 -130 {lab=VDD}
N 330 -150 350 -150 {lab=VDD}
N 350 -150 350 -100 {lab=VDD}
N 330 -100 350 -100 {lab=VDD}
N 330 -170 330 -160 {lab=VDD}
N 330 -20 350 -20 {lab=VSS}
N 350 -20 350 30 {lab=VSS}
N 330 30 350 30 {lab=VSS}
N 330 10 330 50 {lab=VSS}
N 330 -60 350 -60 {lab=OUT}
N 150 -60 290 -60 {lab=#net1}
N -110 -60 -90 -60 {lab=#net3}
N 20 -60 110 -60 {lab=#net2}
N -230 -70 -210 -70 {lab=EXTEND}
N -230 -50 -210 -50 {lab=IN}
C {iopin.sym} -390 -40 2 0 {name=p3 lab=VDD}
C {iopin.sym} -390 -20 2 0 {name=p4 lab=VSS}
C {lab_pin.sym} 150 -170 0 1 {name=p5 lab=VDD}
C {lab_pin.sym} 150 50 0 1 {name=p6 lab=VSS}
C {lab_pin.sym} 330 -170 0 1 {name=p7 lab=VDD}
C {lab_pin.sym} 330 50 0 1 {name=p8 lab=VSS}
C {symbols/pfet_03v3.sym} 130 -100 0 0 {name=M1
L=0.28u
W="'3*0.72u'"
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
C {symbols/nfet_03v3.sym} 130 -20 0 0 {name=M2
L=0.28u
W="'3*0.36u'"
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
C {ipin.sym} -230 -50 0 0 {name=p9 lab=IN}
C {symbols/pfet_03v3.sym} 310 -100 0 0 {name=M3
L=0.28u
W="'9*0.72u'"
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
C {symbols/nfet_03v3.sym} 310 -20 0 0 {name=M4
L=0.28u
W="'9*0.36u'"
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
C {opin.sym} 350 -60 0 0 {name=p14 lab=OUT}
C {ipin.sym} -230 -70 0 0 {name=p1 lab=EXTEND}
C {engn1600-team1/CAD7/datapath_inv.sym} -70 -60 0 0 {name=x1 kINV=1}
C {engn1600-team1/CAD7/datapath_nand2.sym} -260 20 0 0 {name=x2}
C {lab_pin.sym} -170 -100 0 1 {name=p2 lab=VDD}
C {lab_pin.sym} -170 -20 0 1 {name=p12 lab=VSS}
C {lab_pin.sym} -50 -100 0 1 {name=p13 lab=VDD}
C {lab_pin.sym} -50 -20 0 1 {name=p16 lab=VSS}
