v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 90 -80 90 -10 {lab=#net1}
N 90 -10 140 -10 {lab=#net1}
N 90 10 140 10 {lab=#net2}
N 90 10 90 80 {lab=#net2}
N 90 240 140 240 {lab=#net3}
N 140 30 140 240 {lab=#net3}
N 140 -240 140 -30 {lab=#net4}
N 90 -240 140 -240 {lab=#net4}
C {engn1600-team1/CAD4/nand4.sym} 0 -240 0 0 {name=x1}
C {engn1600-team1/CAD4/nand4.sym} 0 -80 0 0 {name=x2}
C {engn1600-team1/CAD4/nand4.sym} 0 80 0 0 {name=x3}
C {engn1600-team1/CAD4/nand4.sym} 0 240 0 0 {name=x4}
C {engn1600-team1/CAD4/nor4.sym} 200 0 0 0 {name=x5}
C {lab_pin.sym} 0 -180 0 1 {name=p1 lab=VSS}
C {lab_pin.sym} 0 -300 0 1 {name=p2 lab=VDD}
C {lab_pin.sym} -60 -270 0 0 {name=p3 lab=IN0}
C {lab_pin.sym} -60 -250 0 0 {name=p4 lab=IN1}
C {lab_pin.sym} -60 -230 0 0 {name=p5 lab=IN2}
C {lab_pin.sym} -60 -210 0 0 {name=p6 lab=IN3}
C {lab_pin.sym} 0 -20 0 1 {name=p7 lab=VSS}
C {lab_pin.sym} 0 -140 0 1 {name=p8 lab=VDD}
C {lab_pin.sym} -60 -110 0 0 {name=p9 lab=IN4}
C {lab_pin.sym} -60 -90 0 0 {name=p10 lab=IN5}
C {lab_pin.sym} -60 -70 0 0 {name=p11 lab=IN6}
C {lab_pin.sym} -60 -50 0 0 {name=p12 lab=IN7}
C {lab_pin.sym} 0 140 0 1 {name=p13 lab=VSS}
C {lab_pin.sym} 0 20 0 1 {name=p14 lab=VDD}
C {lab_pin.sym} -60 50 0 0 {name=p15 lab=IN8}
C {lab_pin.sym} -60 70 0 0 {name=p16 lab=IN9}
C {lab_pin.sym} -60 90 0 0 {name=p17 lab=IN10}
C {lab_pin.sym} -60 110 0 0 {name=p18 lab=IN11}
C {lab_pin.sym} 0 300 0 1 {name=p19 lab=VSS}
C {lab_pin.sym} 0 180 0 1 {name=p20 lab=VDD}
C {lab_pin.sym} -60 210 0 0 {name=p21 lab=IN12}
C {lab_pin.sym} -60 230 0 0 {name=p22 lab=IN13}
C {lab_pin.sym} -60 250 0 0 {name=p23 lab=IN14}
C {lab_pin.sym} -60 270 0 0 {name=p24 lab=IN15}
C {lab_pin.sym} 200 60 0 1 {name=p26 lab=VSS}
C {lab_pin.sym} 200 -60 0 1 {name=p27 lab=VDD}
C {iopin.sym} -160 0 2 0 {name=p28 lab=VSS}
C {iopin.sym} -160 -20 2 0 {name=p29 lab=VDD}
C {ipin.sym} -160 20 0 0 {name=p30 lab=IN[15..0]}
C {opin.sym} 290 0 0 0 {name=p25 lab=OUT}
