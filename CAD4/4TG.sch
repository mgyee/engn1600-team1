v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -240 -250 -160 -250 {lab=A}
N -240 -200 -160 -200 {lab=B}
N -240 -150 -160 -150 {lab=C}
N -240 -100 -160 -100 {lab=D}
N -530 -50 -450 -50 {lab=S0}
N -240 150 -160 150 {lab=OUT}
N -240 0 -160 0 {lab=S1}
N 130 -310 130 -250 {lab=A}
N 190 -310 190 -250 {lab=#net1}
N 70 -280 130 -280 {lab=A}
N 190 -280 240 -280 {lab=#net1}
N 130 -120 130 -60 {lab=B}
N 190 -120 190 -60 {lab=#net1}
N 70 -90 130 -90 {lab=B}
N 190 -90 240 -90 {lab=#net1}
N -240 200 -160 200 {lab=VDD}
N -240 250 -160 250 {lab=VSS}
N 130 50 130 110 {lab=C}
N 190 50 190 110 {lab=#net1}
N 70 80 130 80 {lab=C}
N 190 80 240 80 {lab=#net1}
N 130 240 130 300 {lab=D}
N 190 240 190 300 {lab=#net1}
N 70 270 130 270 {lab=D}
N 190 270 240 270 {lab=#net1}
N -530 50 -450 50 {lab=S2}
N -240 100 -160 100 {lab=S3}
N 240 -280 240 -90 {lab=#net1}
N 240 80 240 270 {lab=#net1}
N 240 -90 240 80 {lab=#net1}
C {ipin.sym} -240 -250 0 0 {name=p1 lab=A
}
C {ipin.sym} -240 -200 0 0 {name=p2 lab=B}
C {ipin.sym} -530 -50 0 0 {name=p3 lab=S0}
C {ipin.sym} -240 -150 0 0 {name=p4 lab=C}
C {ipin.sym} -240 -100 0 0 {name=p5 lab=D}
C {opin.sym} -240 150 2 0 {name=p6 lab=OUT}
C {lab_wire.sym} -160 150 0 0 {name=p7 sig_type=std_logic lab=OUT}
C {lab_wire.sym} -450 -50 0 0 {name=p8 sig_type=std_logic lab=S0}
C {lab_wire.sym} -160 -100 0 0 {name=p9 sig_type=std_logic lab=D}
C {lab_wire.sym} -160 -150 0 0 {name=p10 sig_type=std_logic lab=C}
C {lab_wire.sym} -160 -200 0 0 {name=p11 sig_type=std_logic lab=B}
C {lab_wire.sym} -160 -250 0 0 {name=p12 sig_type=std_logic lab=A}
C {ipin.sym} -240 0 0 0 {name=p13 lab=S1}
C {lab_wire.sym} -160 0 0 0 {name=p14 sig_type=std_logic lab=S1}
C {symbols/nfet_03v3.sym} 160 -330 1 0 {name=M1
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
C {symbols/pfet_03v3.sym} 160 -230 3 0 {name=M2
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
C {symbols/nfet_03v3.sym} 160 -140 1 0 {name=M3
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
C {symbols/pfet_03v3.sym} 160 -40 3 0 {name=M4
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
C {iopin.sym} -240 200 2 0 {name=p15 lab=VDD}
C {iopin.sym} -240 250 2 0 {name=p16 lab=VSS}
C {lab_wire.sym} -160 200 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -160 250 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 70 -280 0 0 {name=p19 sig_type=std_logic lab=A}
C {symbols/nfet_03v3.sym} 160 30 1 0 {name=M9
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
C {symbols/pfet_03v3.sym} 160 130 3 0 {name=M10
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
C {symbols/nfet_03v3.sym} 160 220 1 0 {name=M11
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
C {symbols/pfet_03v3.sym} 160 320 3 0 {name=M12
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
C {lab_wire.sym} 70 80 0 0 {name=p20 sig_type=std_logic lab=C}
C {lab_wire.sym} 70 -90 0 0 {name=p21 sig_type=std_logic lab=B}
C {lab_wire.sym} 70 270 0 0 {name=p22 sig_type=std_logic lab=D}
C {ipin.sym} -530 50 0 0 {name=p23 lab=S2}
C {ipin.sym} -240 100 0 0 {name=p25 lab=S3}
C {lab_wire.sym} 160 -250 0 0 {name=p41 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 160 -60 0 0 {name=p42 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 160 110 0 0 {name=p43 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 160 300 0 0 {name=p44 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 160 -310 0 0 {name=p50 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 160 -120 0 0 {name=p51 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 160 50 0 0 {name=p52 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 160 240 0 0 {name=p53 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -450 50 0 0 {name=p24 sig_type=std_logic lab=S2}
C {lab_wire.sym} -160 100 0 0 {name=p26 sig_type=std_logic lab=S3}
C {engn1600-team1/CAD4/INV.sym} 260 0 0 0 {name=x1}
C {lab_pin.sym} 280 -40 0 1 {name=p27 lab=VDD}
C {lab_pin.sym} 280 40 0 1 {name=p29 lab=VSS}
C {engn1600-team1/CAD4/INV.sym} -430 -50 0 0 {name=x2}
C {engn1600-team1/CAD4/INV.sym} -430 50 0 0 {name=x3}
C {engn1600-team1/CAD4/INV.sym} -140 0 0 0 {name=x4}
C {engn1600-team1/CAD4/INV.sym} -140 100 0 0 {name=x5}
C {lab_pin.sym} -410 -90 0 1 {name=p30 lab=VDD}
C {lab_pin.sym} -340 -50 0 1 {name=p31 lab=S0b}
C {lab_pin.sym} -410 -10 0 1 {name=p32 lab=VSS}
C {lab_pin.sym} -410 10 0 1 {name=p33 lab=VDD}
C {lab_pin.sym} -340 50 0 1 {name=p35 lab=S2b}
C {lab_pin.sym} -410 90 0 1 {name=p36 lab=VSS}
C {lab_pin.sym} -120 -40 0 1 {name=p37 lab=VDD}
C {lab_pin.sym} -50 0 0 1 {name=p38 lab=S1b}
C {lab_pin.sym} -120 40 0 1 {name=p39 lab=VSS}
C {lab_pin.sym} -120 60 0 1 {name=p40 lab=VDD}
C {lab_pin.sym} -50 100 0 1 {name=p45 lab=S3b
}
C {lab_pin.sym} -120 140 0 1 {name=p46 lab=VSS}
C {lab_pin.sym} 160 -210 0 1 {name=p48 lab=S0b}
C {lab_pin.sym} 160 -350 0 1 {name=p34 lab=S0
}
C {lab_pin.sym} 160 -20 0 1 {name=p47 lab=S1b}
C {lab_pin.sym} 160 -160 0 1 {name=p49 lab=S1
}
C {lab_pin.sym} 160 150 0 1 {name=p54 lab=S2b}
C {lab_pin.sym} 160 10 0 1 {name=p55 lab=S2
}
C {lab_pin.sym} 160 340 0 1 {name=p56 lab=S3b}
C {lab_pin.sym} 160 200 0 1 {name=p57 lab=S3
}
C {lab_wire.sym} 350 0 2 0 {name=p28 sig_type=std_logic lab=OUT}
