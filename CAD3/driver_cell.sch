v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 80 -200 100 -200 {lab=VSS}
N 80 -220 100 -220 {lab=VDD}
N 640 -360 640 -320 {lab=WECLK}
N 640 -460 640 -420 {lab=VDD}
N 640 -260 640 -220 {lab=VSS}
N 640 -390 660 -390 {lab=VDD}
N 660 -440 660 -390 {lab=VDD}
N 640 -440 660 -440 {lab=VDD}
N 640 -240 660 -240 {lab=VSS}
N 660 -290 660 -240 {lab=VSS}
N 640 -290 660 -290 {lab=VSS}
N 580 -390 600 -390 {lab=#net1}
N 580 -390 580 -290 {lab=#net1}
N 580 -290 600 -290 {lab=#net1}
N 840 -360 840 -320 {lab=xxx}
N 840 -460 840 -420 {lab=VDD}
N 840 -260 840 -220 {lab=VSS}
N 840 -390 860 -390 {lab=VDD}
N 860 -440 860 -390 {lab=VDD}
N 840 -440 860 -440 {lab=VDD}
N 840 -240 860 -240 {lab=VSS}
N 860 -290 860 -240 {lab=VSS}
N 840 -290 860 -290 {lab=VSS}
N 780 -390 800 -390 {lab=WECLK}
N 780 -390 780 -290 {lab=WECLK}
N 780 -290 800 -290 {lab=WECLK}
N 330 -480 330 -440 {lab=VDD}
N 330 -480 490 -480 {lab=VDD}
N 490 -480 490 -440 {lab=VDD}
N 330 -410 350 -410 {lab=VDD}
N 350 -460 350 -410 {lab=VDD}
N 330 -460 350 -460 {lab=VDD}
N 490 -410 510 -410 {lab=VDD}
N 510 -460 510 -410 {lab=VDD}
N 490 -460 510 -460 {lab=VDD}
N 330 -380 330 -360 {lab=#net1}
N 330 -360 490 -360 {lab=#net1}
N 490 -380 490 -360 {lab=#net1}
N 410 -360 410 -320 {lab=#net1}
N 410 -340 490 -340 {lab=#net1}
N 410 -160 410 -120 {lab=VSS}
N 410 -260 410 -220 {lab=#net2}
N 410 -140 430 -140 {lab=VSS}
N 430 -290 430 -140 {lab=VSS}
N 410 -290 430 -290 {lab=VSS}
N 410 -190 430 -190 {lab=VSS}
N 230 -410 290 -410 {lab=CLK}
N 270 -410 270 -290 {lab=CLK}
N 270 -290 370 -290 {lab=CLK}
N 230 -340 370 -340 {lab=WE}
N 370 -340 390 -340 {lab=WE}
N 390 -410 390 -340 {lab=WE}
N 390 -410 450 -410 {lab=WE}
N 250 -340 250 -190 {lab=WE}
N 250 -190 370 -190 {lab=WE}
N 490 -340 530 -340 {lab=#net1}
N 410 -500 410 -480 {lab=VDD}
N 530 -340 580 -340 {lab=#net1}
N 640 -340 780 -340 {lab=WECLK}
N 840 -340 940 -340 {lab=xxx}
N 760 -340 760 -180 {lab=WECLK}
N 760 -180 780 -180 {lab=WECLK}
C {ipin.sym} 230 -410 0 0 {name=p1 lab=CLK}
C {ipin.sym} 230 -340 0 0 {name=p2 lab=WE}
C {iopin.sym} 80 -200 2 0 {name=p3 lab=VSS}
C {iopin.sym} 80 -220 2 0 {name=p4 lab=VDD
}
C {lab_wire.sym} 100 -200 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 100 -220 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {symbols/pfet_03v3.sym} 620 -390 0 0 {name=M13
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
C {symbols/nfet_03v3.sym} 620 -290 0 0 {name=M14
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
C {lab_wire.sym} 640 -460 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 640 -220 0 0 {name=p30 sig_type=std_logic lab=VSS}
C {symbols/pfet_03v3.sym} 820 -390 0 0 {name=M1
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
C {symbols/nfet_03v3.sym} 820 -290 0 0 {name=M2
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
C {lab_wire.sym} 840 -460 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 840 -220 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {symbols/pfet_03v3.sym} 310 -410 0 0 {name=M3
L=0.28u
W=1u
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
C {symbols/pfet_03v3.sym} 470 -410 0 0 {name=M4
L=0.28u
W=1u
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
C {symbols/nfet_03v3.sym} 390 -190 0 0 {name=M5
L=0.28u
W=1u
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
C {symbols/nfet_03v3.sym} 390 -290 0 0 {name=M6
L=0.28u
W=1u
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
C {lab_wire.sym} 410 -500 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 410 -120 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {opin.sym} 940 -340 0 0 {name=p5 lab=WECLKb}
C {opin.sym} 780 -180 0 0 {name=p6 lab=WECLK}
