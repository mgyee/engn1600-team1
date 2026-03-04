v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 880 -280 880 -260 {lab=VDD}
N 530 -250 530 -230 {lab=VDD}
N 530 -170 530 -150 {lab=GND}
N 790 -180 810 -180 {lab=CIN}
N 790 -180 790 -160 {lab=CIN}
N 730 -200 810 -200 {lab=B}
N 730 -200 730 -160 {lab=B}
N 670 -220 670 -160 {lab=A}
N 670 -220 810 -220 {lab=A}
N 670 -100 670 -80 {lab=GND}
N 730 -100 730 -80 {lab=GND}
N 790 -100 790 -80 {lab=GND}
N 1020 -140 1020 -120 {lab=GND}
N 1020 -210 1020 -200 {lab=SUMb}
N 600 -250 600 -230 {lab=VSS}
N 600 -170 600 -150 {lab=GND}
N 880 -130 880 -110 {lab=VSS}
N 980 -210 1020 -210 {lab=SUMb}
N 950 -190 970 -190 {lab=COUT}
N 970 -190 970 -180 {lab=COUT}
N 950 -210 980 -210 {lab=SUMb}
N 970 -120 970 -100 {lab=GND}
C {devices/code_shown.sym} 30 -140 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 30 -930 0 0 {name=NGSPICE only_toplevel=true
value="

.control
save all

alter @VA[DC] = 3.3
alter @VB[DC] = 0.0


* 0 to 2ns: Hold at 0.0V
* 2ns to 2.001ns: Instant 1ps Rise to 3.3V
* 2.001ns to 7ns: Hold at 3.3V
* 7ns to 7.001ns: Instant 1ps Fall to 0.0V
* 7.001ns to 10ns: Hold at 0.0V
alter @VCIN[DC] = 0.0
alter @VCIN[PWL] = [ 0 0  2n 0  2.001n 3.3  7n 3.3  7.001n 0  10n 0 ]

* RUN SIMULATION

* Run for 10ns. Step size is 1ps to accurately measure the instant edges.
tran 1p 10n

* MEASURE DELAYS (50% to 50% VDD)

* CIN Instant Rising Edge at 2ns

meas tran tpd_CIN_rise_SUM_fall TRIG v(CIN) VAL=1.65 RISE=1 TARG v(SUMb) VAL=1.65 RISE=1
meas tran tpd_CIN_rise_COUT_rise TRIG v(CIN) VAL=1.65 RISE=1 TARG v(COUT) VAL=1.65 RISE=1

* CIN Instant Falling Edge at 7ns

meas tran tpd_CIN_fall_SUM_rise TRIG v(CIN) VAL=1.65 FALL=1 TARG v(SUMb) VAL=1.65 FALL=1
meas tran tpd_CIN_fall_COUT_fall TRIG v(CIN) VAL=1.65 FALL=1 TARG v(COUT) VAL=1.65 FALL=1

* CALCULATE WORST-CASE DELAY
let tpd_max_sum = max(tpd_CIN_rise_SUM_fall, tpd_CIN_fall_SUM_rise)
let tpd_max_cout = max(tpd_CIN_rise_COUT_rise, tpd_CIN_fall_COUT_fall)
print tpd_max_sum
print tpd_max_cout

plot A B CIN+4 SUMb+8 COUT+12
write full_adder_pd_tb.raw
.endc
"}
C {vsource.sym} 530 -200 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} 670 -130 0 0 {name=VA value=3.3 savecurrent=false}
C {vsource.sym} 730 -130 0 0 {name=VB value=3.3 savecurrent=false}
C {vsource.sym} 790 -130 0 0 {name=VCIN value=3.3 savecurrent=false}
C {gnd.sym} 530 -150 0 0 {name=l3 lab=GND}
C {gnd.sym} 670 -80 0 0 {name=l4 lab=GND}
C {gnd.sym} 730 -80 0 0 {name=l5 lab=GND}
C {gnd.sym} 790 -80 0 0 {name=l6 lab=GND}
C {lab_wire.sym} 1010 -210 0 0 {name=p1 sig_type=std_logic lab=SUMb}
C {lab_wire.sym} 800 -180 0 0 {name=p2 sig_type=std_logic lab=CIN}
C {lab_wire.sym} 800 -200 0 0 {name=p3 sig_type=std_logic lab=B}
C {lab_wire.sym} 800 -220 0 0 {name=p4 sig_type=std_logic lab=A}
C {capa.sym} 1020 -170 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1020 -120 0 0 {name=l2 lab=GND}
C {vsource.sym} 600 -200 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} 600 -150 0 0 {name=l10 lab=GND}
C {lab_wire.sym} 530 -240 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 600 -240 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 880 -280 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 880 -110 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {engn1600-team1/CAD4/full_adder.sym} 810 -130 0 0 {name=x1}
C {capa.sym} 970 -150 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 970 -190 0 0 {name=p9 sig_type=std_logic lab=COUT}
C {gnd.sym} 970 -100 0 0 {name=l1 lab=GND}
