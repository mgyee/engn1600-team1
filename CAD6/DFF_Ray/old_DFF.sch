v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -110 -0 -40 -0 {lab=D}
N 90 -0 130 -0 {lab=N1}
N 130 -120 130 -0 {lab=N1}
N 130 0 210 -0 {lab=N1}
N 210 -0 230 -0 {lab=N1}
N 320 -0 570 -0 {lab=N2}
N 570 -110 570 -0 {lab=N2}
N 530 -111.25 570 -111.25 {lab=N2}
N 570 -111.25 570 -110 {lab=N2}
N 803.75 0 877.5 -0 {lab=N3}
N 876.25 26.25 876.25 66.25 {lab=RSTn}
N 876.25 26.25 877.5 26.25 {lab=RSTn}
N 877.5 20 877.5 26.25 {lab=RSTn}
N 967.5 8.75 1047.5 8.75 {lab=N4}
N 1047.5 0 1047.5 8.75 {lab=N4}
N 1010 -130 1080 -130 {lab=N4}
N 1080 -130 1080 -0 {lab=N4}
N 1047.5 -0 1080 0 {lab=N4}
N 1080 0 1195 -0 {lab=N4}
N 1195 -0 1195 80 {lab=N4}
N 1282.5 80 1320 80 {lab=#net1}
N 1407.5 80 1516.25 80 {lab=Qb}
N 1282.5 0 1356.25 0 {lab=Q}
N 347.5 120 417.5 120 {lab=cbar}
N 198.75 120 260 120 {lab=CLK}
N 380 120 380 167.5 {lab=cbar}
N 505 120 558.75 120 {lab=c}
N 711.25 20 711.25 41.25 {lab=c}
N 711.25 -50 711.25 -30 {lab=cbar}
N 930 -100 930 -80 {lab=cbar}
N 930 -190 930 -168.75 {lab=c}
N 40 30 40 48.75 {lab=cbar}
N 40 -61.25 40 -38.75 {lab=c}
N 220 -171.25 220 -150 {lab=cbar}
N 220 -100 220 -75 {lab=c}
N 488.75 -81.25 488.75 -60 {lab=VDD}
N 488.75 -183.75 488.75 -160 {lab=VSS}
N 970 -81.25 970 -56.25 {lab=VSS}
N 970 -203.75 970 -180 {lab=VDD}
N 1235 110 1235 125 {lab=VSS}
N 1235 50 1258.75 50 {lab=VDD}
N 1235 28.75 1257.5 28.75 {lab=VSS}
N 1235 -57.5 1235 -30 {lab=VDD}
N 1360 25 1360 50 {lab=VDD}
N 1360 108.75 1360 131.25 {lab=VSS}
N 918.75 48.75 918.75 72.5 {lab=VSS}
N 918.75 -58.75 918.75 -31.25 {lab=VDD}
N -0 -73.75 -0 -50 {lab=VDD}
N -0 50 -0 76.25 {lab=VSS}
N 270 30 270 50 {lab=VSS}
N 270 -50 270 -30 {lab=VDD}
N 300 150 300 170 {lab=VSS}
N 300 70 300 90 {lab=VDD}
N 457.5 150 457.5 170 {lab=VSS}
N 457.5 70 457.5 90 {lab=VDD}
N -120 -180 -76.25 -180 {lab=VDD}
N -121.25 -138.75 -80 -138.75 {lab=VSS}
N 530 -131.25 568.75 -131.25 {lab=RSTn}
N 568.75 -131.25 570 -131.25 {lab=RSTn}
N 570 -180 570 -131.25 {lab=RSTn}
N 197.5 -90 197.5 -72.5 {lab=VSS}
N 791.25 -0 803.75 -0 {lab=N3}
N 570 -0 631.25 -0 {lab=N2}
N 688.75 31.25 688.75 56.25 {lab=VSS}
N 688.125 -85 688.125 -31.25 {lab=VDD}
N 315 0 320 0 {lab=N2}
N 86.25 -0 90 -0 {lab=N1}
N 170.625 -0 170.625 60 {lab=N1}
N 600 -40 600 -0 {lab=N2}
N 840 -30 840 -0 {lab=N3}
N 840 -130 840 -30 {lab=N3}
N 790 -130 840 -130 {lab=N3}
N 1120 -0 1120 35 {lab=N4}
N 196.875 -165 196.875 -151.875 {lab=VDD}
N 840 -130 881.25 -130 {lab=N3}
N 130 -120 140 -120 {lab=N1}
N 300 -120 440 -120 {lab=#net2}
C {ipin.sym} -110 0 0 0 {name=p1 lab=D}
C {CAD2/TGATE.sym} 220 -120 0 0 {name=x2}
C {CAD2/INV.sym} 250 0 0 0 {name=x3}
C {CAD2/NAND2.sym} 510 -120 2 0 {name=x4}
C {ipin.sym} 570 -180 1 0 {name=p2 lab=RSTn}
C {CAD2/TGATE.sym} 711.25 0 0 0 {name=x5}
C {CAD2/NAND2.sym} 897.5 8.75 0 0 {name=x6}
C {CAD2/TRI_STATE_INV.sym} -20 0 0 0 {name=x1}
C {CAD2/TRI_STATE_INV.sym} 990 -130 0 1 {name=x7}
C {CAD2/INV.sym} 1215 0 0 0 {name=x8}
C {CAD2/INV.sym} 1215 80 0 0 {name=x9}
C {CAD2/INV.sym} 1340 80 0 0 {name=x10}
C {opin.sym} 1356.25 0 0 0 {name=p4 lab=Q}
C {opin.sym} 1516.25 80 0 0 {name=p5 lab=Qb}
C {iopin.sym} 198.75 120 2 0 {name=p6 lab=CLK}
C {CAD2/INV.sym} 280 120 0 0 {name=x11}
C {CAD2/INV.sym} 437.5 120 0 0 {name=x12}
C {lab_wire.sym} 380 167.5 0 0 {name=p7 sig_type=std_logic lab=cbar}
C {lab_wire.sym} 558.75 120 0 0 {name=p8 sig_type=std_logic lab=c}
C {lab_wire.sym} 40 48.75 0 0 {name=p9 sig_type=std_logic lab=cbar}
C {lab_wire.sym} 220 -170 0 0 {name=p10 sig_type=std_logic lab=cbar}
C {lab_wire.sym} 711.25 -40 0 0 {name=p11 sig_type=std_logic lab=cbar}
C {lab_wire.sym} 930 -81.25 0 0 {name=p12 sig_type=std_logic lab=cbar}
C {lab_wire.sym} 930 -190 0 0 {name=p13 sig_type=std_logic lab=c}
C {lab_wire.sym} 711.25 41.25 0 0 {name=p14 sig_type=std_logic lab=c}
C {lab_wire.sym} 220 -75 0 0 {name=p15 sig_type=std_logic lab=c}
C {lab_wire.sym} 40 -61.25 0 0 {name=p16 sig_type=std_logic lab=c}
C {iopin.sym} -120 -180 2 0 {name=p17 lab=VDD}
C {iopin.sym} -120 -138.75 2 0 {name=p18 lab=VSS}
C {lab_wire.sym} -80 -138.75 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -76.25 -180 0 0 {name=p20 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 488.75 -60 0 0 {name=p21 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 970 -203.75 0 0 {name=p22 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1235 -57.5 0 0 {name=p23 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1360 25 0 0 {name=p24 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1258.75 50 0 0 {name=p25 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 457.5 70 0 0 {name=p26 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 300 70 0 0 {name=p27 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 270 -50 0 0 {name=p28 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 0 -73.75 0 0 {name=p29 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 488.75 -183.75 0 0 {name=p30 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 970 -56.25 0 0 {name=p31 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 918.75 72.5 0 0 {name=p32 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 918.75 -58.125 0 0 {name=p33 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1235 125 0 0 {name=p34 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1257.5 28.75 0 0 {name=p35 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1360 131.25 0 0 {name=p36 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 0 76.25 0 0 {name=p37 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 270 50 0 0 {name=p38 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 300 170 0 0 {name=p39 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 457.5 170 0 0 {name=p40 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 570 -140 0 0 {name=p3 sig_type=std_logic lab=RSTn}
C {lab_wire.sym} 876.25 66.25 0 0 {name=p41 sig_type=std_logic lab=RSTn}
C {lab_wire.sym} 197.5 -72.5 0 0 {name=p42 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 196.875 -165 0 0 {name=p43 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 688.125 -65 0 0 {name=p44 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 688.75 56.25 0 0 {name=p45 sig_type=std_logic lab=VSS}
C {opin.sym} 170.625 60 1 0 {name=p47 lab=N1}
C {opin.sym} 600 -40 0 0 {name=p46 lab=N2}
C {opin.sym} 790 -130 2 0 {name=p48 lab=N3}
C {opin.sym} 1120 35 1 0 {name=p49 lab=N4}
