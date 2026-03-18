v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 40 -120 220 -120 {lab=VDD}
N 40 -90 60 -90 {lab=VDD}
N 60 -120 60 -90 {lab=VDD}
N 200 -90 220 -90 {lab=VDD}
N 200 -120 200 -90 {lab=VDD}
N 40 -30 60 -30 {lab=VDD}
N 60 -90 60 -30 {lab=VDD}
N 200 -30 220 -30 {lab=VDD}
N 200 -90 200 -30 {lab=VDD}
N 40 30 60 30 {lab=VSS}
N 60 30 60 120 {lab=VSS}
N 200 30 220 30 {lab=VSS}
N 200 30 200 120 {lab=VSS}
N 200 90 220 90 {lab=VSS}
N 40 90 60 90 {lab=VSS}
N 40 120 220 120 {lab=VSS}
N 320 -30 320 30 {lab=Yb}
N 40 0 320 -0 {lab=Yb}
N 360 30 380 30 {lab=VSS}
N 380 30 380 60 {lab=VSS}
N 360 -30 380 -30 {lab=VDD}
N 380 -60 380 -30 {lab=VDD}
N 360 -60 380 -60 {lab=VDD}
N 360 60 380 60 {lab=VSS}
N 360 -0 380 -0 {lab=Y}
C {ipin.sym} -190 30 0 0 {name=p1 lab=A}
C {ipin.sym} -190 50 0 0 {name=p2 lab=B}
C {ipin.sym} -190 -50 0 0 {name=p3 lab=SEL}
C {opin.sym} 380 0 0 0 {name=p4 lab=Y}
C {symbols/nfet_03v3.sym} 20 90 2 1 {name=M1
L=0.28u
W="'kYb*0.36u'"
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
C {iopin.sym} -190 -10 2 0 {name=p5 lab=VDD}
C {iopin.sym} -190 10 2 0 {name=p6 lab=VSS}
C {ipin.sym} -190 -30 0 0 {name=p11 lab=SELb}
C {lab_pin.sym} -190 -50 2 0 {name=p12 lab=SEL}
C {lab_pin.sym} -190 -30 2 0 {name=p13 lab=SELb}
C {lab_pin.sym} -190 -10 2 0 {name=p14 lab=VDD}
C {lab_pin.sym} -190 10 2 0 {name=p15 lab=VSS}
C {symbols/nfet_03v3.sym} 20 30 2 1 {name=M2
L=0.28u
W="'kYb*0.36u'"
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
C {symbols/nfet_03v3.sym} 240 30 0 1 {name=M3
L=0.28u
W="'kYb*0.36u'"
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
C {symbols/nfet_03v3.sym} 240 90 0 1 {name=M4
L=0.28u
W="'kYb*0.36u'"
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
C {lab_pin.sym} -190 30 2 0 {name=p7 lab=A}
C {lab_pin.sym} -190 50 2 0 {name=p8 lab=B}
C {lab_pin.sym} 0 30 0 0 {name=p9 lab=A}
C {lab_pin.sym} 0 90 0 0 {name=p10 lab=SELb}
C {lab_pin.sym} 260 90 2 0 {name=p16 lab=SEL}
C {lab_pin.sym} 260 30 2 0 {name=p17 lab=B}
C {lab_wire.sym} 130 120 2 0 {name=p18 lab=VSS}
C {symbols/pfet_03v3.sym} 20 -30 2 1 {name=M5
L=0.28u
W="'kYb*0.72u'"
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
C {symbols/pfet_03v3.sym} 20 -90 2 1 {name=M6
L=0.28u
W="'kYb*0.72u'"
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
C {symbols/pfet_03v3.sym} 240 -90 0 1 {name=M7
L=0.28u
W="'kYb*0.72u'"
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
C {symbols/pfet_03v3.sym} 240 -30 0 1 {name=M8
L=0.28u
W="'kYb*0.72u'"
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
C {lab_pin.sym} 0 -30 0 0 {name=p19 lab=A}
C {lab_pin.sym} 260 -30 2 0 {name=p20 lab=B}
C {lab_pin.sym} 0 -90 0 0 {name=p21 lab=SEL}
C {lab_pin.sym} 260 -90 2 0 {name=p22 lab=SELb}
C {symbols/nfet_03v3.sym} 340 30 2 1 {name=M9
L=0.28u
W="'kY*0.36u'"
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
C {symbols/pfet_03v3.sym} 340 -30 2 1 {name=M10
L=0.28u
W="'kY*0.72u'"
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
C {lab_wire.sym} 140 -120 0 0 {name=p24 lab=VDD}
C {lab_wire.sym} 380 -60 0 0 {name=p23 lab=VDD}
C {lab_wire.sym} 380 60 2 0 {name=p25 lab=VSS}
C {opin.sym} 300 0 1 0 {name=p26 lab=Yb}
C {code_shown.sym} -260 -190 0 0 {name=s1 only_toplevel=false value="
.param kYb=1
.param kY=1
"}
