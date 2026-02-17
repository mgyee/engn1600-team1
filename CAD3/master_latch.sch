v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -50 -20 -50 20 {lab=#net1}
N -50 -50 -30 -50 {lab=VDD}
N -30 -100 -30 -50 {lab=VDD}
N -50 -100 -30 -100 {lab=VDD}
N -50 -100 -50 -80 {lab=VDD}
N -50 -100 -50 -80 {lab=VDD}
N -50 -120 -50 -100 {lab=VDD}
N -50 50 -30 50 {lab=VSS}
N -30 50 -30 100 {lab=VSS}
N -50 100 -30 100 {lab=VSS}
N -50 80 -50 100 {lab=VSS}
N -50 80 -50 120 {lab=VSS}
N -110 -50 -90 -50 {lab=D}
N -110 -50 -110 50 {lab=D}
N -110 50 -90 50 {lab=D}
N -130 0 -110 0 {lab=D}
N 110 -40 110 -20 {lab=VDD}
N 110 20 110 40 {lab=VSS}
N 140 -40 160 -40 {lab=#net2}
N 160 -40 160 40 {lab=#net2}
N 140 40 160 40 {lab=#net2}
N 60 -40 80 -40 {lab=#net1}
N 60 -40 60 40 {lab=#net1}
N 60 40 80 40 {lab=#net1}
N 110 -100 110 -80 {lab=WEMb}
N 110 80 110 100 {lab=WEM}
N -50 0 60 0 {lab=#net1}
N 290 -20 290 20 {lab=Q}
N 290 -320 290 -280 {lab=#net3}
N 290 -50 310 -50 {lab=VDD}
N 310 -100 310 -50 {lab=VDD}
N 290 -100 310 -100 {lab=VDD}
N 290 -100 290 -80 {lab=VDD}
N 290 -100 290 -80 {lab=VDD}
N 290 -120 290 -100 {lab=VDD}
N 290 50 310 50 {lab=VSS}
N 310 50 310 100 {lab=VSS}
N 290 100 310 100 {lab=VSS}
N 290 80 290 100 {lab=VSS}
N 290 80 290 120 {lab=VSS}
N 230 -50 250 -50 {lab=#net2}
N 230 -50 230 50 {lab=#net2}
N 230 50 250 50 {lab=#net2}
N 230 -350 250 -350 {lab=#net2}
N 230 -350 230 -250 {lab=#net2}
N 230 -250 250 -250 {lab=#net2}
N 290 -350 310 -350 {lab=VDD}
N 310 -400 310 -350 {lab=VDD}
N 290 -400 310 -400 {lab=VDD}
N 290 -400 290 -380 {lab=VDD}
N 310 -250 310 -200 {lab=VSS}
N 290 -200 310 -200 {lab=VSS}
N 290 -220 290 -200 {lab=VSS}
N 290 -220 290 -180 {lab=VSS}
N 290 -250 310 -250 {lab=VSS}
N 160 0 230 0 {lab=#net2}
N 290 -740 290 -700 {lab=#net2}
N 290 -920 290 -880 {lab=VDD}
N 270 -900 290 -900 {lab=VDD}
N 270 -900 270 -850 {lab=VDD}
N 270 -850 290 -850 {lab=VDD}
N 270 -850 270 -800 {lab=VDD}
N 270 -640 270 -590 {lab=VSS}
N 270 -590 290 -590 {lab=VSS}
N 270 -590 270 -540 {lab=VSS}
N 270 -540 290 -540 {lab=VSS}
N 290 -560 290 -540 {lab=VSS}
N 290 -540 290 -520 {lab=VSS}
N 190 -300 230 -300 {lab=#net2}
N 190 -300 190 0 {lab=#net2}
N 290 -300 410 -300 {lab=#net3}
N 410 -720 410 -300 {lab=#net3}
N 190 -720 190 -300 {lab=#net2}
N 330 -770 330 -670 {lab=#net3}
N 190 -720 290 -720 {lab=#net2}
N 330 -720 410 -720 {lab=#net3}
N 330 -590 350 -590 {lab=WEMb}
N 330 -850 350 -850 {lab=WEM}
N 290 -420 290 -400 {lab=VDD}
N 290 -640 290 -620 {lab=#net4}
N 270 -670 290 -670 {lab=VSS}
N 270 -670 270 -640 {lab=VSS}
N 290 -820 290 -800 {lab=#net5}
N 270 -800 270 -770 {lab=VDD}
N 270 -770 290 -770 {lab=VDD}
N -40 -340 0 -340 {lab=WEM}
N -40 -300 0 -300 {lab=WEMb}
N -40 -420 0 -420 {lab=VDD}
N -40 -380 0 -380 {lab=VSS}
N 290 0 350 0 {lab=Q}
C {ipin.sym} -130 0 0 0 {name=p3 lab=D}
C {symbols/pfet_03v3.sym} 110 -60 1 0 {name=M3
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
C {symbols/pfet_03v3.sym} -70 -50 0 0 {name=M7
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
C {symbols/pfet_03v3.sym} 270 -50 0 0 {name=M8
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
C {symbols/pfet_03v3.sym} 270 -350 0 0 {name=M9
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
C {symbols/pfet_03v3.sym} 310 -850 2 0 {name=M10
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
C {symbols/pfet_03v3.sym} 310 -770 2 0 {name=M12
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
C {symbols/nfet_03v3.sym} -70 50 0 0 {name=M19
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
C {symbols/nfet_03v3.sym} 110 60 3 0 {name=M20
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
C {symbols/nfet_03v3.sym} 270 50 0 0 {name=M21
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
C {symbols/nfet_03v3.sym} 270 -250 0 0 {name=M22
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
C {symbols/nfet_03v3.sym} 310 -670 2 0 {name=M23
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
C {symbols/nfet_03v3.sym} 310 -590 2 0 {name=M24
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
C {lab_wire.sym} -50 -120 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -50 120 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 110 -20 0 0 {name=p12 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 110 20 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 110 -100 0 0 {name=p16 sig_type=std_logic lab=WEMb}
C {lab_wire.sym} 110 100 0 0 {name=p20 sig_type=std_logic lab=WEM}
C {lab_wire.sym} 290 -120 0 0 {name=p21 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 290 120 0 0 {name=p22 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 290 -180 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 290 -520 0 0 {name=p35 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 290 -920 0 0 {name=p36 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 350 -850 0 0 {name=p37 sig_type=std_logic lab=WEM
}
C {lab_wire.sym} 350 -590 0 0 {name=p38 sig_type=std_logic lab=WEMb
}
C {lab_wire.sym} 290 -420 0 0 {name=p39 sig_type=std_logic lab=VDD}
C {ipin.sym} -40 -300 0 0 {name=p4 lab=WEMb}
C {ipin.sym} -40 -340 0 0 {name=p19 lab=WEM
}
C {ipin.sym} -40 -380 0 0 {name=p7 lab=VSS
}
C {ipin.sym} -40 -420 0 0 {name=p9 lab=VDD

}
C {lab_wire.sym} 0 -420 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 0 -380 0 0 {name=p26 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 0 -340 0 0 {name=p27 sig_type=std_logic lab=WEM}
C {lab_wire.sym} 0 -300 0 0 {name=p28 sig_type=std_logic lab=WEMb}
C {opin.sym} 350 0 0 0 {name=p44 lab=Q}
