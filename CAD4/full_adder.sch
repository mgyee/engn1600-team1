v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 210 -390 210 -370 {lab=#net1}
N 210 -210 210 -190 {lab=#net2}
N 430 -390 530 -390 {lab=#net3}
N 490 -390 490 -370 {lab=#net3}
N 490 -310 490 -270 {lab=#net4}
N 430 -190 530 -190 {lab=#net5}
N 490 -210 490 -190 {lab=#net5}
N 210 -310 210 -270 {lab=#net4}
N 660 -190 860 -190 {lab=#net6}
N 760 -210 760 -190 {lab=#net6}
N 760 -390 760 -370 {lab=#net7}
N 660 -390 860 -390 {lab=#net7}
N 760 -310 760 -270 {lab=SUMb}
N 690 -340 720 -340 {lab=#net4}
N 690 -340 690 -240 {lab=#net4}
N 690 -240 720 -240 {lab=#net4}
N 1020 -310 1020 -270 {lab=SUMb}
N 760 -300 1020 -300 {lab=SUMb}
N 1020 -390 1020 -370 {lab=#net8}
N 1020 -470 1020 -450 {lab=#net9}
N 1020 -130 1020 -110 {lab=#net10}
N 1020 -210 1020 -190 {lab=#net11}
N 1020 -50 1020 -30 {lab=VSS}
N 1020 -550 1020 -530 {lab=VDD}
N 1190 -190 1190 -170 {lab=COUT}
N 1190 -180 1220 -180 {lab=COUT}
N 1020 -300 1220 -300 {lab=SUMb}
N 210 -450 860 -450 {lab=VDD}
N 210 -130 860 -130 {lab=VSS}
N 210 -340 220 -340 {lab=VDD}
N 220 -450 220 -340 {lab=VDD}
N 210 -420 220 -420 {lab=VDD}
N 210 -240 220 -240 {lab=VSS}
N 220 -240 220 -130 {lab=VSS}
N 210 -160 220 -160 {lab=VSS}
N 430 -160 440 -160 {lab=VSS}
N 440 -160 440 -130 {lab=VSS}
N 530 -160 540 -160 {lab=VSS}
N 540 -160 540 -130 {lab=VSS}
N 490 -240 540 -240 {lab=VSS}
N 540 -240 540 -160 {lab=VSS}
N 660 -160 670 -160 {lab=VSS}
N 670 -160 670 -130 {lab=VSS}
N 760 -160 770 -160 {lab=VSS}
N 770 -160 770 -130 {lab=VSS}
N 860 -160 870 -160 {lab=VSS}
N 870 -160 870 -130 {lab=VSS}
N 860 -130 870 -130 {lab=VSS}
N 760 -240 870 -240 {lab=VSS}
N 870 -240 870 -160 {lab=VSS}
N 430 -420 440 -420 {lab=VDD}
N 440 -450 440 -420 {lab=VDD}
N 490 -340 540 -340 {lab=VDD}
N 540 -450 540 -340 {lab=VDD}
N 530 -420 540 -420 {lab=VDD}
N 660 -420 670 -420 {lab=VDD}
N 670 -450 670 -420 {lab=VDD}
N 760 -420 770 -420 {lab=VDD}
N 770 -450 770 -420 {lab=VDD}
N 760 -340 870 -340 {lab=VDD}
N 870 -450 870 -340 {lab=VDD}
N 860 -450 870 -450 {lab=VDD}
N 860 -420 870 -420 {lab=VDD}
N 1020 -340 1030 -340 {lab=VDD}
N 1030 -540 1030 -340 {lab=VDD}
N 1020 -540 1030 -540 {lab=VDD}
N 1020 -500 1030 -500 {lab=VDD}
N 1020 -420 1030 -420 {lab=VDD}
N 1020 -240 1030 -240 {lab=VSS}
N 1030 -240 1030 -40 {lab=VSS}
N 1020 -40 1030 -40 {lab=VSS}
N 1020 -80 1030 -80 {lab=VSS}
N 1020 -160 1030 -160 {lab=VSS}
N 1190 -220 1200 -220 {lab=VDD}
N 1200 -260 1200 -220 {lab=VDD}
N 1190 -260 1200 -260 {lab=VDD}
N 1190 -260 1190 -250 {lab=VDD}
N 1190 -140 1200 -140 {lab=VSS}
N 1200 -140 1200 -100 {lab=VSS}
N 1190 -100 1200 -100 {lab=VSS}
N 1190 -110 1190 -100 {lab=VSS}
N 1190 -100 1190 -90 {lab=VSS}
N 1190 -270 1190 -260 {lab=VDD}
N 1130 -140 1150 -140 {lab=#net4}
N 1130 -220 1130 -140 {lab=#net4}
N 1130 -220 1150 -220 {lab=#net4}
N 690 -280 1130 -280 {lab=#net4}
N 1130 -280 1130 -220 {lab=#net4}
N 210 -290 490 -290 {lab=#net4}
N 490 -290 690 -290 {lab=#net4}
C {symbols/pfet_03v3.sym} 190 -420 0 0 {name=M1
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
C {symbols/pfet_03v3.sym} 190 -340 0 0 {name=M2
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
C {symbols/pfet_03v3.sym} 410 -420 0 0 {name=M3
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
C {symbols/pfet_03v3.sym} 510 -420 0 0 {name=M4
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
C {symbols/pfet_03v3.sym} 470 -340 0 0 {name=M5
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
C {iopin.sym} 60 -610 2 0 {name=p1 lab=VDD}
C {iopin.sym} 60 -580 2 0 {name=p2 lab=VSS}
C {ipin.sym} 60 -550 0 0 {name=p3 lab=A}
C {ipin.sym} 60 -520 0 0 {name=p4 lab=B}
C {ipin.sym} 60 -490 0 0 {name=p5 lab=CIN
}
C {lab_pin.sym} 60 -610 2 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 60 -580 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 60 -550 2 0 {name=p8 sig_type=std_logic lab=A}
C {lab_pin.sym} 60 -520 2 0 {name=p9 sig_type=std_logic lab=B}
C {lab_pin.sym} 60 -490 2 0 {name=p10 sig_type=std_logic lab=CIN}
C {symbols/nfet_03v3.sym} 470 -240 0 0 {name=M6
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
C {symbols/nfet_03v3.sym} 190 -160 0 0 {name=M7
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
C {symbols/nfet_03v3.sym} 190 -240 0 0 {name=M8
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
C {symbols/nfet_03v3.sym} 410 -160 0 0 {name=M9
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
C {symbols/nfet_03v3.sym} 510 -160 0 0 {name=M10
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
C {symbols/pfet_03v3.sym} 740 -340 0 0 {name=M11
L=0.28u
W="'kN*0.72u'"
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
C {symbols/pfet_03v3.sym} 740 -420 0 0 {name=M12
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
C {symbols/pfet_03v3.sym} 640 -420 0 0 {name=M13
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
C {symbols/pfet_03v3.sym} 840 -420 0 0 {name=M14
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
C {symbols/pfet_03v3.sym} 1000 -420 0 0 {name=M15
L=0.28u
W="'kM*0.36u'"

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
C {symbols/pfet_03v3.sym} 1000 -340 0 0 {name=M16
L=0.28u
W="'kM*0.36u'"
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
C {symbols/pfet_03v3.sym} 1000 -500 0 0 {name=M17
L=0.28u
W="'kM*0.36u'"
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
C {symbols/nfet_03v3.sym} 740 -240 0 0 {name=M18
L=0.28u
W="'kN*0.36u'"
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
C {symbols/nfet_03v3.sym} 840 -160 0 0 {name=M19
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
C {symbols/nfet_03v3.sym} 740 -160 0 0 {name=M20
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
C {symbols/nfet_03v3.sym} 640 -160 0 0 {name=M21
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
C {symbols/nfet_03v3.sym} 1000 -240 0 0 {name=M22
L=0.28u
W="'kM*0.36u'"
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
C {symbols/nfet_03v3.sym} 1000 -160 0 0 {name=M23
L=0.28u
W="'kM*0.36u'"
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
C {symbols/nfet_03v3.sym} 1000 -80 0 0 {name=M24
L=0.28u
W="'kM*0.36u'"
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
C {opin.sym} 1220 -300 0 0 {name=p16 lab=SUMb
}
C {symbols/pfet_03v3.sym} 1170 -220 0 0 {name=M25
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
C {symbols/nfet_03v3.sym} 1170 -140 0 0 {name=M26
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
C {lab_pin.sym} 170 -340 0 0 {name=p20 sig_type=std_logic lab=A}
C {lab_pin.sym} 390 -420 0 0 {name=p21 sig_type=std_logic lab=A}
C {lab_pin.sym} 170 -240 0 0 {name=p22 sig_type=std_logic lab=A}
C {lab_pin.sym} 390 -160 0 0 {name=p23 sig_type=std_logic lab=A}
C {lab_pin.sym} 170 -420 0 0 {name=p24 sig_type=std_logic lab=B}
C {lab_pin.sym} 170 -160 0 0 {name=p25 sig_type=std_logic lab=B}
C {lab_pin.sym} 490 -160 0 0 {name=p26 sig_type=std_logic lab=B}
C {lab_pin.sym} 490 -420 0 0 {name=p27 sig_type=std_logic lab=B}
C {lab_pin.sym} 820 -420 0 0 {name=p28 sig_type=std_logic lab=B}
C {lab_pin.sym} 980 -500 0 0 {name=p29 sig_type=std_logic lab=B}
C {lab_pin.sym} 980 -80 0 0 {name=p30 sig_type=std_logic lab=B}
C {lab_pin.sym} 820 -160 0 0 {name=p31 sig_type=std_logic lab=B}
C {lab_pin.sym} 720 -160 0 0 {name=p32 sig_type=std_logic lab=A}
C {lab_pin.sym} 720 -420 0 0 {name=p33 sig_type=std_logic lab=A}
C {lab_pin.sym} 980 -420 0 0 {name=p34 sig_type=std_logic lab=A}
C {lab_pin.sym} 980 -160 0 0 {name=p35 sig_type=std_logic lab=A}
C {lab_pin.sym} 450 -340 0 0 {name=p36 sig_type=std_logic lab=CIN}
C {lab_pin.sym} 620 -420 0 0 {name=p37 sig_type=std_logic lab=CIN}
C {lab_pin.sym} 620 -160 0 0 {name=p38 sig_type=std_logic lab=CIN}
C {lab_pin.sym} 980 -340 0 0 {name=p39 sig_type=std_logic lab=CIN}
C {lab_pin.sym} 980 -240 0 0 {name=p40 sig_type=std_logic lab=CIN}
C {lab_wire.sym} 340 -130 0 0 {name=p42 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 450 -240 0 0 {name=p43 sig_type=std_logic lab=CIN}
C {lab_wire.sym} 1020 -550 0 0 {name=p44 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1190 -270 0 0 {name=p45 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1020 -30 0 0 {name=p46 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1190 -90 0 0 {name=p47 sig_type=std_logic lab=VSS}
C {opin.sym} 1220 -180 0 0 {name=p48 lab=COUT}
C {code_shown.sym} 370 -560 0 0 {name=s1 only_toplevel=false value="
.param kN=1
.param kM=1
"}
