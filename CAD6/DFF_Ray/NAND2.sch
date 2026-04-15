v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 40 -0 40 20 {lab=OUT}
N -60 -60 40 -60 {lab=vdd}
N -60 -0 40 0 {lab=OUT}
N -160 20 -160 120 {lab=IN1}
N -160 130 0 130 {lab=IN1}
N -160 120 -160 130 {lab=IN1}
N -160 20 -0 20 {lab=IN1}
N 0 -30 0 20 {lab=IN1}
N -160 -30 -100 -30 {lab=INO}
N -100 -30 -100 45 {lab=INO}
N -100 45 -15 45 {lab=INO}
N -15 45 0 45 {lab=INO}
N 0 45 0 50 {lab=INO}
N -5 -85 -5 -60 {lab=vdd}
N 40 160 40 190 {lab=vss}
N 40 10 115 10 {lab=OUT}
N 40 160 70 160 {lab=vss}
N 70 130 70 160 {lab=vss}
N 40 130 70 130 {lab=vss}
N 60 50 60 80 {lab=vss}
N -60 -30 -40 -30 {lab=vdd}
N -40 -60 -40 -30 {lab=vdd}
N 40 -30 60 -30 {lab=vdd}
N 60 -60 60 -30 {lab=vdd}
N 40 -60 60 -60 {lab=vdd}
N 60 80 60 130 {lab=vss}
N 40 78.75 40 100 {lab=#net1}
N 40 48.75 60 48.75 {lab=vss}
N 60 48.75 60 50 {lab=vss}
C {symbols/nfet_03v3.sym} 20 48.75 0 0 {name=M1
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
C {symbols/nfet_03v3.sym} 20 130 0 0 {name=M2
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
C {symbols/pfet_03v3.sym} -80 -30 0 0 {name=M3
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
C {symbols/pfet_03v3.sym} 20 -30 0 0 {name=M4
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
C {ipin.sym} -160 -30 0 0 {name=p1 lab=INO
}
C {ipin.sym} -160 20 0 0 {name=p2 lab=IN1
}
C {iopin.sym} -5 -85 3 0 {name=p3 lab=vdd
}
C {iopin.sym} 40 190 1 0 {name=p4 lab=vss}
C {opin.sym} 115 10 0 0 {name=p5 lab=OUT
}
