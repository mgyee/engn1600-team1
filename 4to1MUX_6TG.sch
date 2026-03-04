v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -250 -100 -170 -100 {lab=A}
N -250 -50 -170 -50 {lab=B}
N -250 -0 -170 0 {lab=C}
N -250 50 -170 50 {lab=D}
N -250 100 -170 100 {lab=S0}
N -250 310 -170 310 {lab=OUT}
N -250 150 -170 150 {lab=S1}
N 190 -60 190 -0 {lab=A}
N 250 -60 250 -0 {lab=M1}
N 130 -30 190 -30 {lab=A}
N 250 -30 300 -30 {lab=M1}
N 190 130 190 190 {lab=B}
N 250 130 250 190 {lab=M1}
N 130 160 190 160 {lab=B}
N 250 160 300 160 {lab=M1}
N 460 20 460 80 {lab=M1}
N 520 20 520 80 {lab=#net1}
N 400 50 460 50 {lab=M1}
N 520 50 570 50 {lab=#net1}
N 640 260 640 290 {lab=#net1}
N 640 180 640 260 {lab=#net1}
N 680 210 680 260 {lab=OUT}
N 680 230 820 230 {lab=OUT}
N 680 80 680 150 {lab=VDD}
N -250 350 -170 350 {lab=VDD}
N -250 390 -170 390 {lab=VSS}
N 190 300 190 360 {lab=C}
N 250 300 250 360 {lab=M2}
N 130 330 190 330 {lab=C}
N 250 330 300 330 {lab=M2}
N 190 490 190 550 {lab=D}
N 250 490 250 550 {lab=M2}
N 130 520 190 520 {lab=D}
N 250 520 300 520 {lab=M2}
N 460 380 460 440 {lab=M2}
N 520 380 520 440 {lab=#net1}
N 400 410 460 410 {lab=M2}
N 520 410 570 410 {lab=#net1}
N -250 200 -170 200 {lab=S0_bar}
N -250 250 -170 250 {lab=S1_bar}
N 220 40 220 70 {lab=S0_bar}
N 220 70 220 90 {lab=S0_bar}
N 220 400 220 450 {lab=S0_bar}
N 300 -30 300 160 {lab=M1}
N 300 50 400 50 {lab=M1}
N 300 330 300 520 {lab=M2}
N 300 410 400 410 {lab=M2}
N 220 230 220 260 {lab=S0}
N 570 50 570 410 {lab=#net1}
N 570 230 640 230 {lab=#net1}
N 680 320 680 380 {lab=VSS}
N -250 430 -170 430 {lab=M1}
N -250 470 -170 470 {lab=OUT}
C {ipin.sym} -250 -100 0 0 {name=p1 lab=A
}
C {ipin.sym} -250 -50 0 0 {name=p2 lab=B}
C {ipin.sym} -250 100 0 0 {name=p3 lab=S0}
C {ipin.sym} -250 0 0 0 {name=p4 lab=C}
C {ipin.sym} -250 50 0 0 {name=p5 lab=D}
C {opin.sym} -250 310 2 0 {name=p6 lab=OUT}
C {lab_wire.sym} -170 310 0 0 {name=p7 sig_type=std_logic lab=OUT}
C {lab_wire.sym} -170 100 0 0 {name=p8 sig_type=std_logic lab=S0}
C {lab_wire.sym} -170 50 0 0 {name=p9 sig_type=std_logic lab=D}
C {lab_wire.sym} -170 0 0 0 {name=p10 sig_type=std_logic lab=C}
C {lab_wire.sym} -170 -50 0 0 {name=p11 sig_type=std_logic lab=B}
C {lab_wire.sym} -170 -100 0 0 {name=p12 sig_type=std_logic lab=A}
C {ipin.sym} -250 150 0 0 {name=p13 lab=S1}
C {lab_wire.sym} -170 150 0 0 {name=p14 sig_type=std_logic lab=S1}
C {symbols/nfet_03v3.sym} 220 -80 1 0 {name=M1
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
C {symbols/pfet_03v3.sym} 220 20 3 0 {name=M2
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
C {symbols/nfet_03v3.sym} 220 110 1 0 {name=M3
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
C {symbols/pfet_03v3.sym} 220 210 3 0 {name=M4
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
C {symbols/nfet_03v3.sym} 490 0 1 0 {name=M5
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
C {symbols/pfet_03v3.sym} 490 100 3 0 {name=M6
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
C {symbols/pfet_03v3.sym} 660 180 0 0 {name=M7
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
C {symbols/nfet_03v3.sym} 660 290 0 0 {name=M8
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
C {iopin.sym} -250 350 2 0 {name=p15 lab=VDD}
C {iopin.sym} -250 390 2 0 {name=p16 lab=VSS}
C {lab_wire.sym} -170 350 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -170 390 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 130 -30 0 0 {name=p19 sig_type=std_logic lab=A}
C {symbols/nfet_03v3.sym} 220 280 1 0 {name=M9
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
C {symbols/pfet_03v3.sym} 220 380 3 0 {name=M10
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
C {symbols/nfet_03v3.sym} 220 470 1 0 {name=M11
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
C {symbols/pfet_03v3.sym} 220 570 3 0 {name=M12
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
C {symbols/nfet_03v3.sym} 490 360 1 0 {name=M13
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
C {symbols/pfet_03v3.sym} 490 460 3 0 {name=M14
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
C {lab_wire.sym} 130 330 0 0 {name=p20 sig_type=std_logic lab=C}
C {lab_wire.sym} 130 160 0 0 {name=p21 sig_type=std_logic lab=B}
C {lab_wire.sym} 130 520 0 0 {name=p22 sig_type=std_logic lab=D}
C {ipin.sym} -250 200 0 0 {name=p23 lab=S0_bar}
C {lab_wire.sym} -170 200 0 0 {name=p24 sig_type=std_logic lab=S0_bar}
C {ipin.sym} -250 250 0 0 {name=p25 lab=S1_bar}
C {lab_wire.sym} -170 250 0 0 {name=p26 sig_type=std_logic lab=S1_bar}
C {lab_wire.sym} 220 70 0 0 {name=p27 sig_type=std_logic lab=S0_bar}
C {lab_wire.sym} 220 260 0 0 {name=p29 sig_type=std_logic lab=S0}
C {lab_wire.sym} 490 340 0 0 {name=p31 sig_type=std_logic lab=S1}
C {lab_wire.sym} 490 480 0 0 {name=p32 sig_type=std_logic lab=S1_bar}
C {lab_wire.sym} 220 430 0 0 {name=p28 sig_type=std_logic lab=S0_bar}
C {lab_wire.sym} 220 590 0 0 {name=p33 sig_type=std_logic lab=S0}
C {lab_wire.sym} 220 -100 0 0 {name=p34 sig_type=std_logic lab=S0}
C {lab_wire.sym} 490 -20 0 0 {name=p35 sig_type=std_logic lab=S1}
C {lab_wire.sym} 490 120 0 0 {name=p36 sig_type=std_logic lab=S1_bar}
C {lab_wire.sym} 680 380 0 0 {name=p37 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 680 80 0 0 {name=p38 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 820 230 0 0 {name=p39 sig_type=std_logic lab=OUT}
C {lab_wire.sym} 490 80 0 0 {name=p40 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 220 0 0 0 {name=p41 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 220 190 0 0 {name=p42 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 220 360 0 0 {name=p43 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 220 550 0 0 {name=p44 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 490 440 0 0 {name=p45 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 490 380 0 0 {name=p46 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 680 290 0 1 {name=p47 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 680 180 2 0 {name=p48 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 490 20 0 0 {name=p49 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 220 -60 0 0 {name=p50 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 220 130 0 0 {name=p51 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 220 300 0 0 {name=p52 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 220 490 0 0 {name=p53 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 370 50 0 0 {name=p30 sig_type=std_logic lab=M1}
C {lab_wire.sym} 370 410 0 0 {name=p54 sig_type=std_logic lab=M2}
C {opin.sym} -250 430 2 0 {name=p55 lab=M1}
C {lab_wire.sym} -170 430 0 0 {name=p56 sig_type=std_logic lab=M1
}
C {opin.sym} -250 470 2 0 {name=p57 lab=M2}
C {lab_wire.sym} -170 470 0 0 {name=p58 sig_type=std_logic lab=M2}
