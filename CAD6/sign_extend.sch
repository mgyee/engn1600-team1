v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -70 -10 -70 10 {lab=#net1}
N -110 -40 -110 40 {lab=IN}
N -70 -100 -70 -70 {lab=VDD}
N -70 -90 -50 -90 {lab=VDD}
N -50 -90 -50 -40 {lab=VDD}
N -70 -40 -50 -40 {lab=VDD}
N -70 -110 -70 -100 {lab=VDD}
N -70 40 -50 40 {lab=VSS}
N -50 40 -50 90 {lab=VSS}
N -70 90 -50 90 {lab=VSS}
N -70 70 -70 110 {lab=VSS}
N 110 -10 110 10 {lab=OUT}
N 70 -40 70 40 {lab=#net1}
N 110 -100 110 -70 {lab=VDD}
N 110 -90 130 -90 {lab=VDD}
N 130 -90 130 -40 {lab=VDD}
N 110 -40 130 -40 {lab=VDD}
N 110 -110 110 -100 {lab=VDD}
N 110 40 130 40 {lab=VSS}
N 130 40 130 90 {lab=VSS}
N 110 90 130 90 {lab=VSS}
N 110 70 110 110 {lab=VSS}
N 110 0 130 0 {lab=OUT}
N -70 -0 70 -0 {lab=#net1}
C {iopin.sym} -190 -10 2 0 {name=p3 lab=VDD}
C {iopin.sym} -190 10 2 0 {name=p4 lab=VSS}
C {lab_pin.sym} -70 -110 0 1 {name=p5 lab=VDD}
C {lab_pin.sym} -70 110 0 1 {name=p6 lab=VSS}
C {lab_pin.sym} 110 -110 0 1 {name=p7 lab=VDD}
C {lab_pin.sym} 110 110 0 1 {name=p8 lab=VSS}
C {symbols/pfet_03v3.sym} -90 -40 0 0 {name=M1
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
C {symbols/nfet_03v3.sym} -90 40 0 0 {name=M2
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
C {ipin.sym} -110 0 0 0 {name=p9 lab=IN}
C {symbols/pfet_03v3.sym} 90 -40 0 0 {name=M3
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
C {symbols/nfet_03v3.sym} 90 40 0 0 {name=M4
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
C {opin.sym} 130 0 0 0 {name=p14 lab=OUT}
