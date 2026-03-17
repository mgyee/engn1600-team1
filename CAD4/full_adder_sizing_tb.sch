v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -350 -50 -350 -30 {lab=VDD}
N -350 30 -350 50 {lab=GND}
N -90 20 -70 20 {lab=CIN}
N -90 20 -90 40 {lab=CIN}
N -150 0 -70 0 {lab=B}
N -150 0 -150 40 {lab=B}
N -210 -20 -210 40 {lab=A}
N -210 -20 -70 -20 {lab=A}
N -210 100 -210 120 {lab=GND}
N -150 100 -150 120 {lab=GND}
N -90 100 -90 120 {lab=GND}
N 140 70 140 90 {lab=GND}
N -280 -50 -280 -30 {lab=VSS}
N -280 30 -280 50 {lab=GND}
N 100 -10 140 -10 {lab=SUMb}
N 70 10 90 10 {lab=COUT}
N 70 -10 100 -10 {lab=SUMb}
N 90 90 90 110 {lab=GND}
N 90 10 90 30 {lab=COUT}
N 140 -10 140 10 {lab=SUMb}
C {devices/code_shown.sym} -220 250 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 280 -740 0 0 {name=NGSPICE only_toplevel=true
value="
.param kSUMb=1
.param kTS=1

.control
save all

** input signal
let fsig = 1k
let tper = 1/fsig
let tfr = 0.01*tper
let ton = 0.5*tper-2*tfr

let tper2 = 2*tper
let ton2 = 0.5*tper2-2*tfr

let tper4 = 4*tper
let ton4 = 0.5*tper4-2*tfr

** transient params
let tstop = 4*tper
let tstep = 0.001*tper

let NTRIALS = 20

compose kVALS start=1 stop=4 lin=$&NTRIALS
compose TRISE start=0 stop=0 lin=$&NTRIALS
compose TFALL start=0 stop=0 lin=$&NTRIALS

let idx = 0
while idx < NTRIALS
	let kVAL = kVALS[idx]
	alterparam kSUMb = $&kVAL
	reset

	** sources
	alter @VCIN[DC] = 3.3
	** alter @VCIN[PULSE] = [ 0 3.3 0 $&tfr $&tfr $&ton $&tper 0 ]

	alter @VB[DC] = 0.0
	alter @VB[PULSE] = [ 0 3.3 0 $&tfr $&tfr $&ton2 $&tper2 0 ]

	alter @VA[DC] = 0.0
	alter @VA[PULSE] = [ 3.3 0 0 $&tfr $&tfr $&ton4 $&tper4 0 ]

	tran $&tstep $&tstop

	meas tran TPHL TRIG V(B) VAL=1.65 FALL=1 TD=0.5m TARG V(SUMb) VAL=1.65 FALL=1 TD=0.5m
	meas tran TPLH TRIG V(B) VAL=1.65 FALL=1 TD=2.2m TARG V(SUMb) VAL=1.65 RISE=1 TD=2.2m
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
C {vsource.sym} -350 0 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} -210 70 0 0 {name=VA value=3.3 savecurrent=false}
C {vsource.sym} -150 70 0 0 {name=VB value=3.3 savecurrent=false}
C {vsource.sym} -90 70 0 0 {name=VCIN value=3.3 savecurrent=false}
C {gnd.sym} -350 50 0 0 {name=l3 lab=GND}
C {gnd.sym} -210 120 0 0 {name=l4 lab=GND}
C {gnd.sym} -150 120 0 0 {name=l5 lab=GND}
C {gnd.sym} -90 120 0 0 {name=l6 lab=GND}
C {lab_wire.sym} 140 -10 0 0 {name=p1 sig_type=std_logic lab=SUMb}
C {lab_wire.sym} -90 20 0 0 {name=p2 sig_type=std_logic lab=CIN}
C {lab_wire.sym} -150 0 0 0 {name=p3 sig_type=std_logic lab=B}
C {lab_wire.sym} -210 -20 0 0 {name=p4 sig_type=std_logic lab=A}
C {capa.sym} 140 40 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 140 90 0 0 {name=l2 lab=GND}
C {vsource.sym} -280 0 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} -280 50 0 0 {name=l10 lab=GND}
C {lab_wire.sym} -350 -50 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -280 -50 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {engn1600-team1/CAD4/full_adder.sym} -70 70 0 0 {name=x1 kSUMb="'kSUMb'" kTS="'kTS'"}
C {capa.sym} 90 60 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 90 10 0 0 {name=p9 sig_type=std_logic lab=COUT}
C {gnd.sym} 90 110 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 0 -60 0 1 {name=p7 lab=VDD}
C {lab_pin.sym} 0 70 0 1 {name=p8 lab=VSS}
