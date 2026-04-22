v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 930 -330 960 -330 {lab=DMEM_Q[15..0]
bus=true}
C {engn1600-team1/CAD4/alu.sym} 780 0 0 0 {name=x1}
C {engn1600-team1/CAD3/rf.sym} -840 -330 0 0 {name=x2}
C {engn1600-team1/CAD6/pc.sym} -840 -630 0 0 {name=x3}
C {engn1600-team1/CAD5/shifter.sym} 780 200 0 0 {name=x4}
C {lab_pin.sym} -690 -700 0 1 {name=p1 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} 930 -50 0 1 {name=p2 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} -690 -380 0 1 {name=p3 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} 930 170 0 1 {name=p4 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} -690 -680 0 1 {name=p5 sig_type=std_logic lab=VSS

}
C {lab_pin.sym} -690 -360 0 1 {name=p6 sig_type=std_logic lab=VSS

}
C {lab_pin.sym} 930 -30 0 1 {name=p7 sig_type=std_logic lab=VSS

}
C {lab_pin.sym} 930 190 0 1 {name=p8 sig_type=std_logic lab=VSS

}
C {lab_pin.sym} -990 -340 0 0 {name=p9 sig_type=std_logic lab=WE[15..0]}
C {lab_pin.sym} -990 -360 0 0 {name=p10 sig_type=std_logic lab=WEM
}
C {lab_pin.sym} -990 -320 0 0 {name=p11 sig_type=std_logic lab=RA[15..0]}
C {lab_pin.sym} -990 -300 0 0 {name=p12 sig_type=std_logic lab=RB[15..0]}
C {lab_pin.sym} -990 -380 0 0 {name=p13 sig_type=std_logic lab=CLK
}
C {lab_pin.sym} -820 -250 3 0 {name=p14 sig_type=std_logic lab=RDST[15..0]b
}
C {lab_pin.sym} -840 -250 3 0 {name=p15 sig_type=std_logic lab=RSRC[15..0]b
}
C {lab_pin.sym} -860 -250 3 0 {name=p16 sig_type=std_logic lab=RF_D[15..0]
}
C {engn1600-team1/CAD4/4x1_mux.sym} 1360 0 0 0 {name=x5[15..0]}
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
C {engn1600-team1/CAD6/2x1_mux.sym} -550 -430 0 0 {name=x6}
C {engn1600-team1/CAD6/2x1_mux.sym} -550 -260 0 0 {name=x7}
C {lab_pin.sym} -590 -270 0 0 {name=p23 sig_type=std_logic lab=RDST[15..0]
}
C {lab_pin.sym} -590 -270 0 0 {name=p24 sig_type=std_logic lab=RDST[15..0]
}
C {lab_pin.sym} -590 -440 0 0 {name=p25 sig_type=std_logic lab=RSRC[15..0]
}
C {lab_pin.sym} -510 -260 0 1 {name=p26 sig_type=std_logic lab=ALU_A[15..0]

}
C {lab_pin.sym} -510 -430 0 1 {name=p27 sig_type=std_logic lab=ALU_B[15..0]

}
C {lab_pin.sym} 630 -30 0 0 {name=p28 sig_type=std_logic lab=ALU_B[15..0]

}
C {lab_pin.sym} 630 -50 0 0 {name=p29 sig_type=std_logic lab=ALU_A[15..0]

}
C {lab_pin.sym} -560 -500 0 1 {name=p30 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} -560 -330 0 1 {name=p31 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} -540 -490 0 1 {name=p32 sig_type=std_logic lab=VSS

}
C {lab_pin.sym} -540 -320 0 1 {name=p33 sig_type=std_logic lab=VSS

}
C {lab_pin.sym} 1530 0 0 1 {name=p34 sig_type=std_logic lab=D[15..0]

}
C {lab_pin.sym} 930 210 0 1 {name=p35 sig_type=std_logic lab=SHIFTER_Q[15..0]b

}
C {engn1600-team1/CAD6/sign_extend.sym} -1050 0 0 0 {name=x8}
C {engn1600-team1/CAD6/2x1_mux.sym} -690 -100 0 0 {name=x9}
C {lab_pin.sym} -700 -170 0 1 {name=p36 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} -680 -160 0 1 {name=p37 sig_type=std_logic lab=VSS

}
C {lab_pin.sym} -930 -20 0 1 {name=p38 sig_type=std_logic lab=VSS

}
C {lab_pin.sym} -930 -130 0 1 {name=p39 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} 1330 90 3 0 {name=p40 lab=SA}
C {lab_pin.sym} 1350 80 3 0 {name=p41 lab=SB}
C {lab_pin.sym} 1370 70 3 0 {name=p42 lab=SC}
C {lab_pin.sym} 1390 60 3 0 {name=p43 lab=SD}
C {engn1600-team1/CAD7/inv.sym} 1440 0 0 0 {name=x1[15..0] kINV=1}
C {lab_pin.sym} 1460 -40 0 1 {name=p44 lab=VDD}
C {lab_pin.sym} 1460 40 0 1 {name=p46 lab=VSS}
C {lab_pin.sym} 630 -10 0 0 {name=p45 lab=ALU_CIN}
C {lab_pin.sym} 630 10 0 0 {name=p47 lab=ALU_SEL[1..0]}
C {lab_pin.sym} 930 10 0 1 {name=p48 lab=ALU_F}
C {lab_pin.sym} 930 30 0 1 {name=p49 lab=ALU_Z}
C {lab_pin.sym} 930 50 0 1 {name=p50 lab=ALU_N}
C {lab_pin.sym} 630 170 0 0 {name=p51 lab=SHIFTER_D[15..0]}
C {lab_pin.sym} 630 190 0 0 {name=p52 lab=SHIFTER_I[3..0]}
C {lab_pin.sym} 630 210 0 0 {name=p53 lab=SHIFTER_R[3..0]}
C {lab_pin.sym} 630 230 0 0 {name=p54 lab=SHIFTER_SEL}
C {engn1600-team1/CAD7/2x1_mux.sym} 210 360 0 0 {name=x2[15..0]}
C {lab_pin.sym} 250 360 2 0 {name=p55 lab=SHIFTER_I[3..0]}
C {lab_pin.sym} 170 350 0 0 {name=p56 lab=IMM[3..0]}
C {lab_pin.sym} 170 370 0 0 {name=p57 lab=VDD,VSS*3}
C {engn1600-team1/CAD7/inv.sym} 190 200 0 0 {name=x3[3..0] kINV=1}
C {lab_pin.sym} 280 200 2 0 {name=p58 lab=SHIFTER_R[3..0]}
C {lab_pin.sym} 170 200 0 0 {name=p59 lab=RSRC[3..0]b}
C {lab_pin.sym} 210 160 0 1 {name=p60 lab=VDD}
C {lab_pin.sym} 210 240 0 1 {name=p61 lab=VSS}
C {lab_pin.sym} 200 290 0 0 {name=p64 lab=VDD}
C {lab_pin.sym} 220 300 0 1 {name=p65 lab=VSS}
C {engn1600-team1/CAD7/2x1_mux_pass.sym} 210 40 0 0 {name=x4[15..0]}
C {engn1600-team1/CAD7/inv.sym} 270 40 0 0 {name=x6[15..0] kINV=1}
C {lab_pin.sym} 360 40 2 0 {name=p67 sig_type=std_logic lab=ALU_A[15..0]

}
C {engn1600-team1/CAD7/2x1_mux_pass.sym} 210 -140 0 0 {name=x7[15..0]}
C {engn1600-team1/CAD7/inv.sym} 270 -140 0 0 {name=x8[15..0] kINV=1}
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
C {opin.sym} 740 -370 0 0 {name=p75 lab=RDST[15..0]}
C {ipin.sym} 930 -330 0 0 {name=p76 lab=DMEM_Q[15..0]}
C {opin.sym} 740 -300 0 0 {name=p80 lab=DMEM_ADDR}
C {engn1600-team1/CAD7/inv.sym} 650 -300 0 0 {name=x9[15..0] kINV=1}
C {lab_pin.sym} 670 -340 0 1 {name=p81 lab=VDD}
C {lab_pin.sym} 630 -300 0 0 {name=p82 lab=RSRC[15..0]b}
C {lab_pin.sym} 670 -260 0 1 {name=p83 lab=VSS}
C {lab_pin.sym} 1070 -330 0 1 {name=p84 sig_type=std_logic lab=DMEM_Q[15..0]b

}
C {engn1600-team1/CAD7/inv.sym} 980 -330 0 0 {name=x10[15..0] kINV=1}
C {lab_pin.sym} 1000 -370 0 1 {name=p85 lab=VDD}
C {lab_pin.sym} 1000 -290 0 1 {name=p86 lab=VSS}
C {engn1600-team1/CAD7/2x1_mux_pass.sym} 210 540 0 0 {name=x12[15..0]}
C {engn1600-team1/CAD7/inv.sym} 270 540 0 0 {name=x13[15..0] kINV=1}
C {lab_pin.sym} 290 500 0 1 {name=p88 lab=VDD}
C {lab_pin.sym} 290 580 0 1 {name=p89 lab=VSS}
C {lab_pin.sym} 360 540 2 0 {name=p87 lab=SHIFTER_D[15..0]}
C {lab_pin.sym} 170 550 0 0 {name=p92 sig_type=std_logic lab=IMM[15..0]b
}
C {lab_pin.sym} 170 530 0 0 {name=p90 sig_type=std_logic lab=RDST[15..0]b
}
