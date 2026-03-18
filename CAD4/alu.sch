v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 470 180 490 180 {lab=#net1}
N 490 170 490 180 {lab=#net1}
N 490 170 510 170 {lab=#net1}
N 610 180 630 180 {lab=#net2}
C {iopin.sym} 50 -260 2 0 {name=p1 lab=VDD}
C {iopin.sym} 50 -240 2 0 {name=p2 lab=VSS}
C {ipin.sym} 50 -220 0 0 {name=p3 lab=A[15..0]}
C {ipin.sym} 50 -200 0 0 {name=p4 lab=B[15..0]}
C {ipin.sym} 50 -160 0 0 {name=p5 lab=SEL[1..0]}
C {opin.sym} 50 -140 2 0 {name=p6 lab=Y[15..0]}
C {opin.sym} 50 -120 2 0 {name=p7 lab=F}
C {opin.sym} 50 -100 2 0 {name=p8 lab=Z}
C {opin.sym} 50 -80 2 0 {name=p9 lab=N}
C {engn1600-team1/CAD4/full_adder.sym} 370 -700 0 0 {name=x1 kSUMb="'kSUMb'" kTS="'kTS'"}
C {ipin.sym} 50 -180 0 0 {name=p10 lab=CIN}
C {engn1600-team1/CAD4/full_adder.sym} 650 -700 0 0 {name=x2 kSUMb="'kSUMb'" kTS="'kTS'"}
C {engn1600-team1/CAD4/full_adder.sym} 930 -700 0 0 {name=x3 kSUMb="'kSUMb'" kTS="'kTS'"}
C {engn1600-team1/CAD4/full_adder.sym} 1210 -700 0 0 {name=x4 kSUMb="'kSUMb'" kTS="'kTS'"}
C {lab_pin.sym} 440 -830 0 1 {name=p11 lab=VDD}
C {lab_pin.sym} 440 -700 0 1 {name=p12 lab=VSS}
C {lab_pin.sym} 370 -790 0 0 {name=p13 lab=A0}
C {lab_pin.sym} 370 -770 0 0 {name=p14 lab=B0p}
C {lab_pin.sym} 370 -750 0 0 {name=p15 lab=CIN}
C {lab_pin.sym} 510 -780 0 1 {name=p16 lab=SUM0b}
C {lab_pin.sym} 720 -830 0 1 {name=p18 lab=VDD}
C {lab_pin.sym} 720 -700 0 1 {name=p19 lab=VSS}
C {lab_pin.sym} 650 -790 0 0 {name=p20 lab=A1}
C {lab_pin.sym} 650 -770 0 0 {name=p21 lab=B1p}
C {lab_pin.sym} 790 -780 0 1 {name=p23 lab=SUM1b}
C {lab_pin.sym} 1000 -830 0 1 {name=p25 lab=VDD}
C {lab_pin.sym} 1000 -700 0 1 {name=p26 lab=VSS}
C {lab_pin.sym} 930 -790 0 0 {name=p27 lab=A2}
C {lab_pin.sym} 930 -770 0 0 {name=p28 lab=B2p}
C {lab_pin.sym} 1070 -780 0 1 {name=p30 lab=SUM2b}
C {lab_pin.sym} 1280 -830 0 1 {name=p32 lab=VDD}
C {lab_pin.sym} 1280 -700 0 1 {name=p33 lab=VSS}
C {lab_pin.sym} 1210 -790 0 0 {name=p34 lab=A3}
C {lab_pin.sym} 1210 -770 0 0 {name=p35 lab=B3p}
C {lab_pin.sym} 1350 -780 0 1 {name=p37 lab=SUM3b}
C {engn1600-team1/CAD4/logic.sym} 440 -590 0 0 {name=x5}
C {lab_pin.sym} 440 -510 0 1 {name=p17 lab=VSS}
C {lab_pin.sym} 500 -600 0 1 {name=p22 lab=NOR0}
C {lab_pin.sym} 440 -670 0 1 {name=p24 lab=VDD}
C {lab_pin.sym} 500 -580 0 1 {name=p29 lab=XNOR0}
C {lab_pin.sym} 380 -600 0 0 {name=p31 lab=A0}
C {lab_pin.sym} 380 -580 0 0 {name=p36 lab=B0p}
C {lab_pin.sym} 500 -620 0 1 {name=p38 lab=NAND0}
C {engn1600-team1/CAD4/4x1_mux.sym} 440 -390 0 0 {name=x10[15..0]}
C {lab_pin.sym} 440 -470 0 1 {name=p39 lab=VSS}
C {lab_pin.sym} 500 -390 0 1 {name=p40 lab=Y[15..0]b}
C {lab_pin.sym} 380 -420 0 0 {name=p41 lab=SUM[15..0]b}
C {lab_pin.sym} 380 -380 0 0 {name=p42 lab=NOR[15..0]}
C {lab_pin.sym} 380 -360 0 0 {name=p43 lab=XNOR[15..0]}
C {lab_pin.sym} 380 -400 0 0 {name=p44 lab=NAND[15..0]}
C {engn1600-team1/CAD4/inv.sym} 400 -180 0 0 {name=x11[15..0]}
C {lab_pin.sym} 420 -140 0 1 {name=p45 lab=VSS}
C {lab_pin.sym} 420 -220 0 1 {name=p46 lab=VDD}
C {lab_pin.sym} 380 -180 0 0 {name=p47 lab=Y[15..0]b}
C {lab_pin.sym} 490 -180 0 1 {name=p48 lab=Y[15..0]}
C {engn1600-team1/CAD4/logic.sym} 720 -590 0 0 {name=x8}
C {lab_pin.sym} 720 -510 0 1 {name=p49 lab=VSS}
C {lab_pin.sym} 780 -600 0 1 {name=p50 lab=NOR1}
C {lab_pin.sym} 720 -670 0 1 {name=p51 lab=VDD}
C {lab_pin.sym} 780 -580 0 1 {name=p52 lab=XNOR1}
C {lab_pin.sym} 660 -600 0 0 {name=p53 lab=A1}
C {lab_pin.sym} 660 -580 0 0 {name=p54 lab=B1p}
C {lab_pin.sym} 780 -620 0 1 {name=p55 lab=NAND1}
C {engn1600-team1/CAD4/logic.sym} 1000 -590 0 0 {name=x11}
C {lab_pin.sym} 1000 -510 0 1 {name=p66 lab=VSS}
C {lab_pin.sym} 1060 -600 0 1 {name=p67 lab=NOR2}
C {lab_pin.sym} 1000 -670 0 1 {name=p68 lab=VDD}
C {lab_pin.sym} 1060 -580 0 1 {name=p69 lab=XNOR2}
C {lab_pin.sym} 940 -600 0 0 {name=p70 lab=A2}
C {lab_pin.sym} 940 -580 0 0 {name=p71 lab=B2p}
C {lab_pin.sym} 1060 -620 0 1 {name=p72 lab=NAND2}
C {engn1600-team1/CAD4/logic.sym} 1280 -590 0 0 {name=x14}
C {lab_pin.sym} 1280 -510 0 1 {name=p83 lab=VSS}
C {lab_pin.sym} 1340 -600 0 1 {name=p84 lab=NOR3}
C {lab_pin.sym} 1280 -670 0 1 {name=p85 lab=VDD}
C {lab_pin.sym} 1340 -580 0 1 {name=p86 lab=XNOR3}
C {lab_pin.sym} 1220 -600 0 0 {name=p87 lab=A3}
C {lab_pin.sym} 1220 -580 0 0 {name=p88 lab=B3p}
C {lab_pin.sym} 1340 -620 0 1 {name=p89 lab=NAND3}
C {lab_pin.sym} 510 -760 0 1 {name=p100 lab=COUT0}
C {lab_pin.sym} 650 -750 0 0 {name=p101 lab=COUT0}
C {lab_pin.sym} 790 -760 0 1 {name=p102 lab=COUT1}
C {lab_pin.sym} 930 -750 0 0 {name=p103 lab=COUT1}
C {lab_pin.sym} 1070 -760 0 1 {name=p104 lab=COUT2}
C {lab_pin.sym} 1210 -750 0 0 {name=p105 lab=COUT2}
C {lab_pin.sym} 1350 -760 0 1 {name=p106 lab=COUT3}
C {engn1600-team1/CAD4/logic_extended.sym} 1630 -1140 0 0 {name=x17}
C {engn1600-team1/CAD4/full_adder.sym} 1840 -1160 0 0 {name=x18 kSUMb="'kSUMb'" kTS="'kTS'"}
C {engn1600-team1/CAD4/full_adder.sym} 2120 -1160 0 0 {name=x19 kSUMb="'kSUMb'" kTS="'kTS'"}
C {engn1600-team1/CAD4/full_adder.sym} 2400 -1160 0 0 {name=x20 kSUMb="'kSUMb'" kTS="'kTS'"}
C {lab_pin.sym} 1910 -1290 0 1 {name=p107 lab=VDD}
C {lab_pin.sym} 1910 -1160 0 1 {name=p108 lab=VSS}
C {lab_pin.sym} 1840 -1250 0 0 {name=p109 lab=A5}
C {lab_pin.sym} 1840 -1230 0 0 {name=p110 lab=B5p}
C {lab_pin.sym} 1980 -1240 0 1 {name=p112 lab=SUM_05b}
C {lab_pin.sym} 2190 -1290 0 1 {name=p113 lab=VDD}
C {lab_pin.sym} 2190 -1160 0 1 {name=p114 lab=VSS}
C {lab_pin.sym} 2120 -1250 0 0 {name=p115 lab=A6}
C {lab_pin.sym} 2120 -1230 0 0 {name=p116 lab=B6p}
C {lab_pin.sym} 2260 -1240 0 1 {name=p117 lab=SUM_06b}
C {lab_pin.sym} 2470 -1290 0 1 {name=p118 lab=VDD}
C {lab_pin.sym} 2470 -1160 0 1 {name=p119 lab=VSS}
C {lab_pin.sym} 2400 -1250 0 0 {name=p120 lab=A7}
C {lab_pin.sym} 2400 -1230 0 0 {name=p121 lab=B7p}
C {lab_pin.sym} 2540 -1240 0 1 {name=p122 lab=SUM_07b}
C {lab_pin.sym} 1980 -1220 0 1 {name=p144 lab=COUT_05}
C {lab_pin.sym} 2120 -1210 0 0 {name=p145 lab=COUT_05}
C {lab_pin.sym} 2260 -1220 0 1 {name=p146 lab=COUT_06}
C {lab_pin.sym} 2400 -1210 0 0 {name=p147 lab=COUT_06}
C {lab_pin.sym} 2540 -1220 0 1 {name=p148 lab=COUT_07}
C {engn1600-team1/CAD4/logic.sym} 1910 -590 0 0 {name=x24}
C {lab_pin.sym} 1910 -510 0 1 {name=p149 lab=VSS}
C {lab_pin.sym} 1970 -600 0 1 {name=p150 lab=NOR5}
C {lab_pin.sym} 1910 -670 0 1 {name=p151 lab=VDD}
C {lab_pin.sym} 1970 -580 0 1 {name=p152 lab=XNOR5}
C {lab_pin.sym} 1850 -600 0 0 {name=p153 lab=A5}
C {lab_pin.sym} 1850 -580 0 0 {name=p154 lab=B5p}
C {lab_pin.sym} 1970 -620 0 1 {name=p155 lab=NAND5}
C {engn1600-team1/CAD4/logic.sym} 2190 -590 0 0 {name=x25}
C {lab_pin.sym} 2190 -510 0 1 {name=p156 lab=VSS}
C {lab_pin.sym} 2250 -600 0 1 {name=p157 lab=NOR6}
C {lab_pin.sym} 2190 -670 0 1 {name=p158 lab=VDD}
C {lab_pin.sym} 2250 -580 0 1 {name=p159 lab=XNOR6}
C {lab_pin.sym} 2130 -600 0 0 {name=p160 lab=A6}
C {lab_pin.sym} 2130 -580 0 0 {name=p161 lab=B6p}
C {lab_pin.sym} 2250 -620 0 1 {name=p162 lab=NAND6}
C {engn1600-team1/CAD4/logic.sym} 2470 -590 0 0 {name=x26}
C {lab_pin.sym} 2470 -510 0 1 {name=p163 lab=VSS}
C {lab_pin.sym} 2530 -600 0 1 {name=p164 lab=NOR7}
C {lab_pin.sym} 2470 -670 0 1 {name=p165 lab=VDD}
C {lab_pin.sym} 2530 -580 0 1 {name=p166 lab=XNOR7}
C {lab_pin.sym} 2410 -600 0 0 {name=p167 lab=A7}
C {lab_pin.sym} 2410 -580 0 0 {name=p168 lab=B7p}
C {lab_pin.sym} 2530 -620 0 1 {name=p169 lab=NAND7}
C {engn1600-team1/CAD4/2x1_mux.sym} 2480 -870 0 0 {name=x35}
C {engn1600-team1/CAD4/2x1_mux.sym} 2200 -870 0 0 {name=x36}
C {engn1600-team1/CAD4/2x1_mux.sym} 1920 -870 0 0 {name=x37}
C {engn1600-team1/CAD4/2x1_mux.sym} 1640 -880 0 0 {name=x38}
C {lab_pin.sym} 1690 -1130 0 1 {name=p210 lab=AND4}
C {lab_pin.sym} 1690 -1090 0 1 {name=p211 lab=XOR4}
C {lab_pin.sym} 1690 -1110 0 1 {name=p212 lab=OR4}
C {lab_pin.sym} 1690 -1170 0 1 {name=p213 lab=NOR4}
C {lab_pin.sym} 1630 -1250 0 1 {name=p214 lab=VDD}
C {lab_pin.sym} 1630 -1030 0 1 {name=p215 lab=VSS}
C {lab_pin.sym} 1690 -1150 0 1 {name=p216 lab=XNOR4}
C {lab_pin.sym} 1570 -1150 0 0 {name=p217 lab=A4}
C {lab_pin.sym} 1570 -1130 0 0 {name=p218 lab=B4p}
C {lab_pin.sym} 1690 -1190 0 1 {name=p219 lab=NAND4}
C {engn1600-team1/CAD4/full_adder.sym} 1840 -990 0 0 {name=x21 kSUMb="'kSUMb'" kTS="'kTS'"}
C {engn1600-team1/CAD4/full_adder.sym} 2120 -990 0 0 {name=x22 kSUMb="'kSUMb'" kTS="'kTS'"}
C {engn1600-team1/CAD4/full_adder.sym} 2400 -990 0 0 {name=x23 kSUMb="'kSUMb'" kTS="'kTS'"}
C {lab_pin.sym} 1910 -1120 0 1 {name=p123 lab=VDD}
C {lab_pin.sym} 1910 -990 0 1 {name=p124 lab=VSS}
C {lab_pin.sym} 1840 -1080 0 0 {name=p125 lab=A5}
C {lab_pin.sym} 1840 -1060 0 0 {name=p126 lab=B5p}
C {lab_pin.sym} 1980 -1070 0 1 {name=p128 lab=SUM_15b}
C {lab_pin.sym} 2190 -1120 0 1 {name=p129 lab=VDD}
C {lab_pin.sym} 2190 -990 0 1 {name=p130 lab=VSS}
C {lab_pin.sym} 2120 -1080 0 0 {name=p131 lab=A6}
C {lab_pin.sym} 2120 -1060 0 0 {name=p132 lab=B6p}
C {lab_pin.sym} 2260 -1070 0 1 {name=p133 lab=SUM_16b}
C {lab_pin.sym} 2470 -1120 0 1 {name=p134 lab=VDD}
C {lab_pin.sym} 2470 -990 0 1 {name=p135 lab=VSS}
C {lab_pin.sym} 2400 -1080 0 0 {name=p136 lab=A7}
C {lab_pin.sym} 2400 -1060 0 0 {name=p137 lab=B7p}
C {lab_pin.sym} 2540 -1070 0 1 {name=p138 lab=SUM_17b}
C {lab_pin.sym} 1980 -1050 0 1 {name=p139 lab=COUT_15}
C {lab_pin.sym} 2120 -1040 0 0 {name=p140 lab=COUT_15}
C {lab_pin.sym} 2260 -1050 0 1 {name=p141 lab=COUT_16}
C {lab_pin.sym} 2400 -1040 0 0 {name=p142 lab=COUT_16}
C {lab_pin.sym} 2540 -1050 0 1 {name=p143 lab=COUT_17}
C {lab_pin.sym} 1840 -1040 0 0 {name=p222 lab=OR4}
C {lab_pin.sym} 1840 -1210 0 0 {name=p223 lab=AND4}
C {lab_pin.sym} 1600 -890 0 0 {name=p111 lab=XNOR4}
C {lab_pin.sym} 1600 -870 0 0 {name=p127 lab=XOR4}
C {lab_pin.sym} 1680 -880 0 1 {name=p220 lab=SUM4b}
C {lab_pin.sym} 1630 -950 0 1 {name=p221 lab=VDD}
C {lab_pin.sym} 1650 -940 0 1 {name=p224 lab=VSS}
C {lab_pin.sym} 1960 -870 0 1 {name=p225 lab=SUM5b}
C {lab_pin.sym} 1910 -940 0 1 {name=p226 lab=VDD}
C {lab_pin.sym} 1930 -930 0 1 {name=p227 lab=VSS}
C {lab_pin.sym} 2240 -870 0 1 {name=p228 lab=SUM6b}
C {lab_pin.sym} 2190 -940 0 1 {name=p229 lab=VDD}
C {lab_pin.sym} 2210 -930 0 1 {name=p230 lab=VSS}
C {lab_pin.sym} 2520 -870 0 1 {name=p231 lab=SUM7b}
C {lab_pin.sym} 2470 -940 0 1 {name=p232 lab=VDD}
C {lab_pin.sym} 2490 -930 0 1 {name=p233 lab=VSS}
C {lab_pin.sym} 1880 -880 0 0 {name=p234 lab=SUM_05b}
C {lab_pin.sym} 1880 -860 0 0 {name=p235 lab=SUM_15b}
C {lab_pin.sym} 2160 -880 0 0 {name=p236 lab=SUM_06b}
C {lab_pin.sym} 2160 -860 0 0 {name=p237 lab=SUM_16b}
C {lab_pin.sym} 2440 -880 0 0 {name=p238 lab=SUM_07b}
C {lab_pin.sym} 2440 -860 0 0 {name=p239 lab=SUM_17b}
C {engn1600-team1/CAD4/2x1_mux_cmos.sym} 2770 -870 0 0 {name=x39 kYb=1 kY=1}
C {lab_pin.sym} 2810 -880 0 1 {name=p240 lab=COUT7}
C {lab_pin.sym} 2760 -940 0 1 {name=p241 lab=VDD}
C {lab_pin.sym} 2780 -930 0 1 {name=p242 lab=VSS}
C {lab_pin.sym} 2730 -880 0 0 {name=p243 lab=COUT_07}
C {lab_pin.sym} 2730 -860 0 0 {name=p244 lab=COUT_17}
C {engn1600-team1/CAD4/inv.sym} 1320 -1040 0 0 {name=x40}
C {lab_pin.sym} 1340 -1000 0 1 {name=p245 lab=VSS}
C {lab_pin.sym} 1340 -1080 0 1 {name=p246 lab=VDD}
C {lab_pin.sym} 1300 -1040 0 0 {name=p247 lab=COUT3}
C {lab_pin.sym} 1410 -1040 0 1 {name=p248 lab=COUT3b}
C {lab_pin.sym} 1630 -810 3 0 {name=p249 lab=COUT3}
C {lab_pin.sym} 1650 -820 3 0 {name=p250 lab=COUT3b}
C {lab_pin.sym} 1910 -800 3 0 {name=p251 lab=COUT3}
C {lab_pin.sym} 1930 -810 3 0 {name=p252 lab=COUT3b}
C {lab_pin.sym} 2190 -800 3 0 {name=p253 lab=COUT3}
C {lab_pin.sym} 2210 -810 3 0 {name=p254 lab=COUT3b}
C {lab_pin.sym} 2470 -800 3 0 {name=p255 lab=COUT3}
C {lab_pin.sym} 2490 -810 3 0 {name=p256 lab=COUT3b}
C {lab_pin.sym} 2760 -800 3 0 {name=p257 lab=COUT3}
C {lab_pin.sym} 2780 -810 3 0 {name=p258 lab=COUT3b}
C {lab_pin.sym} 2810 -860 0 1 {name=p262 lab=COUT7b}
C {engn1600-team1/CAD4/logic_extended.sym} 3050 -1160 0 0 {name=x42}
C {engn1600-team1/CAD4/full_adder.sym} 3260 -1180 0 0 {name=x43 kSUMb="'kSUMb'" kTS="'kTS'"}
C {engn1600-team1/CAD4/full_adder.sym} 3540 -1180 0 0 {name=x44 kSUMb="'kSUMb'" kTS="'kTS'"}
C {engn1600-team1/CAD4/full_adder.sym} 3820 -1180 0 0 {name=x45 kSUMb="'kSUMb'" kTS="'kTS'"}
C {lab_pin.sym} 3330 -1310 0 1 {name=p263 lab=VDD}
C {lab_pin.sym} 3330 -1180 0 1 {name=p264 lab=VSS}
C {lab_pin.sym} 3260 -1270 0 0 {name=p265 lab=A9}
C {lab_pin.sym} 3260 -1250 0 0 {name=p266 lab=B9p}
C {lab_pin.sym} 3400 -1260 0 1 {name=p267 lab=SUM_09b}
C {lab_pin.sym} 3610 -1310 0 1 {name=p268 lab=VDD}
C {lab_pin.sym} 3610 -1180 0 1 {name=p269 lab=VSS}
C {lab_pin.sym} 3540 -1270 0 0 {name=p270 lab=A10}
C {lab_pin.sym} 3540 -1250 0 0 {name=p271 lab=B10p}
C {lab_pin.sym} 3680 -1260 0 1 {name=p272 lab=SUM_010b}
C {lab_pin.sym} 3890 -1310 0 1 {name=p273 lab=VDD}
C {lab_pin.sym} 3890 -1180 0 1 {name=p274 lab=VSS}
C {lab_pin.sym} 3820 -1270 0 0 {name=p275 lab=A11}
C {lab_pin.sym} 3820 -1250 0 0 {name=p276 lab=B11p}
C {lab_pin.sym} 3960 -1260 0 1 {name=p277 lab=SUM_011b}
C {lab_pin.sym} 3400 -1240 0 1 {name=p278 lab=COUT_09}
C {lab_pin.sym} 3540 -1230 0 0 {name=p279 lab=COUT_09}
C {lab_pin.sym} 3680 -1240 0 1 {name=p280 lab=COUT_010}
C {lab_pin.sym} 3820 -1230 0 0 {name=p281 lab=COUT_010}
C {lab_pin.sym} 3960 -1240 0 1 {name=p282 lab=COUT_011}
C {engn1600-team1/CAD4/logic.sym} 3330 -610 0 0 {name=x46}
C {lab_pin.sym} 3330 -530 0 1 {name=p283 lab=VSS}
C {lab_pin.sym} 3390 -620 0 1 {name=p284 lab=NOR9}
C {lab_pin.sym} 3330 -690 0 1 {name=p285 lab=VDD}
C {lab_pin.sym} 3390 -600 0 1 {name=p286 lab=XNOR9}
C {lab_pin.sym} 3270 -620 0 0 {name=p287 lab=A9}
C {lab_pin.sym} 3270 -600 0 0 {name=p288 lab=B9p}
C {lab_pin.sym} 3390 -640 0 1 {name=p289 lab=NAND9}
C {engn1600-team1/CAD4/logic.sym} 3610 -610 0 0 {name=x47}
C {lab_pin.sym} 3610 -530 0 1 {name=p290 lab=VSS}
C {lab_pin.sym} 3670 -620 0 1 {name=p291 lab=NOR10}
C {lab_pin.sym} 3610 -690 0 1 {name=p292 lab=VDD}
C {lab_pin.sym} 3670 -600 0 1 {name=p293 lab=XNOR10}
C {lab_pin.sym} 3550 -620 0 0 {name=p294 lab=A10}
C {lab_pin.sym} 3550 -600 0 0 {name=p295 lab=B10p}
C {lab_pin.sym} 3670 -640 0 1 {name=p296 lab=NAND10}
C {engn1600-team1/CAD4/logic.sym} 3890 -610 0 0 {name=x48}
C {lab_pin.sym} 3890 -530 0 1 {name=p297 lab=VSS}
C {lab_pin.sym} 3950 -620 0 1 {name=p298 lab=NOR11}
C {lab_pin.sym} 3890 -690 0 1 {name=p299 lab=VDD}
C {lab_pin.sym} 3950 -600 0 1 {name=p300 lab=XNOR11}
C {lab_pin.sym} 3830 -620 0 0 {name=p301 lab=A11}
C {lab_pin.sym} 3830 -600 0 0 {name=p302 lab=B11p}
C {lab_pin.sym} 3950 -640 0 1 {name=p303 lab=NAND11}
C {engn1600-team1/CAD4/2x1_mux.sym} 3900 -890 0 0 {name=x57}
C {engn1600-team1/CAD4/2x1_mux.sym} 3620 -890 0 0 {name=x58}
C {engn1600-team1/CAD4/2x1_mux.sym} 3340 -890 0 0 {name=x59}
C {engn1600-team1/CAD4/2x1_mux.sym} 3060 -900 0 0 {name=x60}
C {lab_pin.sym} 3110 -1150 0 1 {name=p344 lab=AND8}
C {lab_pin.sym} 3110 -1110 0 1 {name=p345 lab=XOR8}
C {lab_pin.sym} 3110 -1130 0 1 {name=p346 lab=OR8}
C {lab_pin.sym} 3110 -1190 0 1 {name=p347 lab=NOR8}
C {lab_pin.sym} 3050 -1270 0 1 {name=p348 lab=VDD}
C {lab_pin.sym} 3050 -1050 0 1 {name=p349 lab=VSS}
C {lab_pin.sym} 3110 -1170 0 1 {name=p350 lab=XNOR8}
C {lab_pin.sym} 2990 -1170 0 0 {name=p351 lab=A8}
C {lab_pin.sym} 2990 -1150 0 0 {name=p352 lab=B8p}
C {lab_pin.sym} 3110 -1210 0 1 {name=p353 lab=NAND8}
C {engn1600-team1/CAD4/full_adder.sym} 3260 -1010 0 0 {name=x61 kSUMb="'kSUMb'" kTS="'kTS'"}
C {engn1600-team1/CAD4/full_adder.sym} 3540 -1010 0 0 {name=x62 kSUMb="'kSUMb'" kTS="'kTS'"}
C {engn1600-team1/CAD4/full_adder.sym} 3820 -1010 0 0 {name=x63 kSUMb="'kSUMb'" kTS="'kTS'"}
C {lab_pin.sym} 3330 -1140 0 1 {name=p354 lab=VDD}
C {lab_pin.sym} 3330 -1010 0 1 {name=p355 lab=VSS}
C {lab_pin.sym} 3260 -1100 0 0 {name=p356 lab=A9}
C {lab_pin.sym} 3260 -1080 0 0 {name=p357 lab=B9p}
C {lab_pin.sym} 3400 -1090 0 1 {name=p358 lab=SUM_19b}
C {lab_pin.sym} 3610 -1140 0 1 {name=p359 lab=VDD}
C {lab_pin.sym} 3610 -1010 0 1 {name=p360 lab=VSS}
C {lab_pin.sym} 3540 -1100 0 0 {name=p361 lab=A10}
C {lab_pin.sym} 3540 -1080 0 0 {name=p362 lab=B10p}
C {lab_pin.sym} 3680 -1090 0 1 {name=p363 lab=SUM_110b}
C {lab_pin.sym} 3890 -1140 0 1 {name=p364 lab=VDD}
C {lab_pin.sym} 3890 -1010 0 1 {name=p365 lab=VSS}
C {lab_pin.sym} 3820 -1100 0 0 {name=p366 lab=A11}
C {lab_pin.sym} 3820 -1080 0 0 {name=p367 lab=B11p}
C {lab_pin.sym} 3960 -1090 0 1 {name=p368 lab=SUM_111b}
C {lab_pin.sym} 3400 -1070 0 1 {name=p369 lab=COUT_19}
C {lab_pin.sym} 3540 -1060 0 0 {name=p370 lab=COUT_19}
C {lab_pin.sym} 3680 -1070 0 1 {name=p371 lab=COUT_110}
C {lab_pin.sym} 3820 -1060 0 0 {name=p372 lab=COUT_110}
C {lab_pin.sym} 3960 -1070 0 1 {name=p373 lab=COUT_111}
C {lab_pin.sym} 3260 -1060 0 0 {name=p374 lab=OR8}
C {lab_pin.sym} 3260 -1230 0 0 {name=p375 lab=AND8}
C {lab_pin.sym} 3020 -910 0 0 {name=p376 lab=XNOR8}
C {lab_pin.sym} 3020 -890 0 0 {name=p377 lab=XOR8}
C {lab_pin.sym} 3100 -900 0 1 {name=p378 lab=SUM8b}
C {lab_pin.sym} 3050 -970 0 1 {name=p379 lab=VDD}
C {lab_pin.sym} 3070 -960 0 1 {name=p380 lab=VSS}
C {lab_pin.sym} 3380 -890 0 1 {name=p381 lab=SUM9b}
C {lab_pin.sym} 3330 -960 0 1 {name=p382 lab=VDD}
C {lab_pin.sym} 3350 -950 0 1 {name=p383 lab=VSS}
C {lab_pin.sym} 3660 -890 0 1 {name=p384 lab=SUM10b}
C {lab_pin.sym} 3610 -960 0 1 {name=p385 lab=VDD}
C {lab_pin.sym} 3630 -950 0 1 {name=p386 lab=VSS}
C {lab_pin.sym} 3940 -890 0 1 {name=p387 lab=SUM11b}
C {lab_pin.sym} 3890 -960 0 1 {name=p388 lab=VDD}
C {lab_pin.sym} 3910 -950 0 1 {name=p389 lab=VSS}
C {lab_pin.sym} 3300 -900 0 0 {name=p390 lab=SUM_09b}
C {lab_pin.sym} 3300 -880 0 0 {name=p391 lab=SUM_19b}
C {lab_pin.sym} 3580 -900 0 0 {name=p392 lab=SUM_010b}
C {lab_pin.sym} 3580 -880 0 0 {name=p393 lab=SUM_110b}
C {lab_pin.sym} 3860 -900 0 0 {name=p394 lab=SUM_011b}
C {lab_pin.sym} 3860 -880 0 0 {name=p395 lab=SUM_111b}
C {engn1600-team1/CAD4/2x1_mux_cmos.sym} 4190 -890 0 0 {name=x64 kYb=1 kY=1}
C {lab_pin.sym} 4230 -900 0 1 {name=p396 lab=COUT11}
C {lab_pin.sym} 4180 -960 0 1 {name=p397 lab=VDD}
C {lab_pin.sym} 4200 -950 0 1 {name=p398 lab=VSS}
C {lab_pin.sym} 4150 -900 0 0 {name=p399 lab=COUT_011}
C {lab_pin.sym} 4150 -880 0 0 {name=p400 lab=COUT_111}
C {lab_pin.sym} 3050 -830 3 0 {name=p401 lab=COUT7}
C {lab_pin.sym} 3070 -840 3 0 {name=p402 lab=COUT7b}
C {lab_pin.sym} 3330 -820 3 0 {name=p403 lab=COUT7}
C {lab_pin.sym} 3350 -830 3 0 {name=p404 lab=COUT7b}
C {lab_pin.sym} 3610 -820 3 0 {name=p405 lab=COUT7}
C {lab_pin.sym} 3630 -830 3 0 {name=p406 lab=COUT7b}
C {lab_pin.sym} 3890 -820 3 0 {name=p407 lab=COUT7}
C {lab_pin.sym} 3910 -830 3 0 {name=p408 lab=COUT7b}
C {lab_pin.sym} 4180 -820 3 0 {name=p409 lab=COUT7}
C {lab_pin.sym} 4200 -830 3 0 {name=p410 lab=COUT7b}
C {engn1600-team1/CAD4/logic_extended.sym} 4490 -1180 0 0 {name=x66}
C {engn1600-team1/CAD4/full_adder.sym} 4700 -1200 0 0 {name=x67 kSUMb="'kSUMb'" kTS="'kTS'"}
C {engn1600-team1/CAD4/full_adder.sym} 4980 -1200 0 0 {name=x68 kSUMb="'kSUMb'" kTS="'kTS'"}
C {engn1600-team1/CAD4/full_adder.sym} 5260 -1200 0 0 {name=x69 kSUMb="'kSUMb'" kTS="'kTS'"}
C {lab_pin.sym} 4770 -1330 0 1 {name=p415 lab=VDD}
C {lab_pin.sym} 4770 -1200 0 1 {name=p416 lab=VSS}
C {lab_pin.sym} 4700 -1290 0 0 {name=p417 lab=A13}
C {lab_pin.sym} 4700 -1270 0 0 {name=p418 lab=B13p}
C {lab_pin.sym} 4840 -1280 0 1 {name=p419 lab=SUM_013b}
C {lab_pin.sym} 5050 -1330 0 1 {name=p420 lab=VDD}
C {lab_pin.sym} 5050 -1200 0 1 {name=p421 lab=VSS}
C {lab_pin.sym} 4980 -1290 0 0 {name=p422 lab=A14}
C {lab_pin.sym} 4980 -1270 0 0 {name=p423 lab=B14p}
C {lab_pin.sym} 5120 -1280 0 1 {name=p424 lab=SUM_014b}
C {lab_pin.sym} 5330 -1330 0 1 {name=p425 lab=VDD}
C {lab_pin.sym} 5330 -1200 0 1 {name=p426 lab=VSS}
C {lab_pin.sym} 5260 -1290 0 0 {name=p427 lab=A15}
C {lab_pin.sym} 5260 -1270 0 0 {name=p428 lab=B15p}
C {lab_pin.sym} 5400 -1280 0 1 {name=p429 lab=SUM_015b}
C {lab_pin.sym} 4840 -1260 0 1 {name=p430 lab=COUT_013}
C {lab_pin.sym} 4980 -1250 0 0 {name=p431 lab=COUT_013}
C {lab_pin.sym} 5120 -1260 0 1 {name=p432 lab=COUT_014}
C {lab_pin.sym} 5260 -1250 0 0 {name=p433 lab=COUT_014}
C {lab_pin.sym} 5400 -1260 0 1 {name=p434 lab=COUT_015}
C {engn1600-team1/CAD4/logic.sym} 4770 -630 0 0 {name=x70}
C {lab_pin.sym} 4770 -550 0 1 {name=p435 lab=VSS}
C {lab_pin.sym} 4830 -640 0 1 {name=p436 lab=NOR13}
C {lab_pin.sym} 4770 -710 0 1 {name=p437 lab=VDD}
C {lab_pin.sym} 4830 -620 0 1 {name=p438 lab=XNOR13}
C {lab_pin.sym} 4710 -640 0 0 {name=p439 lab=A13}
C {lab_pin.sym} 4710 -620 0 0 {name=p440 lab=B13p}
C {lab_pin.sym} 4830 -660 0 1 {name=p441 lab=NAND13}
C {engn1600-team1/CAD4/logic.sym} 5050 -630 0 0 {name=x71}
C {lab_pin.sym} 5050 -550 0 1 {name=p442 lab=VSS}
C {lab_pin.sym} 5110 -640 0 1 {name=p443 lab=NOR14}
C {lab_pin.sym} 5050 -710 0 1 {name=p444 lab=VDD}
C {lab_pin.sym} 5110 -620 0 1 {name=p445 lab=XNOR14}
C {lab_pin.sym} 4990 -640 0 0 {name=p446 lab=A14}
C {lab_pin.sym} 4990 -620 0 0 {name=p447 lab=B14p}
C {lab_pin.sym} 5110 -660 0 1 {name=p448 lab=NAND14}
C {engn1600-team1/CAD4/logic.sym} 5330 -630 0 0 {name=x72}
C {lab_pin.sym} 5330 -550 0 1 {name=p449 lab=VSS}
C {lab_pin.sym} 5390 -640 0 1 {name=p450 lab=NOR15}
C {lab_pin.sym} 5330 -710 0 1 {name=p451 lab=VDD}
C {lab_pin.sym} 5390 -620 0 1 {name=p452 lab=XNOR15}
C {lab_pin.sym} 5270 -640 0 0 {name=p453 lab=A15}
C {lab_pin.sym} 5270 -620 0 0 {name=p454 lab=B15p}
C {lab_pin.sym} 5390 -660 0 1 {name=p455 lab=NAND15}
C {engn1600-team1/CAD4/2x1_mux.sym} 5340 -910 0 0 {name=x81}
C {engn1600-team1/CAD4/2x1_mux.sym} 5060 -910 0 0 {name=x82}
C {engn1600-team1/CAD4/2x1_mux.sym} 4780 -910 0 0 {name=x83}
C {engn1600-team1/CAD4/2x1_mux.sym} 4500 -920 0 0 {name=x84}
C {lab_pin.sym} 4550 -1170 0 1 {name=p496 lab=AND12}
C {lab_pin.sym} 4550 -1130 0 1 {name=p497 lab=XOR12}
C {lab_pin.sym} 4550 -1150 0 1 {name=p498 lab=OR12}
C {lab_pin.sym} 4550 -1210 0 1 {name=p499 lab=NOR12}
C {lab_pin.sym} 4490 -1290 0 1 {name=p500 lab=VDD}
C {lab_pin.sym} 4490 -1070 0 1 {name=p501 lab=VSS}
C {lab_pin.sym} 4550 -1190 0 1 {name=p502 lab=XNOR12}
C {lab_pin.sym} 4430 -1190 0 0 {name=p503 lab=A12}
C {lab_pin.sym} 4430 -1170 0 0 {name=p504 lab=B12p}
C {lab_pin.sym} 4550 -1230 0 1 {name=p505 lab=NAND12}
C {engn1600-team1/CAD4/full_adder.sym} 4700 -1030 0 0 {name=x85 kSUMb="'kSUMb'" kTS="'kTS'"}
C {engn1600-team1/CAD4/full_adder.sym} 4980 -1030 0 0 {name=x86 kSUMb="'kSUMb'" kTS="'kTS'"}
C {engn1600-team1/CAD4/full_adder.sym} 5260 -1030 0 0 {name=x87 kSUMb="'kSUMb'" kTS="'kTS'"}
C {lab_pin.sym} 4770 -1160 0 1 {name=p506 lab=VDD}
C {lab_pin.sym} 4770 -1030 0 1 {name=p507 lab=VSS}
C {lab_pin.sym} 4700 -1120 0 0 {name=p508 lab=A13}
C {lab_pin.sym} 4700 -1100 0 0 {name=p509 lab=B13p}
C {lab_pin.sym} 4840 -1110 0 1 {name=p510 lab=SUM_113b}
C {lab_pin.sym} 5050 -1160 0 1 {name=p511 lab=VDD}
C {lab_pin.sym} 5050 -1030 0 1 {name=p512 lab=VSS}
C {lab_pin.sym} 4980 -1120 0 0 {name=p513 lab=A14}
C {lab_pin.sym} 4980 -1100 0 0 {name=p514 lab=B14p}
C {lab_pin.sym} 5120 -1110 0 1 {name=p515 lab=SUM_114b}
C {lab_pin.sym} 5330 -1160 0 1 {name=p516 lab=VDD}
C {lab_pin.sym} 5330 -1030 0 1 {name=p517 lab=VSS}
C {lab_pin.sym} 5260 -1120 0 0 {name=p518 lab=A15}
C {lab_pin.sym} 5260 -1100 0 0 {name=p519 lab=B15p}
C {lab_pin.sym} 5400 -1110 0 1 {name=p520 lab=SUM_115b}
C {lab_pin.sym} 4840 -1090 0 1 {name=p521 lab=COUT_113}
C {lab_pin.sym} 4980 -1080 0 0 {name=p522 lab=COUT_113}
C {lab_pin.sym} 5120 -1090 0 1 {name=p523 lab=COUT_114}
C {lab_pin.sym} 5260 -1080 0 0 {name=p524 lab=COUT_114}
C {lab_pin.sym} 5400 -1090 0 1 {name=p525 lab=COUT_115}
C {lab_pin.sym} 4700 -1080 0 0 {name=p526 lab=OR12}
C {lab_pin.sym} 4700 -1250 0 0 {name=p527 lab=AND12}
C {lab_pin.sym} 4460 -930 0 0 {name=p528 lab=XNOR12}
C {lab_pin.sym} 4460 -910 0 0 {name=p529 lab=XOR12}
C {lab_pin.sym} 4540 -920 0 1 {name=p530 lab=SUM12b}
C {lab_pin.sym} 4490 -990 0 1 {name=p531 lab=VDD}
C {lab_pin.sym} 4510 -980 0 1 {name=p532 lab=VSS}
C {lab_pin.sym} 4820 -910 0 1 {name=p533 lab=SUM13b}
C {lab_pin.sym} 4770 -980 0 1 {name=p534 lab=VDD}
C {lab_pin.sym} 4790 -970 0 1 {name=p535 lab=VSS}
C {lab_pin.sym} 5100 -910 0 1 {name=p536 lab=SUM14b}
C {lab_pin.sym} 5050 -980 0 1 {name=p537 lab=VDD}
C {lab_pin.sym} 5070 -970 0 1 {name=p538 lab=VSS}
C {lab_pin.sym} 5380 -910 0 1 {name=p539 lab=SUM15b}
C {lab_pin.sym} 5330 -980 0 1 {name=p540 lab=VDD}
C {lab_pin.sym} 5350 -970 0 1 {name=p541 lab=VSS}
C {lab_pin.sym} 4740 -920 0 0 {name=p542 lab=SUM_013b}
C {lab_pin.sym} 4740 -900 0 0 {name=p543 lab=SUM_113b}
C {lab_pin.sym} 5020 -920 0 0 {name=p544 lab=SUM_014b}
C {lab_pin.sym} 5020 -900 0 0 {name=p545 lab=SUM_114b}
C {lab_pin.sym} 5300 -920 0 0 {name=p546 lab=SUM_015b}
C {lab_pin.sym} 5300 -900 0 0 {name=p547 lab=SUM_115b}
C {lab_pin.sym} 4490 -850 3 0 {name=p548 lab=COUT11}
C {lab_pin.sym} 4510 -860 3 0 {name=p549 lab=COUT11b}
C {lab_pin.sym} 4770 -840 3 0 {name=p550 lab=COUT11}
C {lab_pin.sym} 4790 -850 3 0 {name=p551 lab=COUT11b}
C {lab_pin.sym} 5050 -840 3 0 {name=p552 lab=COUT11}
C {lab_pin.sym} 5070 -850 3 0 {name=p553 lab=COUT11b}
C {lab_pin.sym} 5330 -840 3 0 {name=p554 lab=COUT11}
C {lab_pin.sym} 5350 -850 3 0 {name=p555 lab=COUT11b}
C {engn1600-team1/CAD4/2x4_decoder.sym} 530 0 0 0 {name=x88}
C {lab_pin.sym} 680 -50 0 1 {name=p556 lab=VDD}
C {lab_pin.sym} 680 -30 0 1 {name=p557 lab=VSS}
C {lab_wire.sym} 380 -50 0 0 {name=p558 sig_type=std_logic lab=SEL0}
C {lab_wire.sym} 380 -30 0 0 {name=p559 sig_type=std_logic lab=SEL1}
C {lab_wire.sym} 680 -10 2 0 {name=p560 sig_type=std_logic lab=SA}
C {lab_wire.sym} 680 10 2 0 {name=p561 sig_type=std_logic lab=SB}
C {lab_wire.sym} 680 30 2 0 {name=p563 sig_type=std_logic lab=SC}
C {lab_wire.sym} 680 50 2 0 {name=p562 sig_type=std_logic lab=SD}
C {lab_wire.sym} 410 -300 2 0 {name=p565 sig_type=std_logic lab=SA}
C {lab_wire.sym} 430 -310 2 0 {name=p580 sig_type=std_logic lab=SB}
C {lab_wire.sym} 450 -320 2 0 {name=p596 sig_type=std_logic lab=SC}
C {lab_wire.sym} 470 -330 2 0 {name=p612 sig_type=std_logic lab=SD}
C {lab_pin.sym} 500 -560 0 1 {name=p628 lab=XOR0}
C {lab_pin.sym} 780 -560 0 1 {name=p629 lab=XOR1}
C {lab_pin.sym} 1060 -560 0 1 {name=p630 lab=XOR2}
C {lab_pin.sym} 1340 -560 0 1 {name=p631 lab=XOR3}
C {lab_pin.sym} 1970 -560 0 1 {name=p632 lab=XOR5}
C {lab_pin.sym} 2250 -560 0 1 {name=p633 lab=XOR6}
C {lab_pin.sym} 2530 -560 0 1 {name=p634 lab=XOR7}
C {lab_pin.sym} 3390 -580 0 1 {name=p635 lab=XOR9}
C {lab_pin.sym} 3670 -580 0 1 {name=p636 lab=XOR10}
C {lab_pin.sym} 3950 -580 0 1 {name=p637 lab=XOR11}
C {lab_pin.sym} 4830 -600 0 1 {name=p638 lab=XOR13}
C {lab_pin.sym} 5110 -600 0 1 {name=p639 lab=XOR14}
C {lab_pin.sym} 5390 -600 0 1 {name=p640 lab=XOR15}
C {engn1600-team1/CAD4/and16.sym} 420 180 0 0 {name=x89}
C {lab_pin.sym} 380 180 0 0 {name=p641 lab=XOR[15..0]}
C {lab_pin.sym} 420 140 0 1 {name=p642 lab=VDD}
C {lab_pin.sym} 420 220 0 1 {name=p644 lab=VSS}
C {engn1600-team1/CAD4/nand2.sym} 550 180 0 0 {name=x90}
C {engn1600-team1/CAD4/2x1_mux_cmos.sym} 5630 -910 0 0 {name=x91 kYb=1 kY=1}
C {lab_pin.sym} 5670 -920 0 1 {name=p643 lab=COUT15}
C {lab_pin.sym} 5620 -980 0 1 {name=p645 lab=VDD}
C {lab_pin.sym} 5640 -970 0 1 {name=p646 lab=VSS}
C {lab_pin.sym} 5590 -920 0 0 {name=p647 lab=COUT_015}
C {lab_pin.sym} 5590 -900 0 0 {name=p648 lab=COUT_115}
C {lab_pin.sym} 5620 -840 3 0 {name=p649 lab=COUT11}
C {lab_pin.sym} 5640 -850 3 0 {name=p650 lab=COUT11b}
C {lab_pin.sym} 510 190 2 1 {name=p651 lab=CIN}
C {lab_pin.sym} 550 140 0 1 {name=p652 lab=VDD}
C {lab_pin.sym} 550 220 0 1 {name=p654 lab=VSS}
C {engn1600-team1/CAD4/inv.sym} 650 180 0 0 {name=x92}
C {lab_pin.sym} 740 180 0 1 {name=p653 lab=Z}
C {lab_pin.sym} 670 140 0 1 {name=p655 lab=VDD}
C {lab_pin.sym} 670 220 0 1 {name=p656 lab=VSS}
C {engn1600-team1/CAD4/2x1_mux_cmos.sym} 5920 -910 0 0 {name=x94 kYb=1 kY=1}
C {lab_pin.sym} 5960 -920 0 1 {name=p661 lab=COUT14}
C {lab_pin.sym} 5910 -980 0 1 {name=p662 lab=VDD}
C {lab_pin.sym} 5930 -970 0 1 {name=p663 lab=VSS}
C {lab_pin.sym} 5880 -920 0 0 {name=p664 lab=COUT_014}
C {lab_pin.sym} 5880 -900 0 0 {name=p665 lab=COUT_114}
C {lab_pin.sym} 5910 -840 3 0 {name=p666 lab=COUT11}
C {lab_pin.sym} 5930 -850 3 0 {name=p667 lab=COUT11b}
C {engn1600-team1/CAD4/xor2.sym} 420 330 0 0 {name=x93}
C {lab_pin.sym} 380 320 2 1 {name=p657 lab=COUT14}
C {lab_pin.sym} 380 340 2 1 {name=p658 lab=COUT15}
C {lab_pin.sym} 420 290 0 1 {name=p659 lab=VDD}
C {lab_pin.sym} 420 370 0 1 {name=p668 lab=VSS}
C {lab_pin.sym} 480 330 0 1 {name=p660 lab=F}
C {engn1600-team1/CAD4/xor2.sym} 420 480 0 0 {name=x95}
C {lab_pin.sym} 380 470 2 1 {name=p669 lab=F}
C {lab_pin.sym} 380 490 2 1 {name=p670 lab=Y15}
C {lab_pin.sym} 480 480 0 1 {name=p671 lab=N}
C {engn1600-team1/CAD4/xor2.sym} 440 -1040 0 0 {name=x12[15..0]}
C {lab_pin.sym} 400 -1050 2 1 {name=p56 lab=B[15..0]}
C {lab_pin.sym} 400 -1030 2 1 {name=p57 lab=CIN}
C {lab_pin.sym} 500 -1040 0 1 {name=p58 lab=B[15..0]p}
C {lab_pin.sym} 440 -1080 0 1 {name=p59 lab=VDD}
C {lab_pin.sym} 440 -1000 0 1 {name=p60 lab=VSS}
C {code_shown.sym} 0 -420 0 0 {name=s1 only_toplevel=false value="
.param kSUMb=1
.param kTS=1
.param kYb=1
.param kY=1
"}
C {lab_pin.sym} 420 440 0 1 {name=p61 lab=VDD}
C {lab_pin.sym} 420 520 0 1 {name=p62 lab=VSS}
C {lab_pin.sym} 4230 -880 0 1 {name=p63 lab=COUT11b}
C {lab_pin.sym} 5670 -900 0 1 {name=p64 lab=COUT15b}
C {lab_pin.sym} 5960 -900 0 1 {name=p65 lab=COUT14b}
