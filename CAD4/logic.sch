v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 210 10 210 70 {lab=#net1}
N 210 -70 210 -10 {lab=NAND}
N 60 70 100 70 {lab=NOR}
N 60 -70 210 -70 {lab=NAND}
N 310 0 350 0 {lab=XNOR}
N 460 0 480 0 {lab=XOR}
C {iopin.sym} -130 -20 2 0 {name=p1 lab=VSS}
C {iopin.sym} -130 -50 2 0 {name=p2 lab=VDD}
C {ipin.sym} -130 10 0 0 {name=p3 lab=A}
C {ipin.sym} -130 40 0 0 {name=p4 lab=B}
C {opin.sym} 80 -70 3 0 {name=p12 lab=NAND}
C {opin.sym} 80 70 1 0 {name=p13 lab=NOR}
C {engn1600-team1/CAD4/alu_nand2.sym} 0 -70 0 0 {name=x1}
C {engn1600-team1/CAD4/alu_inv.sym} 120 70 0 0 {name=x3}
C {engn1600-team1/CAD4/alu_nor2.sym} 0 70 0 0 {name=x2}
C {lab_pin.sym} 0 -110 0 1 {name=p5 lab=VDD}
C {lab_pin.sym} -40 -80 0 0 {name=p7 lab=A}
C {lab_pin.sym} -40 -60 0 0 {name=p8 lab=B}
C {lab_pin.sym} 0 -30 0 1 {name=p9 lab=VSS}
C {lab_pin.sym} -130 -50 0 1 {name=p10 lab=VDD}
C {lab_pin.sym} -130 -20 0 1 {name=p11 lab=VSS}
C {lab_pin.sym} -130 10 2 0 {name=p15 lab=A}
C {lab_pin.sym} -130 40 2 0 {name=p16 lab=B}
C {lab_pin.sym} 0 30 0 1 {name=p6 lab=VDD}
C {lab_pin.sym} -40 60 0 0 {name=p18 lab=A}
C {lab_pin.sym} -40 80 0 0 {name=p19 lab=B}
C {lab_pin.sym} 0 110 0 1 {name=p20 lab=VSS}
C {engn1600-team1/CAD4/alu_nand2.sym} 250 0 0 0 {name=x4}
C {lab_pin.sym} 250 -40 0 1 {name=p17 lab=VDD}
C {lab_pin.sym} 250 40 0 1 {name=p22 lab=VSS}
C {lab_pin.sym} 140 30 0 1 {name=p21 lab=VDD}
C {lab_pin.sym} 140 110 0 1 {name=p23 lab=VSS}
C {opin.sym} 330 0 1 0 {name=p24 lab=XNOR}
C {engn1600-team1/CAD4/alu_inv.sym} 370 0 0 0 {name=x6}
C {opin.sym} 480 0 0 0 {name=p28 lab=XOR}
C {lab_pin.sym} 390 -40 0 1 {name=p29 lab=VDD}
C {lab_pin.sym} 390 40 0 1 {name=p30 lab=VSS}
