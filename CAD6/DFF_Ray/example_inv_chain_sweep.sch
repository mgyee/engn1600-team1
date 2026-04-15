v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 40 -80 40 -60 {lab=OUT1}
N -20 -130 -0 -130 {lab=IN}
N -20 -80 -20 -30 {lab=IN}
N -20 -30 0 -30 {lab=IN}
N 40 20 40 40 {lab=VSS}
N 40 -30 60 -30 {lab=VSS}
N 60 -30 60 20 {lab=VSS}
N 40 20 60 20 {lab=VSS}
N 40 -180 40 -160 {lab=VDD}
N 40 -130 60 -130 {lab=VDD}
N 60 -180 60 -130 {lab=VDD}
N 40 -180 60 -180 {lab=VDD}
N -60 -80 -20 -80 {lab=IN}
N 40 -80 180 -80 {lab=OUT1}
N 240 -80 240 -60 {lab=OUT2}
N 180 -130 200 -130 {lab=OUT1}
N 180 -80 180 -30 {lab=OUT1}
N 180 -30 200 -30 {lab=OUT1}
N 240 20 240 40 {lab=VSS}
N 240 -30 260 -30 {lab=VSS}
N 260 -30 260 20 {lab=VSS}
N 240 20 260 20 {lab=VSS}
N 240 -180 240 -160 {lab=VDD}
N 240 -130 260 -130 {lab=VDD}
N 260 -180 260 -130 {lab=VDD}
N 240 -180 260 -180 {lab=VDD}
N 440 -80 440 -60 {lab=OUT3}
N 380 -130 400 -130 {lab=OUT2}
N 380 -80 380 -30 {lab=OUT2}
N 380 -30 400 -30 {lab=OUT2}
N 440 20 440 40 {lab=VSS}
N 440 -30 460 -30 {lab=VSS}
N 460 -30 460 20 {lab=VSS}
N 440 20 460 20 {lab=VSS}
N 440 -180 440 -160 {lab=VDD}
N 440 -130 460 -130 {lab=VDD}
N 460 -180 460 -130 {lab=VDD}
N 440 -180 460 -180 {lab=VDD}
N 440 -80 580 -80 {lab=OUT3}
N -180 40 -180 80 {lab=VSS}
N -180 140 -180 180 {lab=GND}
N -180 -60 -180 -20 {lab=VDD}
N -410 40 -410 80 {lab=VSS}
N -410 -60 -410 -20 {lab=IN}
N 240 -80 380 -80 {lab=OUT2}
N 40 0 40 20 {lab=VSS}
N 40 -200 40 -180 {lab=VDD}
N -20 -130 -20 -80 {lab=IN}
N 40 -100 40 -80 {lab=OUT1}
N 240 0 240 20 {lab=VSS}
N 240 -200 240 -180 {lab=VDD}
N 180 -130 180 -80 {lab=OUT1}
N 440 0 440 20 {lab=VSS}
N 440 -200 440 -180 {lab=VDD}
N 440 -100 440 -80 {lab=OUT3}
N 240 -100 240 -80 {lab=OUT2}
N 380 -130 380 -80 {lab=OUT2}
N 820 -80 820 -50 {lab=OUT4}
N 820 10 820 50 {lab=GND}
N 640 -80 640 -60 {lab=OUT4}
N 580 -130 600 -130 {lab=OUT3}
N 580 -80 580 -30 {lab=OUT3}
N 580 -30 600 -30 {lab=OUT3}
N 640 20 640 40 {lab=VSS}
N 640 -30 660 -30 {lab=VSS}
N 660 -30 660 20 {lab=VSS}
N 640 20 660 20 {lab=VSS}
N 640 -180 640 -160 {lab=VDD}
N 640 -130 660 -130 {lab=VDD}
N 660 -180 660 -130 {lab=VDD}
N 640 -180 660 -180 {lab=VDD}
N 640 -80 780 -80 {lab=OUT4}
N 440 -80 580 -80 {lab=OUT3}
N 640 0 640 20 {lab=VSS}
N 640 -200 640 -180 {lab=VDD}
N 640 -100 640 -80 {lab=OUT4}
N 580 -130 580 -80 {lab=OUT3}
N 780 -80 820 -80 {lab=OUT4}
C {devices/code_shown.sym} -70 200 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {symbols/nfet_03v3.sym} 20 -30 0 0 {name=M1
L=0.28u
W=0.50u
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 20 -130 0 0 {name=M2
L=0.28u
W=1.00u
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
C {lab_wire.sym} -30 -80 0 0 {name=p1 sig_type=std_logic lab=IN}
C {lab_wire.sym} 90 -80 0 0 {name=p2 sig_type=std_logic lab=OUT1}
C {lab_pin.sym} 40 -200 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 40 40 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {symbols/nfet_03v3.sym} 220 -30 0 0 {name=M3
L=0.28u
W=0.50u
nf=1
mult="'k'"
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 220 -130 0 0 {name=M4
L=0.28u
W=1.00u
nf=1
m="'k'"
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {lab_wire.sym} 290 -80 0 0 {name=p6 sig_type=std_logic lab=OUT2}
C {lab_pin.sym} 240 -200 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 240 40 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {symbols/nfet_03v3.sym} 420 -30 0 0 {name=M5
L=0.28u
W=0.5u
nf=1
m="'k**2'"
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 420 -130 0 0 {name=M6
L=0.28u
W=1u
nf=1
m="'k**2'"
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {lab_wire.sym} 490 -80 0 0 {name=p10 sig_type=std_logic lab=OUT3}
C {lab_pin.sym} 440 -200 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 440 40 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {vsource.sym} -180 110 0 0 {name=V1 value=0 savecurrent=false}
C {gnd.sym} -180 180 0 0 {name=l1 lab=GND}
C {vsource.sym} -180 10 0 0 {name=V2 value=3.3 savecurrent=false}
C {lab_wire.sym} -180 70 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -180 -40 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {vsource.sym} -410 10 0 0 {name=V3 value="PULSE(0 3.3 0 100p 100p 0.4n 1n)" savecurrent=false}
C {lab_wire.sym} -410 70 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -410 -40 0 0 {name=p14 sig_type=std_logic lab=IN}
C {devices/code_shown.sym} -70 300 0 0 {name=NGSPICE only_toplevel=true
value="
.param k=4
.control
  save all
  set kn=10
  compose ks      start=1 stop=10 lin=$kn
  compose tdeltas start=0 stop=0 lin=$kn

  let index = 0
  while index < $kn
    let kval = ks[index]
    print kval
    alterparam k = $&kval
    reset
    tran 1p 2n
    meas tran tdelta TRIG v(in) VAL=1.65 RISE=1 TARG v(out4) VAL=1.65 RISE=1
    * save scalar into vector slot
    let tdeltas[index] = $&tdelta
    let index = index + 1
  end

  print ks
  print tdeltas
  plot tdeltas vs ks
.endc
"}
C {capa.sym} 820 -20 0 0 {name=C1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 820 50 0 0 {name=l2 lab=GND}
C {symbols/nfet_03v3.sym} 620 -30 0 0 {name=M7
L=0.28u
W=0.50u
nf=1
m="'(k**3)'"
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 620 -130 0 0 {name=M8
L=0.28u
W=1.00u
nf=1
m="'(k**3)'"
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {lab_wire.sym} 690 -80 0 0 {name=p15 sig_type=std_logic lab=OUT4
}
C {lab_pin.sym} 640 -200 0 0 {name=p16 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 640 40 0 0 {name=p17 sig_type=std_logic lab=VSS}
