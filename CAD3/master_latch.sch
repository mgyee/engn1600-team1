v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -210 -40 -210 40 {lab=#net1}
N -250 -70 -250 70 {lab=D}
N -310 0 -250 0 {lab=D}
N -210 0 -150 0 {lab=#net1}
N -210 100 -210 140 {lab=vss}
N -210 -140 -210 -100 {lab=vdd}
N -210 70 -190 70 {lab=vss}
N -190 70 -190 110 {lab=vss}
N -210 110 -190 110 {lab=vss}
N -210 -70 -190 -70 {lab=vdd}
N -190 -110 -190 -70 {lab=vdd}
N -210 -110 -190 -110 {lab=vdd}
N -40 -50 -40 47.5 {lab=#net1}
N 20 -50 20 50 {lab=#net2}
N -10 90 -10 122.5 {lab=WE_MASTER}
N -10 -117.5 -10 -90 {lab=we_master_b}
N -67.5 0 -40 0 {lab=#net1}
N 20 0 55 0 {lab=#net2}
N -72.5 40 -10 40 {lab=vss}
N -10 40 -10 50 {lab=vss}
N -10 -50 -10 -40 {lab=vdd}
N -10 -40 37.5 -40 {lab=vdd}
N -150 -0 -67.5 0 {lab=#net1}
N 270 -40 270 40 {lab=out}
N 230 -70 230 70 {lab=#net2}
N 170 0 230 0 {lab=#net2}
N 270 0 330 0 {lab=out}
N 270 100 270 140 {lab=vss}
N 270 -140 270 -100 {lab=vdd}
N 270 70 290 70 {lab=vss}
N 290 70 290 110 {lab=vss}
N 270 110 290 110 {lab=vss}
N 270 -70 290 -70 {lab=vdd}
N 290 -110 290 -70 {lab=vdd}
N 270 -110 290 -110 {lab=vdd}
N 55 -0 170 -0 {lab=#net2}
N 270 -477.5 270 -397.5 {lab=#net3}
N 230 -507.5 230 -367.5 {lab=#net2}
N 270 -437.5 330 -437.5 {lab=#net3}
N 270 -337.5 270 -297.5 {lab=vss}
N 270 -577.5 270 -537.5 {lab=vdd}
N 270 -367.5 290 -367.5 {lab=vss}
N 290 -367.5 290 -327.5 {lab=vss}
N 270 -327.5 290 -327.5 {lab=vss}
N 270 -507.5 290 -507.5 {lab=vdd}
N 290 -547.5 290 -507.5 {lab=vdd}
N 270 -547.5 290 -547.5 {lab=vdd}
N 162.5 -447.5 162.5 -0 {lab=#net2}
N 162.5 -447.5 230 -447.5 {lab=#net2}
N 275 -925 275 -882.5 {lab=#net2}
N 257.5 -852.5 277.5 -852.5 {lab=vdd}
N 257.5 -852.5 257.5 -795 {lab=vdd}
N 275 -822.5 275 -782.5 {lab=#net4}
N 262.5 -1085 277.5 -1085 {lab=vss}
N 262.5 -1115 262.5 -1085 {lab=vss}
N 275 -1055 275 -1025 {lab=#net5}
N 275 -1192.5 275 -1115 {lab=vss}
N 262.5 -1170 262.5 -1112.5 {lab=vss}
N 262.5 -1170 275 -1170 {lab=vss}
N 275 -965 275 -925 {lab=#net2}
N 240 -995 275 -995 {lab=vss}
N 240 -1140 240 -995 {lab=vss}
N 240 -1140 262.5 -1140 {lab=vss}
N 167.5 -925 275 -925 {lab=#net2}
N 275 -725 275 -712.5 {lab=vdd}
N 257.5 -795 257.5 -720 {lab=vdd}
N 257.5 -720 275 -720 {lab=vdd}
N 257.5 -755 275 -755 {lab=vdd}
N 315 -995 315 -852.5 {lab=#net3}
N 330 -437.5 400 -437.5 {lab=#net3}
N 400 -920 400 -437.5 {lab=#net3}
N 315 -920 400 -920 {lab=#net3}
N 162.5 -925 162.5 -447.5 {lab=#net2}
N 162.5 -925 167.5 -925 {lab=#net2}
N -597.5 -445 -597.5 -365 {lab=we_master_b}
N -637.5 -475 -637.5 -335 {lab=WE_MASTER}
N -697.5 -405 -637.5 -405 {lab=WE_MASTER}
N -597.5 -405 -537.5 -405 {lab=we_master_b}
N -597.5 -305 -597.5 -265 {lab=vss}
N -597.5 -545 -597.5 -505 {lab=vdd}
N -597.5 -335 -577.5 -335 {lab=vss}
N -577.5 -335 -577.5 -295 {lab=vss}
N -597.5 -295 -577.5 -295 {lab=vss}
N -597.5 -475 -577.5 -475 {lab=vdd}
N -577.5 -515 -577.5 -475 {lab=vdd}
N -597.5 -515 -577.5 -515 {lab=vdd}
N 315 -1085 367.5 -1085 {lab=WE_MASTER}
N 315 -755 392.5 -755 {lab=we_master_b}
C {symbols/nfet_03v3.sym} -230 70 0 0 {name=M1
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
C {symbols/pfet_03v3.sym} -230 -70 0 0 {name=M2
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
C {ipin.sym} -310 0 0 0 {name=p1 lab=D}
C {symbols/nfet_03v3.sym} -10 70 3 0 {name=M3
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
C {symbols/pfet_03v3.sym} -10 -70 1 0 {name=M4
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
C {symbols/nfet_03v3.sym} 250 70 0 0 {name=M5
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
C {symbols/pfet_03v3.sym} 250 -70 0 0 {name=M6
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
C {symbols/nfet_03v3.sym} 250 -367.5 0 0 {name=M7
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
C {symbols/pfet_03v3.sym} 250 -507.5 0 0 {name=M8
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
C {iopin.sym} -622.5 -687.5 2 0 {name=p5 lab=VDD}
C {iopin.sym} -625 -655 2 0 {name=p8 lab=VSS}
C {symbols/pfet_03v3.sym} 295 -852.5 2 0 {name=M9
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
C {symbols/nfet_03v3.sym} 295 -1085 2 0 {name=M10
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
C {symbols/nfet_03v3.sym} 295 -995 2 0 {name=M11
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
C {symbols/pfet_03v3.sym} 295 -755 2 0 {name=M12
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
C {symbols/nfet_03v3.sym} -617.5 -335 0 0 {name=M13
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
C {symbols/pfet_03v3.sym} -617.5 -475 0 0 {name=M14
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
C {ipin.sym} -697.5 -405 0 0 {name=p13 lab=WE_MASTER}
C {lab_wire.sym} -545 -405 0 0 {name=p19 sig_type=std_logic lab=we_master_b}
C {lab_wire.sym} -10 -115 0 0 {name=p20 sig_type=std_logic lab=we_master_b}
C {lab_wire.sym} -10 117.5 0 0 {name=p4 sig_type=std_logic lab=WE_MASTER}
C {lab_wire.sym} 355 -1085 2 0 {name=p3 sig_type=std_logic lab=WE_MASTER}
C {lab_wire.sym} 372.5 -755 2 0 {name=p15 sig_type=std_logic lab=we_master_b}
C {lab_wire.sym} 270 -567.5 0 0 {name=p17 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 270 -307.5 0 0 {name=p21 sig_type=std_logic lab=vss}
C {lab_wire.sym} 270 135 0 0 {name=p22 sig_type=std_logic lab=vss}
C {lab_wire.sym} -65 40 0 0 {name=p11 sig_type=std_logic lab=vss}
C {lab_wire.sym} 275 -1185 0 0 {name=p9 sig_type=std_logic lab=vss}
C {lab_wire.sym} 275 -715 3 0 {name=p16 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 270 -130 0 0 {name=p12 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 35 -40 2 0 {name=p10 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -597.5 -270 0 0 {name=p6 sig_type=std_logic lab=vss}
C {lab_wire.sym} -597.5 -537.5 2 0 {name=p18 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -210 137.5 0 0 {name=p7 sig_type=std_logic lab=vss}
C {lab_wire.sym} -210 -125 0 0 {name=p23 sig_type=std_logic lab=vdd}
C {opin.sym} 330 0 0 0 {name=p2 lab=out}
