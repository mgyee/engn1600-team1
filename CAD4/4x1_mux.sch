v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 30 -270 30 210 {lab=Y}
C {symbols/nfet_03v3.sym} 0 -290 1 0 {name=M1
L=0.28u
W="'1*0.36u'"
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
C {symbols/nfet_03v3.sym} 0 -130 1 0 {name=M2
L=0.28u
W="'kMUX*0.36u'"
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
C {symbols/nfet_03v3.sym} 0 30 1 0 {name=M3
L=0.28u
W="'kMUX*0.36u'"
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
C {symbols/nfet_03v3.sym} 0 190 1 0 {name=M4
L=0.28u
W="'kMUX*0.36u'"
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
C {ipin.sym} -30 -270 0 0 {name=p1 lab=A}
C {ipin.sym} -30 -110 0 0 {name=p2 lab=B}
C {ipin.sym} -30 50 0 0 {name=p3 lab=C}
C {ipin.sym} -30 210 0 0 {name=p4 lab=D}
C {opin.sym} 30 0 0 0 {name=p5 lab=Y}
C {iopin.sym} -170 0 2 0 {name=p6 lab=VSS}
C {lab_pin.sym} -170 0 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 0 -270 3 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 0 -110 3 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 0 50 3 0 {name=p10 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 0 210 3 0 {name=p11 sig_type=std_logic lab=VSS}
C {ipin.sym} 0 -310 0 0 {name=p12 lab=SA}
C {ipin.sym} 0 -150 0 0 {name=p13 lab=SB}
C {ipin.sym} 0 10 0 0 {name=p14 lab=SC}
C {ipin.sym} 0 170 0 0 {name=p15 lab=SD}
C {code_shown.sym} 90 -170 0 0 {name=s1 only_toplevel=false value="
.param kMUX=1
"}
