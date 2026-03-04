v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 210 -390 210 -370 {lab=#net1}
N 210 -210 210 -190 {lab=#net2}
N 340 -390 440 -390 {lab=#net3}
N 210 -310 210 -270 {lab=#net3}
N 560 -310 560 -270 {lab=SUMb}
N 490 -340 520 -340 {lab=#net3}
N 490 -340 490 -240 {lab=#net3}
N 490 -240 520 -240 {lab=#net3}
N 720 -380 720 -360 {lab=#net4}
N 720 -460 720 -440 {lab=VDD}
N 760 -190 760 -170 {lab=COUT}
N 760 -180 790 -180 {lab=COUT}
N 210 -340 220 -340 {lab=VDD}
N 220 -450 220 -340 {lab=VDD}
N 210 -420 220 -420 {lab=VDD}
N 210 -240 220 -240 {lab=VSS}
N 220 -240 220 -130 {lab=VSS}
N 210 -160 220 -160 {lab=VSS}
N 460 -160 470 -160 {lab=VSS}
N 470 -160 470 -130 {lab=VSS}
N 560 -160 570 -160 {lab=VSS}
N 570 -160 570 -130 {lab=VSS}
N 560 -130 570 -130 {lab=VSS}
N 340 -420 350 -420 {lab=VDD}
N 350 -450 350 -420 {lab=VDD}
N 440 -420 450 -420 {lab=VDD}
N 720 -330 730 -330 {lab=VDD}
N 720 -450 730 -450 {lab=VDD}
N 720 -410 730 -410 {lab=VDD}
N 760 -220 770 -220 {lab=VDD}
N 770 -260 770 -220 {lab=VDD}
N 760 -260 770 -260 {lab=VDD}
N 760 -260 760 -250 {lab=VDD}
N 760 -140 770 -140 {lab=VSS}
N 770 -140 770 -100 {lab=VSS}
N 760 -100 770 -100 {lab=VSS}
N 760 -110 760 -100 {lab=VSS}
N 760 -100 760 -90 {lab=VSS}
N 760 -270 760 -260 {lab=VDD}
N 700 -140 720 -140 {lab=#net3}
N 700 -220 700 -140 {lab=#net3}
N 700 -220 720 -220 {lab=#net3}
N 700 -280 700 -220 {lab=#net3}
N 450 -450 450 -420 {lab=VDD}
N 560 -450 560 -370 {lab=VDD}
N 560 -340 570 -340 {lab=VDD}
N 570 -450 570 -340 {lab=VDD}
N 460 -190 560 -190 {lab=#net5}
N 730 -450 730 -330 {lab=VDD}
N 400 -390 400 -290 {lab=#net3}
N 210 -290 490 -290 {lab=#net3}
N 560 -210 560 -190 {lab=#net5}
N 570 -240 570 -160 {lab=VSS}
N 560 -240 570 -240 {lab=VSS}
N 210 -130 560 -130 {lab=VSS}
N 210 -450 570 -450 {lab=VDD}
N 560 -300 790 -300 {lab=SUMb}
N 490 -280 700 -280 {lab=#net3}
C {symbols/pfet_03v3.sym} 190 -420 0 0 {name=M1
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
C {symbols/pfet_03v3.sym} 190 -340 0 0 {name=M2
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
C {symbols/pfet_03v3.sym} 320 -420 0 0 {name=M3
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
C {symbols/pfet_03v3.sym} 420 -420 0 0 {name=M4
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
C {iopin.sym} 60 -610 2 0 {name=p1 lab=VDD}
C {iopin.sym} 60 -580 2 0 {name=p2 lab=VSS}
C {ipin.sym} 60 -550 0 0 {name=p3 lab=A}
C {ipin.sym} 60 -520 0 0 {name=p4 lab=B}
C {lab_pin.sym} 60 -610 2 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 60 -580 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 60 -550 2 0 {name=p8 sig_type=std_logic lab=A}
C {lab_pin.sym} 60 -520 2 0 {name=p9 sig_type=std_logic lab=B}
C {symbols/nfet_03v3.sym} 190 -160 0 0 {name=M7
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
C {symbols/nfet_03v3.sym} 190 -240 0 0 {name=M8
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
C {symbols/pfet_03v3.sym} 540 -340 0 0 {name=M11
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
C {symbols/pfet_03v3.sym} 700 -410 0 0 {name=M15
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
C {symbols/pfet_03v3.sym} 700 -330 0 0 {name=M16
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
C {symbols/nfet_03v3.sym} 540 -240 0 0 {name=M18
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
C {symbols/nfet_03v3.sym} 540 -160 0 0 {name=M19
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
C {symbols/nfet_03v3.sym} 440 -160 0 0 {name=M20
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
C {lab_wire.sym} 290 -450 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {opin.sym} 790 -300 0 0 {name=p16 lab=SUMb
}
C {symbols/pfet_03v3.sym} 740 -220 0 0 {name=M25
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
C {symbols/nfet_03v3.sym} 740 -140 0 0 {name=M26
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
C {lab_pin.sym} 170 -420 0 0 {name=p20 sig_type=std_logic lab=A}
C {lab_pin.sym} 300 -420 0 0 {name=p21 sig_type=std_logic lab=A}
C {lab_pin.sym} 170 -160 0 0 {name=p22 sig_type=std_logic lab=A}
C {lab_pin.sym} 170 -340 0 0 {name=p24 sig_type=std_logic lab=B}
C {lab_pin.sym} 170 -240 0 0 {name=p25 sig_type=std_logic lab=B}
C {lab_pin.sym} 400 -420 0 0 {name=p27 sig_type=std_logic lab=B}
C {lab_pin.sym} 680 -410 0 0 {name=p29 sig_type=std_logic lab=B}
C {lab_pin.sym} 520 -160 0 0 {name=p31 sig_type=std_logic lab=B}
C {lab_pin.sym} 420 -160 0 0 {name=p32 sig_type=std_logic lab=A}
C {lab_pin.sym} 680 -330 0 0 {name=p34 sig_type=std_logic lab=A}
C {lab_wire.sym} 340 -130 0 0 {name=p42 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 720 -460 0 0 {name=p44 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 760 -270 0 0 {name=p45 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 760 -90 0 0 {name=p47 sig_type=std_logic lab=VSS}
C {opin.sym} 790 -180 0 0 {name=p48 lab=COUT}
