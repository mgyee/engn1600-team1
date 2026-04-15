v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -80 -0 -40 -0 {lab=D}
N 260 -160 320 -160 {lab=#net1}
N 240 -0 460 -0 {lab=#net2}
N 840 -180 840 -0 {lab=#net3}
N 651.25 -180 711.25 -180 {lab=#net4}
N 840 -0 930 -0 {lab=#net3}
N 880 -0 880 110 {lab=#net3}
N 880 110 930 110 {lab=#net3}
N 1010 110 1070 110 {lab=#net5}
N 1010 -0 1090 -0 {lab=Q}
N 1150 110 1220 110 {lab=Qb}
N -250 10 -210 10 {lab=VSS}
N -250 -30 -210 -30 {lab=VDD}
N -340 100 -300 100 {lab=CLK}
N -0 -90 -0 -50 {lab=VDD}
N 203.125 -225.625 203.125 -191.875 {lab=VDD}
N 368.75 -225 368.75 -200 {lab=VDD}
N 800 -253.75 800 -228.75 {lab=VDD}
N 970 -53.75 970 -28.75 {lab=VDD}
N 970 55 970 80 {lab=VDD}
N 1110 56.25 1110 81.25 {lab=VDD}
N 701.25 -55 701.25 -30 {lab=VDD}
N 516.875 -55 516.875 -30 {lab=VDD}
N 200 -53.75 200 -28.75 {lab=VDD}
N 0 49.375 0 68.75 {lab=VSS}
N 202.5 -130 202.5 -108.75 {lab=VSS}
N 368.75 -121.25 368.75 -100 {lab=VSS}
N 517.5 30 517.5 51.25 {lab=VSS}
N 701.25 47.5 701.25 68.75 {lab=VSS}
N 800 -132.5 800 -111.25 {lab=VSS}
N 970 30 991.25 30 {lab=VSS}
N 970 140 991.25 140 {lab=VSS}
N 1110 138.75 1110 160 {lab=VSS}
N 200 29.375 200 48.75 {lab=VSS}
N -220 100 -140 100 {lab=cbar}
N -60 100 20 100 {lab=c}
N 40 20 40 60 {lab=cbar}
N 40 -77.5 40 -37.5 {lab=c}
N 180 -280 180 -180 {lab=cbar}
N 180 -140 180 -100 {lab=c}
N 540 20 540 80 {lab=c}
N 540 -80 540 -20 {lab=cbar}
N 760 -160 760 -120 {lab=cbar}
N 760 -275 760 -215 {lab=c}
N -100 130 -100 170 {lab=VSS}
N -100 40 -100 70 {lab=VDD}
N -260 40 -260 70 {lab=VDD}
N -260 130 -260 160 {lab=VSS}
N 751.25 8.75 840 8.75 {lab=#net3}
N 840 -0 840 8.75 {lab=#net3}
N 650 -180 651.25 -180 {lab=#net4}
N 640 -180 640 -0 {lab=#net4}
N 411.25 -8.75 425 -8.75 {lab=#net2}
N 411.25 -8.75 411.25 -0 {lab=#net2}
N 80 -0 160 -0 {lab=#net6}
N 100 -160 100 -0 {lab=#net6}
N 620 -0 640 0 {lab=#net4}
N 650 -0 660 -0 {lab=#net4}
N 620 90 650 90 {lab=RSTn}
N 640 -180 650 -180 {lab=#net4}
N 443.75 -260 443.75 -148.75 {lab=RSTn}
N 443.75 -260 450 -260 {lab=RSTn}
N 640 -0 650 -0 {lab=#net4}
N 660 20 660 90 {lab=RSTn}
N 650 90 660 90 {lab=RSTn}
N 410 -168.75 425 -168.75 {lab=#net2}
N 410 -148.75 443.75 -148.75 {lab=RSTn}
N 425 -168.75 461.25 -168.75 {lab=#net2}
N 461.25 -168.75 461.25 -10 {lab=#net2}
N 461.25 -10 461.25 -7.5 {lab=#net2}
N 425 -7.5 461.25 -7.5 {lab=#net2}
N 425 -8.75 425 -7.5 {lab=#net2}
C {ipin.sym} -80 0 0 0 {name=p1 lab=D}
C {CAD2/TRI_STATE_INV.sym} -20 0 0 0 {name=x1}
C {CAD2/TGATE.sym} 180 -160 0 1 {name=x2}
C {CAD2/INV.sym} 180 0 0 0 {name=x3}
C {CAD2/NAND2.sym} 390 -160 0 1 {name=x4}
C {CAD2/TGATE.sym} 540 0 0 0 {name=x5}
C {ipin.sym} 450 -260 2 0 {name=p2 lab=RSTn}
C {CAD2/NAND2.sym} 680 8.75 0 0 {name=x6}
C {CAD2/TRI_STATE_INV.sym} 820 -180 0 1 {name=x7}
C {CAD2/INV.sym} 950 0 0 0 {name=x8}
C {CAD2/INV.sym} 950 110 0 0 {name=x9}
C {CAD2/INV.sym} 1090 110 0 0 {name=x10}
C {opin.sym} 1090 0 0 0 {name=p3 lab=Q}
C {opin.sym} 1220 110 0 0 {name=p4 lab=Qb}
C {lab_wire.sym} 420 -220 0 0 {name=p5 sig_type=std_logic lab=RSTn}
C {lab_wire.sym} 620 90 0 0 {name=p6 sig_type=std_logic lab=RSTn}
C {iopin.sym} -340 100 2 0 {name=p7 lab=CLK}
C {iopin.sym} -250 -30 2 0 {name=p8 lab=VDD}
C {iopin.sym} -250 10 2 0 {name=p9 lab=VSS}
C {lab_wire.sym} -210 -30 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -210 10 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 0 -90 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 203.125 -225.625 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 200 -53.75 0 0 {name=p14 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 368.75 -225 0 0 {name=p15 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 800 -253.75 0 0 {name=p16 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 970 -53.75 0 0 {name=p18 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1110 56.25 0 0 {name=p19 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 970 55 0 0 {name=p20 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 516.875 -55 0 0 {name=p21 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 0 68.75 0 0 {name=p22 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 200 48.75 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 517.5 51.25 0 0 {name=p24 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 800 -111.25 0 0 {name=p26 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 991.25 30 0 0 {name=p27 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 991.25 140 0 0 {name=p28 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1110 160 0 0 {name=p29 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 368.75 -100 0 0 {name=p30 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 202.5 -108.75 0 0 {name=p31 sig_type=std_logic lab=VSS}
C {CAD2/INV.sym} -280 100 0 0 {name=x11}
C {CAD2/INV.sym} -120 100 0 0 {name=x12}
C {lab_wire.sym} -180 100 0 0 {name=p32 sig_type=std_logic lab=cbar}
C {lab_wire.sym} 0 100 0 0 {name=p33 sig_type=std_logic lab=c}
C {lab_wire.sym} 40 60 0 0 {name=p34 sig_type=std_logic lab=cbar}
C {lab_wire.sym} 40 -77.5 0 0 {name=p35 sig_type=std_logic lab=c}
C {lab_wire.sym} 180 -280 0 0 {name=p36 sig_type=std_logic lab=cbar}
C {lab_wire.sym} 180 -100 0 0 {name=p37 sig_type=std_logic lab=c}
C {lab_wire.sym} 540 80 0 0 {name=p38 sig_type=std_logic lab=c}
C {lab_wire.sym} 540 -80 0 0 {name=p39 sig_type=std_logic lab=cbar}
C {lab_wire.sym} 760 -275 0 0 {name=p40 sig_type=std_logic lab=c}
C {lab_wire.sym} 760 -120 0 0 {name=p41 sig_type=std_logic lab=cbar}
C {lab_wire.sym} -100 170 0 0 {name=p46 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -260 160 0 0 {name=p47 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -100 40 0 0 {name=p48 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -260 40 0 0 {name=p49 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 701.25 68.75 0 0 {name=p50 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 701.25 -55 0 0 {name=p51 sig_type=std_logic lab=VDD}
