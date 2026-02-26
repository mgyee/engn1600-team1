v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -18.125 -110.625 -18.125 -85.625 {lab=vdd}
N -200.625 24.0625 -145.3125 24.0625 {lab=D}
N -778.125 24.375 -778.125 40.3125 {lab=GND}
N -200.625 84.0625 -200.625 98.75 {lab=GND}
N -778.125 -65 -778.125 -35.625 {lab=WECLK}
N -671.5625 34.0625 -671.5625 50 {lab=GND}
N -671.5625 -55.3125 -671.5625 -25.9375 {lab=WECLKb}
N -564.375 260.3125 -564.375 276.25 {lab=GND}
N -564.375 170.9375 -564.375 200.3125 {lab=vdd}
N -441.875 261.5625 -441.875 277.5 {lab=GND}
N -441.875 172.1875 -441.875 201.5625 {lab=vss}
N -119.375 -55.9375 -88.125 -55.9375 {lab=WECLK}
N -118.4375 -35.9375 -88.125 -35.9375 {lab=WECLKb}
N -123.75 -15.9375 -88.125 -15.9375 {lab=RA}
N -142.5 4.0625 -88.125 4.0625 {lab=RB}
N -145.3125 24.0625 -88.125 24.0625 {lab=D}
N -570.3125 23.75 -570.3125 39.6875 {lab=GND}
N -570.3125 -65.625 -570.3125 -36.25 {lab=RA}
N -489.6875 24.375 -489.6875 40.3125 {lab=GND}
N -489.6875 -65 -489.6875 -35.625 {lab=RB}
N 51.875 -25.9375 93.75 -25.9375 {lab=GND}
N 51.875 -45.9375 171.875 -45.9375 {lab=QAb}
N -18.125 54.0625 -18.125 91.875 {lab=vss}
N 283.125 -102.5 283.125 -82.5 {lab=VDD}
N 283.125 27.5 283.125 47.5 {lab=VSS}
N 313.125 -102.5 333.125 -102.5 {lab=VDD}
N 313.125 47.5 333.125 47.5 {lab=VSS}
N 233.125 -102.5 253.125 -102.5 {lab=VDD}
N 233.125 47.5 253.125 47.5 {lab=VSS}
N 283.125 -162.5 283.125 -142.5 {lab=QAb}
N 283.125 87.5 283.125 107.5 {lab=QAb}
C {lab_wire.sym} -18.125 85.625 0 0 {name=p16 sig_type=std_logic lab=vss}
C {lab_wire.sym} -18.125 -100.625 0 0 {name=p17 sig_type=std_logic lab=vdd}
C {devices/code_shown.sym} 463.75 -526.25 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 445.625 -390.3125 0 0 {name=s1 only_toplevel=false value="

.param kQb = 1
.control 
save all

let fsig = 1e8
let tper = 1/fsig
let tfr = 0.01*tper
let ton = 0.5*tper - 2*tfr

let tstop = 3*tper
let tstep = 0.001 * tper

let Rvals = vector(20)
let rise_times = vector(20)
let i = 0

let rval = 1
let Rstep = 0.2
let Rstop = 5

while rval <= Rstop
	
	alterparam kQb = $&rval
	reset
	
	* WECLK pulse
	alter @v1[DC] = 0
	alter @v1[PULSE] = [ 0 3.3 1n $&tfr $&tfr $&ton $&tper 0 ]

	*WECLKb pulse
	alter @v2[DC] = 0
	alter @v2[PULSE] = [ 3.3 0 1n $&tfr $&tfr $&ton $&tper 0 ]

	*RA pulse
	alter @v6[DC] = 0
	alter @v6[PULSE] = [ 0 3.3 3.03n $&tfr $&tfr $&ton $&tper 0 ]

	*D pulse
	*rising alter @v3[PWL] = [ 0 3.3 8n 3.3 8.001n 0 ]
	alter @v3[PWL] = [ 0 0 8n 3.3 8.001n 3.3 ]
	
	
	
	tran $&tstep $&tstop

	meas tran t1 TRIG V(RA) VAL=1.65 RISE=2 TARG V(QAb) VAL=1.5 FALL=1

	let Rvals[i] = rval
	let rise_times[i] = t1
	let rval = rval + Rstep
	let i = i + 1
	
	echo kQb=$&rval t1=$&t1
end
.endc

"}
C {vsource.sym} -778.125 -5.625 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} -200.625 54.0625 0 0 {name=V3 value=3.3 savecurrent=false}
C {gnd.sym} -200.625 98.75 0 0 {name=l1 lab=GND}
C {gnd.sym} -778.125 40.3125 0 0 {name=l3 lab=GND}
C {lab_wire.sym} -778.125 -51.25 0 0 {name=p1 sig_type=std_logic lab=WECLK}
C {lab_wire.sym} -671.5625 -46.5625 0 0 {name=p2 sig_type=std_logic lab=WECLKb
}
C {lab_wire.sym} -154.6875 24.0625 0 0 {name=p7 sig_type=std_logic lab=D}
C {lab_wire.sym} 130.9375 -45.9375 0 0 {name=p8 sig_type=std_logic lab=QAb
}
C {vsource.sym} -671.5625 4.0625 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} -671.5625 50 0 0 {name=l2 lab=GND}
C {vsource.sym} -564.375 230.3125 0 0 {name=V4 value=3.3 savecurrent=false}
C {gnd.sym} -564.375 276.25 0 0 {name=l4 lab=GND}
C {lab_wire.sym} -564.375 184.6875 0 0 {name=p5 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -441.875 180.9375 0 0 {name=p6 sig_type=std_logic lab=vss}
C {vsource.sym} -441.875 231.5625 0 0 {name=V5 value=0 savecurrent=false}
C {gnd.sym} -441.875 277.5 0 0 {name=l5 lab=GND}
C {engn1600-team1/CAD3/slave_latch.sym} -68.125 34.0625 0 0 {name=x1 kQb="'kQb'"}
C {lab_wire.sym} -106.25 -55.9375 0 0 {name=p3 sig_type=std_logic lab=WECLK}
C {lab_wire.sym} -103.75 -35.9375 0 0 {name=p4 sig_type=std_logic lab=WECLKb
}
C {vsource.sym} -570.3125 -6.25 0 0 {name=V6 value=3.3 savecurrent=false}
C {gnd.sym} -570.3125 39.6875 0 0 {name=l6 lab=GND}
C {lab_wire.sym} -570.3125 -51.875 0 0 {name=p9 sig_type=std_logic lab=RA}
C {vsource.sym} -489.6875 -5.625 0 0 {name=V7 value=0 savecurrent=false}
C {gnd.sym} -489.6875 40.3125 0 0 {name=l7 lab=GND}
C {lab_wire.sym} -489.6875 -51.25 0 0 {name=p10 sig_type=std_logic lab=RB}
C {lab_wire.sym} -118.75 -15.9375 0 0 {name=p12 sig_type=std_logic lab=RA}
C {lab_wire.sym} -127.1875 4.0625 0 0 {name=p13 sig_type=std_logic lab=RB}
C {symbols/pfet_03v3.sym} 283.125 -122.5 1 0 {name=M21
L=0.28u
W="'kQb*0.72u'"
nf=1
m=15
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 283.125 67.5 3 0 {name=M22
L=0.28u
W="'kQb*0.36u'"
nf=1
m=15
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_wire.sym} 283.125 -82.5 0 0 {name=p74 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 283.125 -162.5 0 0 {name=p75 sig_type=std_logic lab=QAb}
C {lab_wire.sym} 283.125 107.5 0 0 {name=p76 sig_type=std_logic lab=QAb}
C {lab_wire.sym} 233.125 47.5 0 0 {name=p77 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 333.125 47.5 0 0 {name=p78 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 283.125 27.5 0 0 {name=p79 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 233.125 -102.5 0 0 {name=p80 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 333.125 -102.5 0 0 {name=p81 sig_type=std_logic lab=VDD}
C {gnd.sym} 93.75 -25.9375 0 0 {name=l8 lab=GND}
