v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {engn1600-team1/CAD7/datapath.sym} 0 0 0 0 {name=x1}
C {devices/code_shown.sym} 480 -30 0 0 {name=VERILOG only_toplevel=false
format="tcleval( @value )"
value="
.include /foss/designs/engn1600-team1/CAD7/lib.spice
"}
C {lab_pin.sym} 150 -200 0 1 {name=p1 lab=RDST[15..0]}
C {lab_pin.sym} 150 -180 0 1 {name=p2 lab=DMEM_ADDR[15..0]}
C {lab_pin.sym} -150 -200 0 0 {name=p3 lab=DMEM_Q[15..0]}
C {lab_pin.sym} -150 -180 0 0 {name=p4 lab=ALU_SRC_B}
C {lab_pin.sym} -150 -160 0 0 {name=p5 lab=PC_BR}
C {lab_pin.sym} -150 -140 0 0 {name=p6 lab=REG_WRITE}
C {lab_pin.sym} -150 -120 0 0 {name=p7 lab=ALU_CIN}
C {lab_pin.sym} -150 -100 0 0 {name=p8 lab=WE[15..0]}
C {lab_pin.sym} 150 -160 0 1 {name=p9 lab=ALU_F}
C {lab_pin.sym} -150 -80 0 0 {name=p10 lab=PC_JMP}
C {lab_pin.sym} -150 -60 0 0 {name=p11 lab=ALU_SEL[1..0]}
C {lab_pin.sym} -150 -40 0 0 {name=p12 lab=RA[15..0]}
C {lab_pin.sym} -150 -20 0 0 {name=p13 lab=RB[15..0]}
C {lab_pin.sym} 150 -140 0 1 {name=p14 lab=ALU_Z}
C {lab_pin.sym} 150 -120 0 1 {name=p15 lab=ALU_N}
C {lab_pin.sym} -150 0 0 0 {name=p16 lab=SI}
C {lab_pin.sym} -150 20 0 0 {name=p17 lab=SE}
C {lab_pin.sym} -150 40 0 0 {name=p18 lab=ALU_SRC_A}
C {lab_pin.sym} -150 60 0 0 {name=p19 lab=CLK}
C {lab_pin.sym} -150 80 0 0 {name=p20 lab=DATA_OUT[3..0]}
C {lab_pin.sym} -150 100 0 0 {name=p21 lab=RSTn}
C {lab_pin.sym} 150 -100 0 1 {name=p22 lab=VSS}
C {lab_pin.sym} 150 -80 0 1 {name=p23 lab=INSTR[15..0]}
C {lab_pin.sym} 150 -60 0 1 {name=p24 lab=VDD}
C {lab_pin.sym} -150 120 0 0 {name=p25 lab=SHIFT_AMT_SRC}
C {lab_pin.sym} -150 140 0 0 {name=p26 lab=IS_LUI}
C {lab_pin.sym} -150 160 0 0 {name=p27 lab=IMEM_Q[15..0]}
C {lab_pin.sym} 150 -40 0 1 {name=p28 lab=PC[15..0]}
C {lab_pin.sym} -150 180 0 0 {name=p29 lab=EXTEND}
C {lab_pin.sym} -150 200 0 0 {name=p30 lab=SHIFT_VAL_SRC}
C {ipin.sym} -490 -30 0 0 {name=p31 lab=CLK}
C {ipin.sym} -490 -10 0 0 {name=p32 lab=RSTn}
C {ipin.sym} -490 10 0 0 {name=p33 lab=SE}
C {ipin.sym} -490 30 0 0 {name=p34 lab=SI}
