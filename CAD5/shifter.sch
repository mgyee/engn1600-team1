v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {engn1600-team1/CAD5/2x1_mux.sym} 0 -300 3 1 {name=x1[15..0] kI=1 kYb=1}
C {iopin.sym} -350 -200 2 0 {name=p1 lab=VDD}
C {iopin.sym} -350 -180 2 0 {name=p2 lab=VSS}
C {lab_pin.sym} -10 -340 2 1 {name=p3 lab=D[15..0]b}
C {lab_pin.sym} 70 -310 0 1 {name=p4 lab=S0}
C {lab_pin.sym} 60 -290 0 1 {name=p5 lab=S0b}
C {lab_pin.sym} -70 -310 2 1 {name=p7 lab=VDD}
C {lab_pin.sym} -60 -290 0 0 {name=p8 lab=VSS}
C {lab_pin.sym} 10 -340 0 1 {name=p9 lab=D[14..0]b,VDD}
C {ipin.sym} -350 -160 0 0 {name=p11 lab=D[15..0]}
C {opin.sym} -350 -80 0 1 {name=p6 lab=Q[15..0]}
C {ipin.sym} -350 -120 0 0 {name=p10 lab=R[3..0]}
C {ipin.sym} -350 -140 0 0 {name=p12 lab=I[3..0]}
C {ipin.sym} -350 -100 0 0 {name=p13 lab=SEL}
C {engn1600-team1/CAD5/2x1_mux_cmos.sym} -310 -130 2 1 {name=x2[3..0] kI="'kI'" kYb="'kYb'" kY="'kY'"}
C {lab_pin.sym} -320 -200 1 0 {name=p14 lab=SEL}
C {lab_pin.sym} -300 -190 1 0 {name=p15 lab=SELb}
C {lab_pin.sym} -320 -60 3 0 {name=p17 lab=VDD}
C {lab_pin.sym} -300 -70 1 1 {name=p18 lab=VSS}
C {lab_pin.sym} -270 -120 0 1 {name=p16 lab=S[3..0]}
C {lab_pin.sym} -270 -140 0 1 {name=p19 lab=S[3..0]b}
C {engn1600-team1/CAD5/inv.sym} -330 80 0 0 {name=x1 kSELb="'kSELb'"}
C {lab_pin.sym} -350 80 0 0 {name=p20 lab=SEL}
C {lab_pin.sym} -240 80 2 0 {name=p21 lab=SELb}
C {lab_pin.sym} -310 40 0 1 {name=p22 lab=VDD}
C {lab_pin.sym} -310 120 0 1 {name=p23 lab=VSS}
C {lab_pin.sym} 0 -260 3 0 {name=p24 lab=X[15..0]b}
C {engn1600-team1/CAD5/2x1_mux.sym} 0 -100 3 1 {name=x3[15..0] kI=1 kYb=1}
C {lab_pin.sym} 70 -110 0 1 {name=p26 lab=S1}
C {lab_pin.sym} 60 -90 0 1 {name=p27 lab=S1b}
C {lab_pin.sym} -70 -110 2 1 {name=p28 lab=VDD}
C {lab_pin.sym} -60 -90 0 0 {name=p29 lab=VSS}
C {lab_pin.sym} 10 -140 0 1 {name=p30 lab=X[13..0]b,VDD*2}
C {engn1600-team1/CAD5/2x1_mux.sym} 0 100 3 1 {name=x10[15..0] kI=1 kYb=1}
C {lab_pin.sym} -10 60 2 1 {name=p25 lab=Y[15..0]b}
C {lab_pin.sym} 70 90 0 1 {name=p32 lab=S2}
C {lab_pin.sym} 60 110 0 1 {name=p33 lab=S2b}
C {lab_pin.sym} -70 90 2 1 {name=p34 lab=VDD}
C {lab_pin.sym} -60 110 0 0 {name=p35 lab=VSS}
C {lab_pin.sym} 10 60 0 1 {name=p36 lab=Y[11..0]b,VDD*4}
C {lab_pin.sym} -10 260 0 0 {name=p37 lab=Z[15..0]b}
C {engn1600-team1/CAD5/2x1_mux.sym} 0 300 3 1 {name=x4[15..0] kI=1 kYb=1 }
C {lab_pin.sym} 70 290 0 1 {name=p38 lab=S3}
C {lab_pin.sym} 60 310 0 1 {name=p39 lab=S3b}
C {lab_pin.sym} -70 290 2 1 {name=p40 lab=VDD}
C {lab_pin.sym} -60 310 0 0 {name=p41 lab=VSS}
C {lab_pin.sym} 10 260 0 1 {name=p42 lab=Z[7..0]b,VDD*8}
C {lab_pin.sym} 0 340 3 0 {name=p43 lab=Q[15..0]b}
C {lab_pin.sym} -10 -140 0 0 {name=p44 lab=X[15..0]b}
C {lab_pin.sym} 0 -60 1 1 {name=p51 lab=Y[15..0]b}
C {lab_pin.sym} 0 140 1 1 {name=p52 lab=Z[15..0]b}
C {code_shown.sym} -430 -380 0 0 {name=s1 only_toplevel=false value="
.param kI=6.973684
.param kYb=6.973684
.param kY=7.236842
.param kSELb=6
"}
C {engn1600-team1/CAD5/inv.sym} -330 230 0 0 {name=x5[15..0] kSELb=1}
C {lab_pin.sym} -310 190 0 1 {name=p68 lab=VDD}
C {lab_pin.sym} -310 270 0 1 {name=p69 lab=VSS}
C {engn1600-team1/CAD5/inv.sym} -330 380 0 0 {name=x9[15..0] kSELb=1}
C {lab_pin.sym} -310 340 0 1 {name=p72 lab=VDD}
C {lab_pin.sym} -310 420 0 1 {name=p73 lab=VSS}
C {lab_pin.sym} -350 230 0 0 {name=p66 lab=Q[15..0]b}
C {lab_pin.sym} -240 230 2 0 {name=p67 lab=Q[15..0]}
C {lab_pin.sym} -350 380 2 1 {name=p70 lab=D[15..0]}
C {lab_pin.sym} -240 380 0 1 {name=p71 lab=D[15..0]b}
