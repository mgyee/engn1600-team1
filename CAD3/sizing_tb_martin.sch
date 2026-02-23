v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -38.125 -5.625 81.875 -5.625 {lab=vout}
N -108.125 -70.625 -108.125 -45.625 {lab=vdd}
N -108.125 94.375 -108.125 144.375 {lab=vss}
N 81.875 -51.875 101.875 -51.875 {lab=vout}
N 81.875 -51.875 81.875 48.125 {lab=vout}
N 81.875 48.125 101.875 48.125 {lab=vout}
N 141.875 48.125 161.875 48.125 {lab=vss}
N 161.875 48.125 161.875 98.125 {lab=vss}
N 141.875 98.125 161.875 98.125 {lab=vss}
N 141.875 78.125 141.875 98.125 {lab=vss}
N 141.875 98.125 141.875 118.125 {lab=vss}
N 141.875 -121.875 141.875 -81.875 {lab=vdd}
N 141.875 -101.875 161.875 -101.875 {lab=vdd}
N 161.875 -101.875 161.875 -51.875 {lab=vdd}
N 141.875 -51.875 161.875 -51.875 {lab=vdd}
N -233.4375 64.375 -178.125 64.375 {lab=D}
N -484.375 20.3125 -484.375 36.25 {lab=GND}
N -233.4375 124.375 -233.4375 139.0625 {lab=GND}
N -229.375 4.375 -178.125 4.375 {lab=WEMb}
N -212.8125 -15.625 -178.125 -15.625 {lab=WEM}
N -484.375 -69.0625 -484.375 -39.6875 {lab=WEM}
N -361.875 21.5625 -361.875 37.5 {lab=GND}
N -361.875 -67.8125 -361.875 -38.4375 {lab=WEMb}
N 160 -20 161.875 -51.875 {lab=vdd}
N 160 20 161.875 48.125 {lab=vss}
N 141.875 -21.875 160 -20 {lab=vdd}
N 141.875 18.125 160 20 {lab=vss}
N -474.375 210.3125 -474.375 226.25 {lab=GND}
N -474.375 120.9375 -474.375 150.3125 {lab=vdd}
N -351.875 211.5625 -351.875 227.5 {lab=GND}
N -351.875 122.1875 -351.875 151.5625 {lab=vss}
C {engn1600-team1/CAD3/master_latch.sym} -158.125 74.375 0 0 {name=x4 kN="'kN'"}
C {lab_wire.sym} 141.875 115.625 0 0 {name=p11 sig_type=std_logic lab=vss}
C {lab_wire.sym} -108.125 125.625 0 0 {name=p16 sig_type=std_logic lab=vss}
C {lab_wire.sym} -108.125 -60.625 0 0 {name=p17 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 141.875 -111.875 0 0 {name=p18 sig_type=std_logic lab=vdd}
C {symbols/pfet_03v3.sym} 121.875 -51.875 0 0 {name=M4
L=0.28u
W=0.72u
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
C {symbols/nfet_03v3.sym} 121.875 48.125 0 0 {name=M5
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
C {devices/code_shown.sym} 373.75 -486.25 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 354.6875 -350 0 0 {name=s1 only_toplevel=false value="

.param WN = 0.36u
.param kN = 4


.control 
save all

let fsig = 1e8
let tper = 1/fsig
let tfr = 0.01*tper
let ton = 0.5*tper - 2*tfr

let tstop = 2*tper
let tstep = 0.001 * tper

let Rvals = vector(10)
let rise_times = vector(10)
let i = 0

let rval = 1
let Rstep = 0.5
let Rstop = 5.5

while rval <= Rstop
	alterparam kN = $&rval
	reset
	
	alter @v3[DC] = 0
	alter @v3[PULSE] = [ 0 3.3 $&ton $&tfr $&tfr $&ton $&tper 0 ]
	tran $&tstep $&tstop

	meas tran t1 TRIG V(vout) VAL=0.3 RISE=1 TARG V(vout) VAL=0.4 RISE=1

	let Rvals[i] = rval
	let rise_times[i] = t1
	let rval = rval + Rstep
	let i = i + 1

	echo kN=$&rval t1=$&t1
end

display Rvals rise_times
plot rise_times vs Rvals

.endc

"}
C {vsource.sym} -484.375 -9.6875 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} -233.4375 94.375 0 0 {name=V3 value=3.3 savecurrent=false}
C {gnd.sym} -233.4375 139.0625 0 0 {name=l1 lab=GND}
C {gnd.sym} -484.375 36.25 0 0 {name=l3 lab=GND}
C {lab_wire.sym} -484.375 -55.3125 0 0 {name=p1 sig_type=std_logic lab=WEM}
C {lab_wire.sym} -361.875 -59.0625 0 0 {name=p2 sig_type=std_logic lab=WEMb}
C {lab_wire.sym} -196.5625 -15.625 0 0 {name=p3 sig_type=std_logic lab=WEM}
C {lab_wire.sym} -223.75 4.375 0 0 {name=p4 sig_type=std_logic lab=WEMb}
C {lab_wire.sym} -187.5 64.375 0 0 {name=p7 sig_type=std_logic lab=D}
C {lab_wire.sym} 43.125 -5.625 0 0 {name=p8 sig_type=std_logic lab=vout}
C {vsource.sym} -361.875 -8.4375 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} -361.875 37.5 0 0 {name=l2 lab=GND}
C {vsource.sym} -474.375 180.3125 0 0 {name=V4 value=3.3 savecurrent=false}
C {gnd.sym} -474.375 226.25 0 0 {name=l4 lab=GND}
C {lab_wire.sym} -474.375 134.6875 0 0 {name=p5 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -351.875 130.9375 0 0 {name=p6 sig_type=std_logic lab=vss}
C {vsource.sym} -351.875 181.5625 0 0 {name=V5 value=0 savecurrent=false}
C {gnd.sym} -351.875 227.5 0 0 {name=l5 lab=GND}
