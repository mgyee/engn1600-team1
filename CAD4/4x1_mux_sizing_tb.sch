v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/code_shown.sym} 120 350 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {engn1600-team1/CAD4/4x1_mux.sym} 0 0 0 0 {name=x1 kMUX="'kMUX'"}
C {lab_pin.sym} -30 90 3 0 {name=p1 lab=SA}
C {lab_pin.sym} -60 -30 0 0 {name=p2 lab=A}
C {lab_pin.sym} -10 80 3 0 {name=p3 lab=SB}
C {lab_pin.sym} -60 -10 0 0 {name=p4 lab=B}
C {lab_pin.sym} 0 -80 0 1 {name=p5 lab=VSS}
C {lab_pin.sym} 60 0 0 1 {name=p6 lab=Y}
C {lab_pin.sym} 10 70 3 0 {name=p7 lab=SC}
C {lab_pin.sym} -60 10 0 0 {name=p8 lab=C}
C {lab_pin.sym} 30 60 3 0 {name=p9 lab=SD}
C {lab_pin.sym} -60 30 0 0 {name=p10 lab=D}
C {vsource.sym} -330 -110 0 0 {name=VA value=0 savecurrent=false}
C {vsource.sym} -280 -110 0 0 {name=VB value=0 savecurrent=false}
C {gnd.sym} -330 -80 0 0 {name=l1 lab=GND}
C {gnd.sym} -280 -80 0 0 {name=l2 lab=GND}
C {vsource.sym} -330 0 0 0 {name=VSA value=0 savecurrent=false}
C {vsource.sym} -280 0 0 0 {name=VSB value=0 savecurrent=false}
C {gnd.sym} -330 30 0 0 {name=l3 lab=GND}
C {gnd.sym} -280 30 0 0 {name=l4 lab=GND}
C {vsource.sym} -330 110 0 0 {name=VSS value=0 savecurrent=false}
C {gnd.sym} -330 140 0 0 {name=l5 lab=GND}
C {lab_pin.sym} -330 -140 0 0 {name=p11 lab=A}
C {lab_pin.sym} -280 -140 0 0 {name=p12 lab=B}
C {lab_pin.sym} -330 -30 0 0 {name=p13 lab=SA}
C {lab_pin.sym} -280 -30 0 0 {name=p14 lab=SB}
C {lab_pin.sym} -330 80 0 0 {name=p15 lab=VSS}
C {vsource.sym} -230 -110 0 0 {name=VC value=0 savecurrent=false}
C {vsource.sym} -180 -110 0 0 {name=VD value=0 savecurrent=false}
C {gnd.sym} -230 -80 0 0 {name=l7 lab=GND}
C {gnd.sym} -180 -80 0 0 {name=l8 lab=GND}
C {lab_pin.sym} -230 -140 0 0 {name=p16 lab=C}
C {lab_pin.sym} -180 -140 0 0 {name=p17 lab=D}
C {vsource.sym} -230 0 0 0 {name=VSC value=0 savecurrent=false}
C {vsource.sym} -180 0 0 0 {name=VSD value=0 savecurrent=false}
C {gnd.sym} -230 30 0 0 {name=l9 lab=GND}
C {gnd.sym} -180 30 0 0 {name=l10 lab=GND}
C {lab_pin.sym} -230 -30 0 0 {name=p18 lab=SC}
C {lab_pin.sym} -180 -30 0 0 {name=p19 lab=SD}
C {devices/code_shown.sym} -1460 -580 0 0 {name=NGSPICE only_toplevel=true
value="
.param kMUX=4

.control
save all

** Define input signals
let f = 1e8
let T = 1/f
let PW = T/2

let QT = T/4
let TQT = QT * 3
let DT = T * 2
let TT = T * 3
let INF = T * 8

let tstop = 4 * T
let tstep = 0.001 * T

let NTRIALS = 20

compose kVALS start=1 stop=4 lin=$&NTRIALS
compose TRISE start=0 stop=0 lin=$&NTRIALS
compose TFALL start=0 stop=0 lin=$&NTRIALS

let idx = 0
while idx < NTRIALS
	let kVAL = kVALS[idx]
	alterparam kMUX = $&kVAL
	reset

	alter @VA[PULSE] = [ 0 3.3 $&QT 0 0 $&PW $&T 0 ]
	alter @VB[DC] = 0
	**[ 0 3.3 $&PW 0 0 $&PW $&T 0 ]
	alter @VC[DC] = 0
	**[ 0 3.3 $&TQT 0 0 $&PW $&T 0 ]
	alter @VD[DC] = 0
	**[ 0 3.3 $&T 0 0 $&PW $&T 0 ]

	alter @VSA[PWL] = [ 0 3.3 $&T 3.3 $&T 0 ]
	alter @VSB[PWL] = [ 0 0 $&T 0 $&T 3.3 $&DT 3.3 $&DT 0 ]
	alter @VSC[PWL] = [ 0 0 $&DT 0 $&DT 3.3 $&TT 3.3 $&TT 0 ]
	alter @VSD[PWL] = [ 0 0 $&TT 0 $&TT 3.3 ]

	tran $&tstep $&tstop

	meas tran TPHL TRIG V(A) VAL=1.65 RISE=1 TARG V(Y) VAL=1.65 RISE=1
	meas tran TPLH TRIG V(A) VAL=1.65 RISE=1 TARG V(Y) VAL=1.65 RISE=1 
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
