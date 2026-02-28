v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 210 -260 230 -260 {lab=QB}
N 210 -260 210 -160 {lab=QB}
N 210 -160 230 -160 {lab=QB}
N 270 -230 270 -190 {lab=QBb}
N 270 -160 290 -160 {lab=VSS}
N 290 -160 290 -110 {lab=VSS}
N 270 -110 290 -110 {lab=VSS}
N 270 -130 270 -110 {lab=VSS}
N 270 -110 270 -90 {lab=VSS}
N 270 -330 270 -290 {lab=VDD}
N 270 -310 290 -310 {lab=VDD}
N 290 -310 290 -260 {lab=VDD}
N 270 -260 290 -260 {lab=VDD}
N 270 -210 310 -210 {lab=QBb}
N 190 -210 210 -210 {lab=QB}
N 210 -540 230 -540 {lab=QA}
N 210 -540 210 -440 {lab=QA}
N 210 -440 230 -440 {lab=QA}
N 270 -510 270 -470 {lab=QAb}
N 270 -440 290 -440 {lab=VSS}
N 290 -440 290 -390 {lab=VSS}
N 270 -390 290 -390 {lab=VSS}
N 270 -410 270 -390 {lab=VSS}
N 270 -390 270 -370 {lab=VSS}
N 270 -610 270 -570 {lab=VDD}
N 270 -590 290 -590 {lab=VDD}
N 290 -590 290 -540 {lab=VDD}
N 270 -540 290 -540 {lab=VDD}
N 270 -490 310 -490 {lab=QAb}
N 190 -490 210 -490 {lab=QA}
N 90 -700 130 -700 {lab=VDD}
N 90 -660 130 -660 {lab=VSS}
C {symbols/pfet_03v3.sym} 250 -260 0 0 {name=M3
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
C {symbols/nfet_03v3.sym} 250 -160 0 0 {name=M4
L=0.28u
W=0.36u
u
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
C {lab_wire.sym} 270 -330 0 0 {name=p2436 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 270 -90 0 0 {name=p2437 sig_type=std_logic lab=VSS}
C {opin.sym} 310 -210 0 0 {name=p2439 lab=QBb}
C {symbols/pfet_03v3.sym} 250 -540 0 0 {name=M35
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
C {symbols/nfet_03v3.sym} 250 -440 0 0 {name=M36
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
C {lab_wire.sym} 270 -610 0 0 {name=p2500 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 270 -370 0 0 {name=p2501 sig_type=std_logic lab=VSS}
C {opin.sym} 310 -490 0 0 {name=p2503 lab=QAb}
C {iopin.sym} 90 -700 2 0 {name=p2 lab=VDD}
C {iopin.sym} 90 -660 2 0 {name=p1 lab=VSS}
C {ipin.sym} 190 -490 0 0 {name=p3 lab=QA}
C {ipin.sym} 190 -210 0 0 {name=p4 lab=QB}
C {lab_wire.sym} 130 -700 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 130 -660 0 0 {name=p6 sig_type=std_logic lab=VSS}
