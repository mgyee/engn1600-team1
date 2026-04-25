v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 40 -10 40 10 {lab=OUT}
N 0 -40 0 40 {lab=IN}
N 40 -100 40 -70 {lab=VDD}
N 40 -90 60 -90 {lab=VDD}
N 60 -90 60 -40 {lab=VDD}
N 40 -40 60 -40 {lab=VDD}
N 40 -110 40 -100 {lab=VDD}
N 40 40 60 40 {lab=VSS}
N 60 40 60 90 {lab=VSS}
N 40 90 60 90 {lab=VSS}
N 40 70 40 110 {lab=VSS}
N 40 0 60 0 {lab=OUT}
C {symbols/pfet_03v3.sym} 20 -40 0 0 {name=M1
L=0.28u
W="'kSELb*0.72u'"
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
C {symbols/nfet_03v3.sym} 20 40 0 0 {name=M2
L=0.28u
W="'kSELb*0.36u'"
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
C {ipin.sym} 0 0 0 0 {name=p1 lab=IN}
C {opin.sym} 60 0 0 0 {name=p2 lab=OUT}
C {iopin.sym} 40 -110 3 0 {name=p3 lab=VDD}
C {iopin.sym} 40 110 1 0 {name=p4 lab=VSS}
C {code_shown.sym} -260 -190 0 0 {name=s1 only_toplevel=false value="
.param kSELb=1
"}
