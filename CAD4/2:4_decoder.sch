v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -290 -60 -290 60 {lab=S1}
N -250 -30 -250 30 {lab=S1bar}
N -250 -0 -210 -0 {lab=S1bar}
N -330 -0 -290 -0 {lab=S1}
N -250 -90 -220 -90 {lab=VDD}
N -220 -90 -220 -60 {lab=VDD}
N -250 -60 -220 -60 {lab=VDD}
N -250 60 -220 60 {lab=VSS}
N -220 60 -220 90 {lab=VSS}
N -250 90 -220 90 {lab=VSS}
N -250 90 -250 120 {lab=VSS}
N -250 -120 -250 -90 {lab=VDD}
N 0 -280 110 -280 {lab=SA}
N 60 -330 60 -280 {lab=SA}
N 110 -280 190 -280 {lab=SA}
N -0 -220 0 -190 {lab=VSS}
N 0 -190 110 -190 {lab=VSS}
N 110 -220 110 -200 {lab=VSS}
N 110 -200 110 -190 {lab=VSS}
N 60 -190 60 -160 {lab=VSS}
N 30 20 30 60 {lab=S0}
N 90 20 90 60 {lab=SB}
N 60 -30 60 -20 {lab=S1}
N -10 -70 30 -70 {lab=VSS}
N 90 40 140 40 {lab=SB}
N -30 40 30 40 {lab=S0}
N 90 -70 110 -70 {lab=SB}
N 110 -70 110 40 {lab=SB}
N 50 600 50 640 {lab=S0}
N 110 600 110 640 {lab=SD}
N 80 550 80 560 {lab=S1bar}
N 10 510 50 510 {lab=VSS}
N 110 620 160 620 {lab=SD}
N -10 620 50 620 {lab=S0}
N 110 510 130 510 {lab=SD}
N 130 510 130 620 {lab=SD}
N 0 240 110 240 {lab=SC}
N 60 190 60 240 {lab=SC}
N 110 240 190 240 {lab=SC}
N 0 300 0 330 {lab=VSS}
N 0 330 110 330 {lab=VSS}
N 110 300 110 320 {lab=VSS}
N 110 320 110 330 {lab=VSS}
N 60 330 60 360 {lab=VSS}
C {symbols/nfet_03v3.sym} -270 60 0 0 {name=M1
L=0.28u
W=0.22u
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
C {symbols/pfet_03v3.sym} -270 -60 0 0 {name=M2
L=0.28u
W=0.22u
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
C {ipin.sym} -540 0 0 0 {name=p1 lab=S0}
C {ipin.sym} -540 40 0 0 {name=p2 lab=S1}
C {opin.sym} -540 90 2 0 {name=p3 lab=SA}
C {opin.sym} -540 130 2 0 {name=p4 lab=SB}
C {opin.sym} -540 170 2 0 {name=p5 lab=SC}
C {opin.sym} -540 220 2 0 {name=p6 lab=SD}
C {iopin.sym} -560 -40 0 0 {name=p8 lab=VSS}
C {iopin.sym} -560 -70 0 0 {name=p9 lab=VDD}
C {lab_wire.sym} -210 0 2 0 {name=p10 sig_type=std_logic lab=S1bar
}
C {lab_wire.sym} -250 -120 2 0 {name=p11 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} -250 120 2 0 {name=p12 sig_type=std_logic lab=VSS
}
C {symbols/nfet_03v3.sym} -20 -250 0 0 {name=M3
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
C {symbols/nfet_03v3.sym} 90 -250 0 0 {name=M4
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
C {symbols/pfet_03v3.sym} 40 -360 0 0 {name=M5
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
model=pfet_03v3
spiceprefix=X
}
C {lab_wire.sym} 60 -390 0 0 {name=p13 sig_type=std_logic lab=S1bar
}
C {lab_wire.sym} -330 0 0 0 {name=p7 sig_type=std_logic lab=S1
}
C {lab_wire.sym} 20 -360 0 0 {name=p14 sig_type=std_logic lab=S0
}
C {lab_wire.sym} -40 -250 0 0 {name=p15 sig_type=std_logic lab=S0
}
C {lab_wire.sym} 70 -250 0 0 {name=p16 sig_type=std_logic lab=S1
}
C {lab_wire.sym} 60 -160 2 0 {name=p17 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 0 -250 2 0 {name=p18 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 110 -250 2 0 {name=p19 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 60 -360 2 0 {name=p20 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 190 -280 2 0 {name=p29 sig_type=std_logic lab=SA
}
C {symbols/pfet_03v3.sym} 60 0 1 0 {name=M9
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
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 60 80 3 0 {name=M10
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
C {symbols/nfet_03v3.sym} 60 -50 3 0 {name=M11
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
C {lab_wire.sym} 60 100 0 0 {name=p31 sig_type=std_logic lab=S1bar
}
C {lab_wire.sym} 60 -20 0 0 {name=p32 sig_type=std_logic lab=S1
}
C {lab_wire.sym} -10 -70 0 0 {name=p33 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} -30 40 0 0 {name=p34 sig_type=std_logic lab=S0
}
C {lab_wire.sym} 140 40 2 0 {name=p35 sig_type=std_logic lab=SB
}
C {symbols/pfet_03v3.sym} 80 580 1 0 {name=M12
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
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 80 660 3 0 {name=M13
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
C {symbols/nfet_03v3.sym} 80 530 3 0 {name=M14
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
C {lab_wire.sym} 80 680 0 0 {name=p36 sig_type=std_logic lab=S1
}
C {lab_wire.sym} 80 560 0 0 {name=p37 sig_type=std_logic lab=S1bar
}
C {lab_wire.sym} 10 510 0 0 {name=p38 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} -10 620 0 0 {name=p39 sig_type=std_logic lab=S0
}
C {lab_wire.sym} 160 620 2 0 {name=p40 sig_type=std_logic lab=SD
}
C {lab_wire.sym} 80 510 0 0 {name=p41 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 80 640 0 0 {name=p42 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 80 600 0 0 {name=p43 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 60 20 0 0 {name=p44 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 60 -70 0 0 {name=p45 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 60 60 0 0 {name=p46 sig_type=std_logic lab=VSS
}
C {symbols/nfet_03v3.sym} -20 270 0 0 {name=M6
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
C {symbols/nfet_03v3.sym} 90 270 0 0 {name=M7
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
C {symbols/pfet_03v3.sym} 40 160 0 0 {name=M8
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
model=pfet_03v3
spiceprefix=X
}
C {lab_wire.sym} 60 130 0 0 {name=p21 sig_type=std_logic lab=S1
}
C {lab_wire.sym} 20 160 0 0 {name=p22 sig_type=std_logic lab=S0
}
C {lab_wire.sym} -40 270 0 0 {name=p23 sig_type=std_logic lab=S0
}
C {lab_wire.sym} 70 270 0 0 {name=p24 sig_type=std_logic lab=S1bar}
C {lab_wire.sym} 60 360 2 0 {name=p25 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 0 270 2 0 {name=p26 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 110 270 2 0 {name=p27 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 60 160 2 0 {name=p28 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 190 240 2 0 {name=p30 sig_type=std_logic lab=SC
}
