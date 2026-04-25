v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -60 -260 -60 -200 {lab=VSS}
N -60 -340 -60 -280 {lab=VDD}
N 120 -260 120 -200 {lab=VSS}
N 120 -340 120 -280 {lab=VDD}
N -60 -80 -60 -20 {lab=VSS}
N -60 -160 -60 -100 {lab=VDD}
N 120 -80 120 -20 {lab=VSS}
N 120 -160 120 -100 {lab=VDD}
N -60 100 -60 160 {lab=VSS}
N -60 20 -60 80 {lab=VDD}
N 120 100 120 160 {lab=VSS}
N 120 20 120 80 {lab=VDD}
N -60 280 -60 340 {lab=VSS}
N -60 200 -60 260 {lab=VDD}
N 120 280 120 340 {lab=VSS}
N 120 200 120 260 {lab=VDD}
C {lab_pin.sym} -100 -310 2 1 {name=p4 lab=S0}
C {lab_pin.sym} -60 -200 0 0 {name=p8 lab=VSS}
C {engn1600-team1/CAD5/shifter_2x1_mux_cmos.sym} -310 -130 2 1 {name=x2[3..0] kI="'kI'" kYb="'kYb'" kY="'kY'"}
C {lab_pin.sym} -320 -200 1 0 {name=p14 lab=SEL}
C {lab_pin.sym} -300 -190 1 0 {name=p15 lab=SELb}
C {lab_pin.sym} -320 -60 3 0 {name=p17 lab=VDD}
C {lab_pin.sym} -300 -70 1 1 {name=p18 lab=VSS}
C {lab_pin.sym} -270 -120 0 1 {name=p16 lab=S[3..0]}
C {lab_pin.sym} -270 -140 0 1 {name=p19 lab=S[3..0]b}
C {engn1600-team1/CAD5/shifter_inv.sym} -330 80 0 0 {name=x1 kSELb="'kSELb'"}
C {lab_pin.sym} -240 80 2 0 {name=p21 lab=SELb}
C {lab_pin.sym} -310 40 0 1 {name=p22 lab=VDD}
C {lab_pin.sym} -310 120 0 1 {name=p23 lab=VSS}
C {symbols/pfet_03v3.sym} -80 -310 2 1 {name=M6
L=0.28u
W=0.36u
nf=1
m=16
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} -80 -230 0 0 {name=M4
L=0.28u
W=0.36u
nf=1
m=16
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_pin.sym} -100 -230 2 1 {name=p66 lab=S0}
C {lab_pin.sym} -60 -340 2 1 {name=p7 lab=VDD}
C {lab_pin.sym} 80 -310 2 1 {name=p3 lab=S0b}
C {lab_pin.sym} 120 -200 0 0 {name=p5 lab=VSS}
C {symbols/pfet_03v3.sym} 100 -310 2 1 {name=M1
L=0.28u
W=0.36u
nf=1
m=16
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 100 -230 0 0 {name=M2
L=0.28u
W=0.36u
nf=1
m=16
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 80 -230 2 1 {name=p9 lab=S0b}
C {lab_pin.sym} 120 -340 2 1 {name=p24 lab=VDD}
C {lab_pin.sym} -100 -130 2 1 {name=p25 lab=S1}
C {lab_pin.sym} -60 -20 0 0 {name=p26 lab=VSS}
C {symbols/pfet_03v3.sym} -80 -130 2 1 {name=M7
L=0.28u
W=0.36u
nf=1
m=16
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} -80 -50 0 0 {name=M8
L=0.28u
W=0.36u
nf=1
m=16
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_pin.sym} -100 -50 2 1 {name=p27 lab=S1}
C {lab_pin.sym} -60 -160 2 1 {name=p28 lab=VDD}
C {lab_pin.sym} 80 -130 2 1 {name=p29 lab=S1b}
C {lab_pin.sym} 120 -20 0 0 {name=p30 lab=VSS}
C {symbols/pfet_03v3.sym} 100 -130 2 1 {name=M9
L=0.28u
W=0.36u
nf=1
m=16
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 100 -50 0 0 {name=M10
L=0.28u
W=0.36u
nf=1
m=16
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 80 -50 2 1 {name=p32 lab=S1b}
C {lab_pin.sym} 120 -160 2 1 {name=p33 lab=VDD}
C {lab_pin.sym} -100 50 2 1 {name=p38 lab=S2}
C {lab_pin.sym} -60 160 0 0 {name=p39 lab=VSS}
C {symbols/pfet_03v3.sym} -80 50 2 1 {name=M13
L=0.28u
W=0.36u
nf=1
m=16
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} -80 130 0 0 {name=M14
L=0.28u
W=0.36u
nf=1
m=16
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_pin.sym} -100 130 2 1 {name=p40 lab=S2}
C {lab_pin.sym} -60 20 2 1 {name=p41 lab=VDD}
C {lab_pin.sym} 80 50 2 1 {name=p42 lab=S2b}
C {lab_pin.sym} 120 160 0 0 {name=p43 lab=VSS}
C {symbols/pfet_03v3.sym} 100 50 2 1 {name=M15
L=0.28u
W=0.36u
nf=1
m=16
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 100 130 0 0 {name=M16
L=0.28u
W=0.36u
nf=1
m=16
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 80 130 2 1 {name=p44 lab=S2b}
C {lab_pin.sym} 120 20 2 1 {name=p46 lab=VDD}
C {lab_pin.sym} -100 230 2 1 {name=p53 lab=S3}
C {lab_pin.sym} -60 340 0 0 {name=p54 lab=VSS}
C {symbols/pfet_03v3.sym} -80 230 2 1 {name=M19
L=0.28u
W=0.36u
nf=1
m=16
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} -80 310 0 0 {name=M20
L=0.28u
W=0.36u
nf=1
m=16
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_pin.sym} -100 310 2 1 {name=p55 lab=S3}
C {lab_pin.sym} -60 200 2 1 {name=p56 lab=VDD}
C {lab_pin.sym} 80 230 2 1 {name=p57 lab=S3b}
C {lab_pin.sym} 120 340 0 0 {name=p58 lab=VSS}
C {symbols/pfet_03v3.sym} 100 230 2 1 {name=M21
L=0.28u
W=0.36u
nf=1
m=16
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 100 310 0 0 {name=M22
L=0.28u
W=0.36u
nf=1
m=16
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 80 310 2 1 {name=p59 lab=S3b}
C {lab_pin.sym} 120 200 2 1 {name=p60 lab=VDD}
C {devices/code_shown.sym} -100 430 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 450 -380 0 0 {name=s1 only_toplevel=false value="
** k VALUE SWEEPS

.param kI=6.973684
.param kYb=6.973684
.param kY=7.236842
.param kSELb=6

.control

** Define input signals
let f = 1e8
let T = 1/f
let PW = T/2

let DT = T * 2
let QT = T/4
let FQT = QT * 5

let tstop = 3.5 * T
let tstep = 0.001 * T
let NTRIALS = 20

compose kVALS start=5 stop=10 lin=$&NTRIALS
compose TRISE start=0 stop=0 lin=$&NTRIALS
compose TFALL start=0 stop=0 lin=$&NTRIALS

let idx = 0
while idx < NTRIALS
    let kVAL = kVALS[idx]
    alterparam kY = $&kVAL
    ** alterparam kI = $&kVAL
    ** alterparam kYb = $&kVAL
    ** alterparam kSELb = $&kVAL
    reset

    ** SEL (0 -> 1 -> 0)
    alter @VSEL[PULSE] = [ 0 3.3 $&T 0 0 $&T $&DT 0 ]

    tran $&tstep $&tstop
    meas tran TPLH TRIG V(SEL) VAL=1.65 RISE=1 TARG V(S0) VAL=1.65 FALL=1
    meas tran TPHL TRIG V(SEL) VAL=1.65 FALL=1 TARG V(S0) VAL=1.65 RISE=1
    let TRISE[idx] = $&TPLH
    let TFALL[idx] = $&TPHL
    let idx = idx + 1
end

plot TRISE vs kVALS
plot TFALL vs kVALS

let minval = minimum(TRISE)
let idxR = 0
while TRISE[idxR] > minval
  let idxR = idxR + 1
end
print kVALS[idxR]

let minval = minimum(TFALL)
let idxF = 0
while TFALL[idxF] > minval
  let idxF = idxF + 1
end
print kVALS[idxF]

.endc
"}
C {devices/vsource.sym} -530 0 1 0 {name=VVDD value=3.3}
C {devices/lab_pin.sym} -500 0 2 0 {name=pVDD lab=VDD}
C {devices/gnd.sym} -560 0 1 0 {name=gVDD}
C {devices/vsource.sym} -530 -100 1 0 {name=VVSS value=0}
C {devices/lab_pin.sym} -500 -100 2 0 {name=pVSS lab=VSS}
C {devices/gnd.sym} -560 -100 1 0 {name=gVSS}
C {devices/vsource.sym} -530 100 1 0 {name=VSEL value=0}
C {devices/lab_pin.sym} -500 100 2 0 {name=pSEL lab=SEL}
C {devices/gnd.sym} -560 100 1 0 {name=gSEL0}
C {devices/lab_pin.sym} -350 80 0 0 {name=pSEL1 lab=SEL}
C {devices/vsource.sym} -530 -200 1 0 {name=VA value=3.3}
C {devices/lab_pin.sym} -500 -200 2 0 {name=pVA lab=A}
C {devices/gnd.sym} -560 -200 1 0 {name=gVDD1}
C {devices/vsource.sym} -530 -300 1 0 {name=VB value=0}
C {devices/lab_pin.sym} -500 -300 2 0 {name=pVB lab=B}
C {devices/gnd.sym} -560 -300 1 0 {name=gVSS1}
C {devices/lab_pin.sym} -350 -120 0 0 {name=pVA1 lab=A}
C {devices/lab_pin.sym} -350 -140 0 0 {name=pVB1 lab=B}
