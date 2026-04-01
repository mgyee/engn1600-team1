v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -410 -50 -410 -30 {lab=VDD}
N -410 30 -410 50 {lab=GND}
N -270 30 -270 50 {lab=GND}
N -200 30 -200 50 {lab=GND}
N -340 -50 -340 -30 {lab=VSS}
N -340 30 -340 50 {lab=GND}
N -270 -50 -270 -30 {lab=SEL}
N -200 -50 -200 -30 {lab=SELb}
C {devices/code_shown.sym} -80 170 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 600 -770 0 0 {name=NGSPICE only_toplevel=true
value="
.param kI=2.5
.param kYb=1.8787875
.param kY=2.1578285

.control

** Define input signals
let f = 1e8
let T = 1/f
let PW = T/2

let tstop = 2 * T
let tstep = 0.001 * T
let NTRIALS = 100

compose kVALS start=2 stop=2.25 lin=$&NTRIALS
compose TRISE start=0 stop=0 lin=$&NTRIALS
compose TFALL start=0 stop=0 lin=$&NTRIALS

let idx = 0
while idx < NTRIALS
	let kVAL = kVALS[idx]
	alterparam kY = $&kVAL
	reset

	** Switch SEL
	alter @VSEL[PWL] = [ 0 0 $&PW 0 $&PW 3.3 $&T 3.3 $&T 0 ]
	alter @VSELb[PWL] = [ 0 3.3 $&PW 3.3 $&PW 0 $&T 0 $&T 3.3 ]

	tran $&tstep $&tstop
	meas tran TPLH TRIG V(SEL) VAL=1.65 RISE=1 TARG V(Y) VAL=1.65 RISE=1
	meas tran TPHL TRIG V(SEL) VAL=1.65 FALL=1 TARG V(Y) VAL=1.65 FALL=1
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
C {vsource.sym} -410 0 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} -270 0 0 0 {name=VSEL value=0 savecurrent=false}
C {vsource.sym} -200 0 0 0 {name=VSELb value=0 savecurrent=false}
C {gnd.sym} -410 50 0 0 {name=l3 lab=GND}
C {gnd.sym} -270 50 0 0 {name=l4 lab=GND}
C {gnd.sym} -200 50 0 0 {name=l5 lab=GND}
C {vsource.sym} -340 0 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} -340 50 0 0 {name=l10 lab=GND}
C {lab_wire.sym} -410 -50 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -340 -50 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {engn1600-team1/CAD4/2x1_mux_cmos.sym} 0 0 0 0 {name=x1 kI="'kI'" kYb="'kYb'" kY="'kY'"}
C {lab_pin.sym} -10 70 3 0 {name=p8 lab=SEL}
C {lab_pin.sym} 10 60 3 0 {name=p10 lab=SELb
}
C {lab_pin.sym} -10 -70 1 0 {name=p12 lab=VDD}
C {lab_pin.sym} 10 -60 3 1 {name=p13 lab=VSS}
C {lab_pin.sym} -40 10 0 0 {name=p7 lab=VDD}
C {lab_pin.sym} -40 -10 2 1 {name=p14 lab=VSS}
C {lab_wire.sym} -270 -50 0 0 {name=p2 sig_type=std_logic lab=SEL}
C {lab_wire.sym} -200 -50 0 0 {name=p3 sig_type=std_logic lab=SELb}
C {lab_pin.sym} 390 -70 1 0 {name=p16 lab=VDD}
C {lab_pin.sym} 410 -60 3 1 {name=p17 lab=VSS}
C {lab_pin.sym} 360 -10 2 1 {name=p20 lab=VSS}
C {lab_pin.sym} 360 10 2 1 {name=p11 lab=VSS}
C {engn1600-team1/CAD4/2x1_mux.sym} 200 0 0 0 {name=x3[3..0]}
C {lab_pin.sym} 40 -10 0 1 {name=p9 lab=Y}
C {lab_pin.sym} 40 10 0 1 {name=p15 lab=Yb}
C {lab_pin.sym} 160 -10 2 1 {name=p18 lab=VSS}
C {lab_pin.sym} 160 10 2 1 {name=p19 lab=VSS}
C {lab_pin.sym} 190 -70 1 0 {name=p24 lab=VDD}
C {lab_pin.sym} 210 -60 3 1 {name=p25 lab=VSS}
C {lab_pin.sym} 190 70 1 1 {name=p1 lab=Y}
C {lab_pin.sym} 210 60 1 1 {name=p4 lab=Yb}
C {lab_pin.sym} 390 70 1 1 {name=p21 lab=Y}
C {lab_pin.sym} 410 60 1 1 {name=p22 lab=Yb}
C {engn1600-team1/CAD4/2x1_mux_cmos.sym} 400 0 0 0 {name=x2 kI="'kI'" kYb="'kYb'" kY="'kY'"}
