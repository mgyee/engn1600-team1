v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {ipin.sym} -100 10 0 0 {name=p1 lab=JMP}
C {ipin.sym} -100 -30 0 0 {name=p3 lab=BR}
C {iopin.sym} -100 -110 2 0 {name=p4 lab=VDD}
C {ipin.sym} -100 -10 0 0 {name=p6 lab=DISP[7..0]}
C {engn1600-team1/CAD6/sign_extend.sym} -50 310 0 0 {name=x1}
C {lab_pin.sym} 70 180 0 1 {name=p7 lab=VDD}
C {lab_pin.sym} 70 290 0 1 {name=p8 lab=VSS}
C {lab_pin.sym} 140 230 0 1 {name=p9 lab=DISP_SE}
C {lab_pin.sym} 0 230 0 0 {name=p10 lab=DISP7}
C {lab_pin.sym} 810 200 0 0 {name=p2 lab=DISP_SE*9,DISP[6..0]}
C {engn1600-team1/CAD6/2x1_mux.sym} 850 210 0 0 {name=x2[15..0]}
C {engn1600-team1/CAD6/inv.sym} 20 -230 0 0 {name=x8[15..0] kINV=1}
C {lab_pin.sym} 40 -270 0 1 {name=p11 lab=VDD}
C {lab_pin.sym} 110 -230 0 1 {name=p12 lab=BR[15..0]b}
C {lab_pin.sym} 40 -190 0 1 {name=p13 lab=VSS}
C {lab_pin.sym} 840 280 3 0 {name=p14 lab=BR}
C {lab_pin.sym} 860 270 3 0 {name=p15 lab=BR[15..0]b}
C {lab_pin.sym} 890 210 0 1 {name=p16 lab=B[15..0]}
C {lab_pin.sym} 840 140 1 0 {name=p17 lab=VDD}
C {lab_pin.sym} 860 150 3 1 {name=p18 lab=VSS}
C {lab_pin.sym} 810 220 0 0 {name=p19 lab=14*VSS,VDD,VSS}
C {engn1600-team1/CAD6/inv.sym} 20 -80 0 0 {name=x9[15..0] kINV=1}
C {lab_pin.sym} 40 -120 0 1 {name=p20 lab=VDD}
C {lab_pin.sym} 110 -80 0 1 {name=p21 lab=JMP[15..0]b}
C {lab_pin.sym} 40 -40 0 1 {name=p22 lab=VSS}
C {engn1600-team1/CAD6/2x1_mux.sym} 450 0 0 0 {name=x5[15..0]}
C {lab_pin.sym} 410 10 0 0 {name=p23 lab=DEST[15..0]}
C {lab_pin.sym} 440 70 3 0 {name=p24 lab=JMP}
C {lab_pin.sym} 460 60 3 0 {name=p25 lab=JMP[15..0]b}
C {lab_pin.sym} 440 -70 1 0 {name=p27 lab=VDD}
C {lab_pin.sym} 460 -60 3 1 {name=p28 lab=VSS}
C {lab_pin.sym} 410 -10 0 0 {name=p29 lab=PCB[15..0]}
C {lab_pin.sym} 0 -230 0 0 {name=p26 lab=BR}
C {lab_pin.sym} 0 -80 0 0 {name=p30 lab=JMP}
C {opin.sym} -100 110 2 0 {name=p31 lab=PC[15..0]}
C {ipin.sym} -100 50 0 0 {name=p32 lab=SI}
C {ipin.sym} -100 70 0 0 {name=p33 lab=SE}
C {lab_pin.sym} 490 0 2 0 {name=p34 lab=PCJ[15..0]}
C {ipin.sym} -100 30 0 0 {name=p35 lab=DEST[15..0]}
C {engn1600-team1/CAD6/dff.sym} 850 0 0 0 {name=x3[15..0]}
C {lab_pin.sym} 850 60 0 0 {name=p36 lab=CLK[15..0]b}
C {lab_pin.sym} 800 -20 0 0 {name=p37 lab=PC_NEXT[15..0]}
C {lab_pin.sym} 900 -20 0 1 {name=p38 lab=PC[15..0]}
C {lab_pin.sym} 800 0 0 0 {name=p40 lab=RSTn}
C {lab_pin.sym} 850 -60 0 0 {name=p41 lab=CLK}
C {lab_pin.sym} 800 20 0 0 {name=p42 lab=VDD}
C {lab_pin.sym} 900 20 0 1 {name=p43 lab=VSS}
C {iopin.sym} -100 -90 2 0 {name=p44 lab=VSS}
C {ipin.sym} -100 -70 0 0 {name=p45 lab=CLK}
C {engn1600-team1/CAD6/inv.sym} 20 -380 0 0 {name=x1[15..0] kINV=1}
C {lab_pin.sym} 40 -420 0 1 {name=p46 lab=VDD}
C {lab_pin.sym} 110 -380 0 1 {name=p47 lab=CLK[15..0]b}
C {lab_pin.sym} 40 -340 0 1 {name=p48 lab=VSS}
C {lab_pin.sym} 0 -380 0 0 {name=p49 lab=CLK}
C {ipin.sym} -100 -50 0 0 {name=p50 lab=RSTn}
C {engn1600-team1/CAD6/full_adder.sym} 1190 70 0 0 {name=x4[15..0] kSUMb=1 kTS=1}
C {lab_pin.sym} 1260 -60 0 1 {name=p39 lab=VDD}
C {lab_pin.sym} 1260 70 0 1 {name=p51 lab=VSS}
C {lab_pin.sym} 1190 20 0 0 {name=p54 lab=COUT[14..0],VSS}
C {lab_pin.sym} 1330 -10 0 1 {name=p55 lab=PCB[15..0]b}
C {lab_pin.sym} 1330 10 0 1 {name=p56 lab=COUT[15..0]}
C {engn1600-team1/CAD6/inv.sym} 1620 0 0 0 {name=x6[15..0] kINV=1}
C {lab_pin.sym} 1640 -40 0 1 {name=p57 lab=VDD}
C {lab_pin.sym} 1640 40 0 1 {name=p59 lab=VSS}
C {lab_pin.sym} 1190 -20 2 1 {name=p52 lab=PC[15..0]}
C {lab_pin.sym} 1190 0 2 1 {name=p53 lab=B[15..0]}
C {lab_pin.sym} 1600 0 2 1 {name=p60 lab=PCB[15..0]b}
C {lab_pin.sym} 1710 0 0 1 {name=p58 lab=PCB[15..0]}
C {lab_pin.sym} 810 -260 0 0 {name=p61 lab=PCJ[15..0]}
C {engn1600-team1/CAD6/2x1_mux.sym} 850 -250 0 0 {name=x7[15..0]}
C {lab_pin.sym} 840 -180 3 0 {name=p62 lab=SE}
C {lab_pin.sym} 860 -190 3 0 {name=p63 lab=SE[15..0]b}
C {lab_pin.sym} 890 -250 0 1 {name=p64 lab=PC_NEXT[15..0]}
C {lab_pin.sym} 840 -320 1 0 {name=p65 lab=VDD}
C {lab_pin.sym} 860 -310 3 1 {name=p66 lab=VSS}
C {lab_pin.sym} 810 -240 0 0 {name=p67 lab=PC[14..0],SI}
C {engn1600-team1/CAD6/inv.sym} 20 80 0 0 {name=x10[15..0] kINV=1}
C {lab_pin.sym} 40 40 0 1 {name=p68 lab=VDD}
C {lab_pin.sym} 110 80 0 1 {name=p69 lab=SE[15..0]b}
C {lab_pin.sym} 40 120 0 1 {name=p70 lab=VSS}
C {lab_pin.sym} 0 80 0 0 {name=p71 lab=SE}
C {opin.sym} -100 90 2 0 {name=p72 lab=SO}
C {lab_pin.sym} -140 200 3 1 {name=p73 lab=PC15}
C {lab_pin.sym} -140 260 1 1 {name=p74 lab=SO}
C {res.sym} -140 230 0 0 {name=R1
value=0
footprint=1206
device=resistor
m=1}
