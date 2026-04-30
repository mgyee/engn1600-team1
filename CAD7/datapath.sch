v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1100 -300 1130 -300 {lab=DMEM_Q[15..0]
bus=true}
C {engn1600-team1/CAD4/alu.sym} 780 0 0 0 {name=xalu}
C {engn1600-team1/CAD3/rf.sym} -220 0 0 0 {name=xrf}
C {engn1600-team1/CAD6/pc.sym} -920 0 0 0 {name=xpc}
C {engn1600-team1/CAD5/shifter.sym} 780 200 0 0 {name=xshifter}
C {lab_pin.sym} -770 -70 0 1 {name=p1 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} 930 -50 0 1 {name=p2 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} -70 -50 0 1 {name=p3 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} 930 170 0 1 {name=p4 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} -770 -50 0 1 {name=p5 sig_type=std_logic lab=VSS

}
C {lab_pin.sym} -70 -30 0 1 {name=p6 sig_type=std_logic lab=VSS

}
C {lab_pin.sym} 930 -30 0 1 {name=p7 sig_type=std_logic lab=VSS

}
C {lab_pin.sym} 930 190 0 1 {name=p8 sig_type=std_logic lab=VSS

}
C {ipin.sym} -370 10 0 0 {name=p11 sig_type=std_logic lab=RA[15..0]}
C {ipin.sym} -370 30 0 0 {name=p12 sig_type=std_logic lab=RB[15..0]}
C {lab_pin.sym} -370 -50 0 0 {name=p13 sig_type=std_logic lab=CLK
}
C {lab_pin.sym} -200 80 3 0 {name=p14 sig_type=std_logic lab=RDST[15..0]b
}
C {lab_pin.sym} -220 80 3 0 {name=p15 sig_type=std_logic lab=RSRC[15..0]b
}
C {lab_pin.sym} -240 80 3 0 {name=p16 sig_type=std_logic lab=RF_D[15..0]
}
C {engn1600-team1/CAD7/datapath_4x1_mux.sym} 1360 0 0 0 {name=x5[15..0]}
C {lab_pin.sym} 1360 -80 3 1 {name=p17 sig_type=std_logic lab=VSS

}
C {lab_pin.sym} 1300 30 0 0 {name=p18 sig_type=std_logic lab=PC[15..0]b

}
C {lab_pin.sym} 930 -10 0 1 {name=p19 sig_type=std_logic lab=ALU_Y[15..0]b

}
C {lab_pin.sym} 1300 -10 0 0 {name=p20 sig_type=std_logic lab=ALU_Y[15..0]b

}
C {lab_pin.sym} 1300 -30 0 0 {name=p21 sig_type=std_logic lab=DMEM_Q[15..0]b

}
C {lab_pin.sym} 1300 10 0 0 {name=p22 sig_type=std_logic lab=SHIFTER_Q[15..0]b

}
C {lab_pin.sym} 630 -30 0 0 {name=p28 sig_type=std_logic lab=ALU_B[15..0]

}
C {lab_pin.sym} 630 -50 0 0 {name=p29 sig_type=std_logic lab=ALU_A[15..0]

}
C {lab_pin.sym} 1530 0 0 1 {name=p34 sig_type=std_logic lab=RF_D[15..0]

}
C {lab_pin.sym} 930 210 0 1 {name=p35 sig_type=std_logic lab=SHIFTER_Q[15..0]b

}
C {lab_pin.sym} 1330 90 3 0 {name=p40 lab=DATA_OUT0}
C {lab_pin.sym} 1350 80 3 0 {name=p41 lab=DATA_OUT1}
C {lab_pin.sym} 1370 70 3 0 {name=p42 lab=DATA_OUT2}
C {lab_pin.sym} 1390 60 3 0 {name=p43 lab=DATA_OUT3}
C {engn1600-team1/CAD7/datapath_inv.sym} 1440 0 0 0 {name=x1[15..0] kINV=1}
C {lab_pin.sym} 1460 -40 0 1 {name=p44 lab=VDD}
C {lab_pin.sym} 1460 40 0 1 {name=p46 lab=VSS}
C {opin.sym} 930 10 0 0 {name=p48 lab=ALU_F}
C {opin.sym} 930 30 0 0 {name=p49 lab=ALU_Z}
C {opin.sym} 930 50 0 0 {name=p50 lab=ALU_N}
C {lab_pin.sym} 630 170 0 0 {name=p51 lab=SHIFTER_D[15..0]b}
C {lab_pin.sym} 630 190 0 0 {name=p52 lab=SHIFTER_I[3..0]}
C {lab_pin.sym} 630 210 0 0 {name=p53 lab=SHIFTER_R[3..0]}
C {engn1600-team1/CAD7/datapath_2x1_mux.sym} 210 360 0 0 {name=x2[3..0]}
C {lab_pin.sym} 250 360 2 0 {name=p55 lab=SHIFTER_I[3..0]}
C {lab_pin.sym} 170 350 0 0 {name=p56 lab=INSTR[3..0]}
C {lab_pin.sym} 170 370 0 0 {name=p57 lab=VDD,VSS*3}
C {engn1600-team1/CAD7/datapath_inv.sym} 190 200 0 0 {name=x3[3..0] kINV=1}
C {lab_pin.sym} 280 200 2 0 {name=p58 lab=SHIFTER_R[3..0]}
C {lab_pin.sym} 170 200 0 0 {name=p59 lab=RSRC[3..0]b}
C {lab_pin.sym} 210 160 0 1 {name=p60 lab=VDD}
C {lab_pin.sym} 210 240 0 1 {name=p61 lab=VSS}
C {lab_pin.sym} 200 290 0 0 {name=p64 lab=VDD}
C {lab_pin.sym} 220 300 0 1 {name=p65 lab=VSS}
C {engn1600-team1/CAD7/2x1_mux_pass.sym} 210 40 0 0 {name=x4[15..0]}
C {engn1600-team1/CAD7/datapath_inv.sym} 270 40 0 0 {name=x6[15..0] kINV=1}
C {lab_pin.sym} 360 40 2 0 {name=p67 sig_type=std_logic lab=ALU_A[15..0]

}
C {engn1600-team1/CAD7/2x1_mux_pass.sym} 210 -140 0 0 {name=x7[15..0]}
C {engn1600-team1/CAD7/datapath_inv.sym} 270 -140 0 0 {name=x8[15..0] kINV=1}
C {lab_pin.sym} 360 -140 2 0 {name=p68 sig_type=std_logic lab=ALU_B[15..0]

}
C {lab_pin.sym} 290 -180 0 1 {name=p69 lab=VDD}
C {lab_pin.sym} 290 -100 0 1 {name=p70 lab=VSS}
C {lab_pin.sym} 290 0 0 1 {name=p71 lab=VDD}
C {lab_pin.sym} 290 80 0 1 {name=p72 lab=VSS}
C {lab_pin.sym} 200 -210 0 0 {name=p66 lab=VDD}
C {lab_pin.sym} 220 -200 0 1 {name=p73 lab=VSS}
C {lab_pin.sym} 200 -30 0 0 {name=p77 lab=VDD}
C {lab_pin.sym} 220 -20 0 1 {name=p78 lab=VSS}
C {lab_pin.sym} 170 50 0 0 {name=p79 lab=VDD*16}
C {lab_pin.sym} 170 30 0 0 {name=p63 sig_type=std_logic lab=RDST[15..0]b
}
C {lab_pin.sym} 170 -150 0 0 {name=p62 sig_type=std_logic lab=RSRC[15..0]b
}
C {lab_pin.sym} 170 -130 0 0 {name=p74 sig_type=std_logic lab=IMM[15..0]b
}
C {opin.sym} 740 -460 0 0 {name=p75 lab=RDST[15..0]}
C {ipin.sym} 1100 -300 0 0 {name=p76 lab=DMEM_Q[15..0]}
C {opin.sym} 740 -300 0 0 {name=p80 lab=DMEM_ADDR[15..0]}
C {engn1600-team1/CAD7/datapath_inv.sym} 650 -300 0 0 {name=x9[15..0] kINV=1}
C {lab_pin.sym} 670 -340 0 1 {name=p81 lab=VDD}
C {lab_pin.sym} 630 -300 0 0 {name=p82 lab=RSRC[15..0]b}
C {lab_pin.sym} 670 -260 0 1 {name=p83 lab=VSS}
C {lab_pin.sym} 1240 -300 0 1 {name=p84 sig_type=std_logic lab=DMEM_Q[15..0]b

}
C {engn1600-team1/CAD7/datapath_inv.sym} 1150 -300 0 0 {name=x10[15..0] kINV=1}
C {lab_pin.sym} 1170 -340 0 1 {name=p85 lab=VDD}
C {lab_pin.sym} 1170 -260 0 1 {name=p86 lab=VSS}
C {engn1600-team1/CAD7/2x1_mux_pass.sym} 210 540 0 0 {name=x12[15..0]}
C {lab_pin.sym} 250 540 2 0 {name=p87 lab=SHIFTER_D[15..0]b}
C {lab_pin.sym} 170 550 0 0 {name=p92 sig_type=std_logic lab=IMM[15..0]b
}
C {lab_pin.sym} 170 530 0 0 {name=p90 sig_type=std_logic lab=RDST[15..0]b
}
C {lab_pin.sym} -190 540 0 0 {name=p91 sig_type=std_logic lab=OUT*8,INSTR[7..0]
}
C {engn1600-team1/CAD7/datapath_inv.sym} -170 540 0 0 {name=x14[15..0] kINV=1}
C {lab_pin.sym} -150 500 0 1 {name=p93 lab=VDD}
C {lab_pin.sym} -150 580 0 1 {name=p94 lab=VSS}
C {lab_pin.sym} -80 540 2 0 {name=p95 sig_type=std_logic lab=IMM[15..0]b
}
C {ipin.sym} -370 -10 0 0 {name=p24 lab=WE[15..0]}
C {opin.sym} -1050 360 0 0 {name=p32 lab=PC[15..0]}
C {lab_pin.sym} -1070 -70 0 0 {name=p33 lab=CLK}
C {lab_pin.sym} -1070 -50 0 0 {name=p36 lab=RSTn}
C {lab_pin.sym} -1070 -10 0 0 {name=p38 lab=INSTR[7..0]}
C {lab_pin.sym} -1070 30 0 0 {name=p96 lab=DEST[15..0]}
C {lab_pin.sym} -770 -30 0 1 {name=p99 lab=PC[15..0]}
C {ipin.sym} -790 360 0 0 {name=p9 lab=IMEM_Q[15..0]}
C {engn1600-team1/CAD7/datapath_dff.sym} -550 360 0 0 {name=x16[15..0]}
C {lab_pin.sym} -550 420 0 0 {name=p25 lab=CLK[15..0]b}
C {lab_pin.sym} -600 340 0 0 {name=p26 lab=IMEM_Q[15..0]}
C {lab_pin.sym} -500 340 0 1 {name=p27 lab=INSTR[15..0]}
C {lab_pin.sym} -600 360 0 0 {name=p30 lab=RSTn}
C {lab_pin.sym} -550 300 0 0 {name=p31 lab=CLK}
C {lab_pin.sym} -600 380 0 0 {name=p100 lab=VDD}
C {lab_pin.sym} -500 380 0 1 {name=p101 lab=VSS}
C {lab_pin.sym} -1430 0 0 0 {name=p37 sig_type=std_logic lab=RSRC[15..0]b
}
C {engn1600-team1/CAD7/datapath_inv.sym} -1410 0 0 0 {name=x15[15..0] kINV=1}
C {lab_pin.sym} -1390 -40 0 1 {name=p39 lab=VDD}
C {lab_pin.sym} -1390 40 0 1 {name=p97 lab=VSS}
C {lab_pin.sym} -1320 0 2 0 {name=p98 sig_type=std_logic lab=DEST[15..0]
}
C {opin.sym} -750 180 0 0 {name=p102 lab=INSTR[15..0]}
C {engn1600-team1/CAD7/sign_zero_extender.sym} -580 540 0 0 {name=x5}
C {lab_pin.sym} -430 520 0 1 {name=p103 lab=OUT}
C {lab_pin.sym} -730 540 0 0 {name=p104 lab=INSTR7}
C {lab_pin.sym} -430 540 0 1 {name=p105 lab=VDD}
C {lab_pin.sym} -430 560 0 1 {name=p106 lab=VSS}
C {ipin.sym} 200 -70 0 0 {name=p109 lab=ALU_SRC_B}
C {ipin.sym} 200 110 0 0 {name=p110 lab=ALU_SRC_A}
C {lab_pin.sym} 200 470 0 0 {name=p112 lab=VDD}
C {lab_pin.sym} 220 480 0 1 {name=p113 lab=VSS}
C {ipin.sym} -70 320 0 0 {name=p111 lab=IS_LUI}
C {engn1600-team1/CAD7/datapath_inv.sym} -50 320 0 0 {name=x17[3..0] kINV=1}
C {lab_pin.sym} -30 280 0 1 {name=p114 lab=VDD}
C {lab_pin.sym} 40 320 0 1 {name=p115 lab=IS_LUI[3..0]b}
C {lab_pin.sym} -30 360 0 1 {name=p116 lab=VSS}
C {lab_pin.sym} 200 430 0 0 {name=p117 lab=IS_LUI}
C {lab_pin.sym} 220 420 2 0 {name=p118 lab=IS_LUI[3..0]b}
C {ipin.sym} 200 610 0 0 {name=p119 sig_type=std_logic lab=SHIFT_VAL_SRC

}
C {lab_pin.sym} -980 -240 0 0 {name=p120 sig_type=std_logic lab=PC[15..0]
}
C {engn1600-team1/CAD7/datapath_inv.sym} -960 -240 0 0 {name=x18[15..0] kINV=1}
C {lab_pin.sym} -940 -280 0 1 {name=p121 lab=VDD}
C {lab_pin.sym} -940 -200 0 1 {name=p122 lab=VSS}
C {lab_pin.sym} -870 -240 2 0 {name=p123 sig_type=std_logic lab=PC[15..0]b
}
C {lab_pin.sym} -1100 540 0 0 {name=p124 sig_type=std_logic lab=CLK
}
C {engn1600-team1/CAD7/datapath_inv.sym} -1080 540 0 0 {name=x19[15..0] kINV=1}
C {lab_pin.sym} -1060 500 0 1 {name=p125 lab=VDD}
C {lab_pin.sym} -1060 580 0 1 {name=p126 lab=VSS}
C {lab_pin.sym} -990 540 2 0 {name=p127 sig_type=std_logic lab=CLK[15..0]b
}
C {ipin.sym} 630 10 0 0 {name=p47 lab=ALU_SEL[1..0]}
C {ipin.sym} -370 -30 0 0 {name=p10 lab=REG_WRITE}
C {ipin.sym} 630 -10 0 0 {name=p45 lab=ALU_CIN}
C {engn1600-team1/CAD7/datapath_inv.sym} 650 -460 0 0 {name=x20[15..0] kINV=1}
C {lab_pin.sym} 670 -500 0 1 {name=p129 lab=VDD}
C {lab_pin.sym} 630 -460 0 0 {name=p130 lab=RDST[15..0]b}
C {lab_pin.sym} 670 -420 0 1 {name=p131 lab=VSS}
C {ipin.sym} -1070 -30 0 0 {name=p107 lab=PC_BR}
C {ipin.sym} -1070 10 0 0 {name=p108 lab=PC_JMP}
C {ipin.sym} -1430 120 0 0 {name=p128 lab=CLK}
C {ipin.sym} -1430 140 0 0 {name=p132 lab=RSTn}
C {iopin.sym} -1430 160 2 0 {name=p133 lab=VSS}
C {iopin.sym} -1430 180 2 0 {name=p134 lab=VDD}
C {ipin.sym} -730 520 0 0 {name=p135 lab=EXTEND}
C {ipin.sym} 630 230 0 0 {name=p23 lab=SHIFT_AMT_SRC}
C {ipin.sym} -1070 50 0 0 {name=p54 lab=SI}
C {ipin.sym} -1070 70 0 0 {name=p136 lab=SE}
C {lab_pin.sym} -770 -10 0 1 {name=p137 lab=PC_NEXT15}
C {ipin.sym} 1220 140 3 0 {name=p138 lab=DATA_OUT[3..0]}
