v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 210 -390 210 -370 {lab=#net1}
N 210 -210 210 -190 {lab=#net2}
N 380 -190 480 -190 {lab=#net3}
N 440 -210 440 -190 {lab=#net3}
N 210 -310 210 -270 {lab=#net3}
N 600 -210 600 -190 {lab=VSS}
N 600 -390 600 -370 {lab=#net4}
N 600 -310 600 -270 {lab=SUMb}
N 530 -340 560 -340 {lab=#net3}
N 530 -340 530 -240 {lab=#net3}
N 530 -240 560 -240 {lab=#net3}
N 760 -190 760 -170 {lab=#net5}
N 760 -110 760 -90 {lab=VSS}
N 920 -190 920 -170 {lab=COUT}
N 920 -180 950 -180 {lab=COUT}
N 210 -340 220 -340 {lab=VDD}
N 220 -450 220 -340 {lab=VDD}
N 210 -420 220 -420 {lab=VDD}
N 210 -240 220 -240 {lab=VSS}
N 220 -240 220 -130 {lab=VSS}
N 210 -160 220 -160 {lab=VSS}
N 380 -160 390 -160 {lab=VSS}
N 390 -160 390 -130 {lab=VSS}
N 480 -160 490 -160 {lab=VSS}
N 490 -160 490 -130 {lab=VSS}
N 600 -420 610 -420 {lab=VDD}
N 610 -450 610 -420 {lab=VDD}
N 600 -340 710 -340 {lab=VDD}
N 710 -450 710 -340 {lab=VDD}
N 700 -420 710 -420 {lab=VDD}
N 760 -100 770 -100 {lab=VSS}
N 760 -140 770 -140 {lab=VSS}
N 760 -220 770 -220 {lab=VSS}
N 920 -220 930 -220 {lab=VDD}
N 930 -260 930 -220 {lab=VDD}
N 920 -260 930 -260 {lab=VDD}
N 920 -260 920 -250 {lab=VDD}
N 920 -140 930 -140 {lab=VSS}
N 930 -140 930 -100 {lab=VSS}
N 920 -100 930 -100 {lab=VSS}
N 920 -110 920 -100 {lab=VSS}
N 920 -100 920 -90 {lab=VSS}
N 920 -270 920 -260 {lab=VDD}
N 860 -140 880 -140 {lab=#net3}
N 860 -220 860 -140 {lab=#net3}
N 860 -220 880 -220 {lab=#net3}
N 860 -280 860 -220 {lab=#net3}
N 600 -190 600 -130 {lab=VSS}
N 770 -220 770 -100 {lab=VSS}
N 210 -290 530 -290 {lab=#net3}
N 530 -280 860 -280 {lab=#net3}
N 440 -290 440 -210 {lab=#net3}
N 210 -130 600 -130 {lab=VSS}
N 600 -240 610 -240 {lab=VSS}
N 610 -240 610 -200 {lab=VSS}
N 600 -200 610 -200 {lab=VSS}
N 210 -450 710 -450 {lab=VDD}
N 600 -390 700 -390 {lab=#net4}
N 600 -300 750 -300 {lab=SUMb}
N 750 -300 950 -300 {lab=SUMb}
N 760 -300 760 -250 {lab=SUMb}
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
C {symbols/nfet_03v3.sym} 360 -160 0 0 {name=M9
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
C {symbols/nfet_03v3.sym} 460 -160 0 0 {name=M10
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
C {symbols/pfet_03v3.sym} 580 -340 0 0 {name=M11
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
C {symbols/pfet_03v3.sym} 580 -420 0 0 {name=M12
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
C {symbols/pfet_03v3.sym} 680 -420 0 0 {name=M14
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
C {symbols/nfet_03v3.sym} 580 -240 0 0 {name=M18
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
C {symbols/nfet_03v3.sym} 740 -220 0 0 {name=M23
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
C {symbols/nfet_03v3.sym} 740 -140 0 0 {name=M24
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
C {lab_wire.sym} 340 -450 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {opin.sym} 950 -300 0 0 {name=p16 lab=SUMb
}
C {symbols/pfet_03v3.sym} 900 -220 0 0 {name=M25
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
C {symbols/nfet_03v3.sym} 900 -140 0 0 {name=M26
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
C {lab_pin.sym} 170 -160 0 0 {name=p22 sig_type=std_logic lab=A}
C {lab_pin.sym} 340 -160 0 0 {name=p23 sig_type=std_logic lab=A}
C {lab_pin.sym} 170 -340 0 0 {name=p24 sig_type=std_logic lab=B}
C {lab_pin.sym} 170 -240 0 0 {name=p25 sig_type=std_logic lab=B}
C {lab_pin.sym} 440 -160 0 0 {name=p26 sig_type=std_logic lab=B}
C {lab_pin.sym} 660 -420 0 0 {name=p28 sig_type=std_logic lab=B}
C {lab_pin.sym} 720 -220 0 0 {name=p30 sig_type=std_logic lab=B}
C {lab_pin.sym} 560 -420 0 0 {name=p33 sig_type=std_logic lab=A}
C {lab_pin.sym} 720 -140 0 0 {name=p35 sig_type=std_logic lab=A}
C {lab_wire.sym} 340 -130 0 0 {name=p42 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 920 -270 0 0 {name=p45 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 760 -90 0 0 {name=p46 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 920 -90 0 0 {name=p47 sig_type=std_logic lab=VSS}
C {opin.sym} 950 -180 0 0 {name=p48 lab=COUT}
