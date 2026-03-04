v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 70 -10 70 440 {lab=Y}
N -40 360 10 360 {lab=D}
N -40 240 10 240 {lab=C}
N -40 90 10 90 {lab=B}
N -40 -10 10 -10 {lab=A}
N 40 -50 100 -50 {lab=S1}
N 40 50 100 50 {lab=S2}
N 40 200 100 200 {lab=S3}
N 40 320 100 320 {lab=S1}
C {symbols/nfet_03v3.sym} 40 -30 1 0 {name=M1
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
C {symbols/nfet_03v3.sym} 40 70 1 0 {name=M2
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
C {symbols/nfet_03v3.sym} 40 220 1 0 {name=M3
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
C {symbols/nfet_03v3.sym} 40 340 1 0 {name=M4
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
C {ipin.sym} -40 -10 0 0 {name=p1 lab=A}
C {ipin.sym} -40 90 0 0 {name=p2 lab=B}
C {ipin.sym} -40 240 0 0 {name=p3 lab=C}
C {ipin.sym} -40 360 0 0 {name=p4 lab=D}
C {opin.sym} 70 440 1 0 {name=p5 lab=Y
}
C {ipin.sym} 100 -50 2 0 {name=p7 lab=S1
}
C {ipin.sym} 100 50 2 0 {name=p8 lab=S2
}
C {ipin.sym} 100 200 2 0 {name=p9 lab=S3
}
C {ipin.sym} 100 320 2 0 {name=p10 lab=S4
}
