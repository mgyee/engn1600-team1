v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {engn1600-team1/CAD7/datapath.sym} 0 0 0 0 {name=x1}
C {devices/code_shown.sym} 480 -30 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
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
C {devices/vsource.sym} 0 400 1 0 {name=VDMEM_Q15 value=0}
C {devices/lab_pin.sym} 30 400 2 0 {name=pDMEM_Q15 lab=DMEM_Q15}
C {devices/gnd.sym} -30 400 1 0 {name=gDMEM_Q15}
C {devices/vsource.sym} 150 400 1 0 {name=VDMEM_Q14 value=0}
C {devices/lab_pin.sym} 180 400 2 0 {name=pDMEM_Q14 lab=DMEM_Q14}
C {devices/gnd.sym} 120 400 1 0 {name=gDMEM_Q14}
C {devices/vsource.sym} 300 400 1 0 {name=VDMEM_Q13 value=0}
C {devices/lab_pin.sym} 330 400 2 0 {name=pDMEM_Q13 lab=DMEM_Q13}
C {devices/gnd.sym} 270 400 1 0 {name=gDMEM_Q13}
C {devices/vsource.sym} 450 400 1 0 {name=VDMEM_Q12 value=0}
C {devices/lab_pin.sym} 480 400 2 0 {name=pDMEM_Q12 lab=DMEM_Q12}
C {devices/gnd.sym} 420 400 1 0 {name=gDMEM_Q12}
C {devices/vsource.sym} 600 400 1 0 {name=VDMEM_Q11 value=0}
C {devices/lab_pin.sym} 630 400 2 0 {name=pDMEM_Q11 lab=DMEM_Q11}
C {devices/gnd.sym} 570 400 1 0 {name=gDMEM_Q11}
C {devices/vsource.sym} 750 400 1 0 {name=VDMEM_Q10 value=0}
C {devices/lab_pin.sym} 780 400 2 0 {name=pDMEM_Q10 lab=DMEM_Q10}
C {devices/gnd.sym} 720 400 1 0 {name=gDMEM_Q10}
C {devices/vsource.sym} 900 400 1 0 {name=VDMEM_Q9 value=0}
C {devices/lab_pin.sym} 930 400 2 0 {name=pDMEM_Q9 lab=DMEM_Q9}
C {devices/gnd.sym} 870 400 1 0 {name=gDMEM_Q9}
C {devices/vsource.sym} 1050 400 1 0 {name=VDMEM_Q8 value=0}
C {devices/lab_pin.sym} 1080 400 2 0 {name=pDMEM_Q8 lab=DMEM_Q8}
C {devices/gnd.sym} 1020 400 1 0 {name=gDMEM_Q8}
C {devices/vsource.sym} 1200 400 1 0 {name=VDMEM_Q7 value=0}
C {devices/lab_pin.sym} 1230 400 2 0 {name=pDMEM_Q7 lab=DMEM_Q7}
C {devices/gnd.sym} 1170 400 1 0 {name=gDMEM_Q7}
C {devices/vsource.sym} 1350 400 1 0 {name=VDMEM_Q6 value=0}
C {devices/lab_pin.sym} 1380 400 2 0 {name=pDMEM_Q6 lab=DMEM_Q6}
C {devices/gnd.sym} 1320 400 1 0 {name=gDMEM_Q6}
C {devices/vsource.sym} 1500 400 1 0 {name=VDMEM_Q5 value=0}
C {devices/lab_pin.sym} 1530 400 2 0 {name=pDMEM_Q5 lab=DMEM_Q5}
C {devices/gnd.sym} 1470 400 1 0 {name=gDMEM_Q5}
C {devices/vsource.sym} 1650 400 1 0 {name=VDMEM_Q4 value=0}
C {devices/lab_pin.sym} 1680 400 2 0 {name=pDMEM_Q4 lab=DMEM_Q4}
C {devices/gnd.sym} 1620 400 1 0 {name=gDMEM_Q4}
C {devices/vsource.sym} 1800 400 1 0 {name=VDMEM_Q3 value=0}
C {devices/lab_pin.sym} 1830 400 2 0 {name=pDMEM_Q3 lab=DMEM_Q3}
C {devices/gnd.sym} 1770 400 1 0 {name=gDMEM_Q3}
C {devices/vsource.sym} 1950 400 1 0 {name=VDMEM_Q2 value=0}
C {devices/lab_pin.sym} 1980 400 2 0 {name=pDMEM_Q2 lab=DMEM_Q2}
C {devices/gnd.sym} 1920 400 1 0 {name=gDMEM_Q2}
C {devices/vsource.sym} 2100 400 1 0 {name=VDMEM_Q1 value=0}
C {devices/lab_pin.sym} 2130 400 2 0 {name=pDMEM_Q1 lab=DMEM_Q1}
C {devices/gnd.sym} 2070 400 1 0 {name=gDMEM_Q1}
C {devices/vsource.sym} 2250 400 1 0 {name=VDMEM_Q0 value=0}
C {devices/lab_pin.sym} 2280 400 2 0 {name=pDMEM_Q0 lab=DMEM_Q0}
C {devices/gnd.sym} 2220 400 1 0 {name=gDMEM_Q0}
C {devices/vsource.sym} 0 500 1 0 {name=VALU_SRC_B value=0}
C {devices/lab_pin.sym} 30 500 2 0 {name=pALU_SRC_B lab=ALU_SRC_B}
C {devices/gnd.sym} -30 500 1 0 {name=gALU_SRC_B}
C {devices/vsource.sym} 0 600 1 0 {name=VPC_BR value=0}
C {devices/lab_pin.sym} 30 600 2 0 {name=pPC_BR lab=PC_BR}
C {devices/gnd.sym} -30 600 1 0 {name=gPC_BR}
C {devices/vsource.sym} 0 700 1 0 {name=VREG_WRITE value=0}
C {devices/lab_pin.sym} 30 700 2 0 {name=pREG_WRITE lab=REG_WRITE}
C {devices/gnd.sym} -30 700 1 0 {name=gREG_WRITE}
C {devices/vsource.sym} 0 800 1 0 {name=VALU_CIN value=0}
C {devices/lab_pin.sym} 30 800 2 0 {name=pALU_CIN lab=ALU_CIN}
C {devices/gnd.sym} -30 800 1 0 {name=gALU_CIN}
C {devices/vsource.sym} 0 900 1 0 {name=VWE15 value=0}
C {devices/lab_pin.sym} 30 900 2 0 {name=pWE15 lab=WE15}
C {devices/gnd.sym} -30 900 1 0 {name=gWE15}
C {devices/vsource.sym} 150 900 1 0 {name=VWE14 value=0}
C {devices/lab_pin.sym} 180 900 2 0 {name=pWE14 lab=WE14}
C {devices/gnd.sym} 120 900 1 0 {name=gWE14}
C {devices/vsource.sym} 300 900 1 0 {name=VWE13 value=0}
C {devices/lab_pin.sym} 330 900 2 0 {name=pWE13 lab=WE13}
C {devices/gnd.sym} 270 900 1 0 {name=gWE13}
C {devices/vsource.sym} 450 900 1 0 {name=VWE12 value=0}
C {devices/lab_pin.sym} 480 900 2 0 {name=pWE12 lab=WE12}
C {devices/gnd.sym} 420 900 1 0 {name=gWE12}
C {devices/vsource.sym} 600 900 1 0 {name=VWE11 value=0}
C {devices/lab_pin.sym} 630 900 2 0 {name=pWE11 lab=WE11}
C {devices/gnd.sym} 570 900 1 0 {name=gWE11}
C {devices/vsource.sym} 750 900 1 0 {name=VWE10 value=0}
C {devices/lab_pin.sym} 780 900 2 0 {name=pWE10 lab=WE10}
C {devices/gnd.sym} 720 900 1 0 {name=gWE10}
C {devices/vsource.sym} 900 900 1 0 {name=VWE9 value=0}
C {devices/lab_pin.sym} 930 900 2 0 {name=pWE9 lab=WE9}
C {devices/gnd.sym} 870 900 1 0 {name=gWE9}
C {devices/vsource.sym} 1050 900 1 0 {name=VWE8 value=0}
C {devices/lab_pin.sym} 1080 900 2 0 {name=pWE8 lab=WE8}
C {devices/gnd.sym} 1020 900 1 0 {name=gWE8}
C {devices/vsource.sym} 1200 900 1 0 {name=VWE7 value=0}
C {devices/lab_pin.sym} 1230 900 2 0 {name=pWE7 lab=WE7}
C {devices/gnd.sym} 1170 900 1 0 {name=gWE7}
C {devices/vsource.sym} 1350 900 1 0 {name=VWE6 value=0}
C {devices/lab_pin.sym} 1380 900 2 0 {name=pWE6 lab=WE6}
C {devices/gnd.sym} 1320 900 1 0 {name=gWE6}
C {devices/vsource.sym} 1500 900 1 0 {name=VWE5 value=0}
C {devices/lab_pin.sym} 1530 900 2 0 {name=pWE5 lab=WE5}
C {devices/gnd.sym} 1470 900 1 0 {name=gWE5}
C {devices/vsource.sym} 1650 900 1 0 {name=VWE4 value=0}
C {devices/lab_pin.sym} 1680 900 2 0 {name=pWE4 lab=WE4}
C {devices/gnd.sym} 1620 900 1 0 {name=gWE4}
C {devices/vsource.sym} 1800 900 1 0 {name=VWE3 value=0}
C {devices/lab_pin.sym} 1830 900 2 0 {name=pWE3 lab=WE3}
C {devices/gnd.sym} 1770 900 1 0 {name=gWE3}
C {devices/vsource.sym} 1950 900 1 0 {name=VWE2 value=0}
C {devices/lab_pin.sym} 1980 900 2 0 {name=pWE2 lab=WE2}
C {devices/gnd.sym} 1920 900 1 0 {name=gWE2}
C {devices/vsource.sym} 2100 900 1 0 {name=VWE1 value=0}
C {devices/lab_pin.sym} 2130 900 2 0 {name=pWE1 lab=WE1}
C {devices/gnd.sym} 2070 900 1 0 {name=gWE1}
C {devices/vsource.sym} 2250 900 1 0 {name=VWE0 value=0}
C {devices/lab_pin.sym} 2280 900 2 0 {name=pWE0 lab=WE0}
C {devices/gnd.sym} 2220 900 1 0 {name=gWE0}
C {devices/vsource.sym} 0 1000 1 0 {name=VPC_JMP value=0}
C {devices/lab_pin.sym} 30 1000 2 0 {name=pPC_JMP lab=PC_JMP}
C {devices/gnd.sym} -30 1000 1 0 {name=gPC_JMP}
C {devices/vsource.sym} 0 1100 1 0 {name=VALU_SEL1 value=0}
C {devices/lab_pin.sym} 30 1100 2 0 {name=pALU_SEL1 lab=ALU_SEL1}
C {devices/gnd.sym} -30 1100 1 0 {name=gALU_SEL1}
C {devices/vsource.sym} 150 1100 1 0 {name=VALU_SEL0 value=0}
C {devices/lab_pin.sym} 180 1100 2 0 {name=pALU_SEL0 lab=ALU_SEL0}
C {devices/gnd.sym} 120 1100 1 0 {name=gALU_SEL0}
C {devices/vsource.sym} 0 1200 1 0 {name=VRA15 value=0}
C {devices/lab_pin.sym} 30 1200 2 0 {name=pRA15 lab=RA15}
C {devices/gnd.sym} -30 1200 1 0 {name=gRA15}
C {devices/vsource.sym} 150 1200 1 0 {name=VRA14 value=0}
C {devices/lab_pin.sym} 180 1200 2 0 {name=pRA14 lab=RA14}
C {devices/gnd.sym} 120 1200 1 0 {name=gRA14}
C {devices/vsource.sym} 300 1200 1 0 {name=VRA13 value=0}
C {devices/lab_pin.sym} 330 1200 2 0 {name=pRA13 lab=RA13}
C {devices/gnd.sym} 270 1200 1 0 {name=gRA13}
C {devices/vsource.sym} 450 1200 1 0 {name=VRA12 value=0}
C {devices/lab_pin.sym} 480 1200 2 0 {name=pRA12 lab=RA12}
C {devices/gnd.sym} 420 1200 1 0 {name=gRA12}
C {devices/vsource.sym} 600 1200 1 0 {name=VRA11 value=0}
C {devices/lab_pin.sym} 630 1200 2 0 {name=pRA11 lab=RA11}
C {devices/gnd.sym} 570 1200 1 0 {name=gRA11}
C {devices/vsource.sym} 750 1200 1 0 {name=VRA10 value=0}
C {devices/lab_pin.sym} 780 1200 2 0 {name=pRA10 lab=RA10}
C {devices/gnd.sym} 720 1200 1 0 {name=gRA10}
C {devices/vsource.sym} 900 1200 1 0 {name=VRA9 value=0}
C {devices/lab_pin.sym} 930 1200 2 0 {name=pRA9 lab=RA9}
C {devices/gnd.sym} 870 1200 1 0 {name=gRA9}
C {devices/vsource.sym} 1050 1200 1 0 {name=VRA8 value=0}
C {devices/lab_pin.sym} 1080 1200 2 0 {name=pRA8 lab=RA8}
C {devices/gnd.sym} 1020 1200 1 0 {name=gRA8}
C {devices/vsource.sym} 1200 1200 1 0 {name=VRA7 value=0}
C {devices/lab_pin.sym} 1230 1200 2 0 {name=pRA7 lab=RA7}
C {devices/gnd.sym} 1170 1200 1 0 {name=gRA7}
C {devices/vsource.sym} 1350 1200 1 0 {name=VRA6 value=0}
C {devices/lab_pin.sym} 1380 1200 2 0 {name=pRA6 lab=RA6}
C {devices/gnd.sym} 1320 1200 1 0 {name=gRA6}
C {devices/vsource.sym} 1500 1200 1 0 {name=VRA5 value=0}
C {devices/lab_pin.sym} 1530 1200 2 0 {name=pRA5 lab=RA5}
C {devices/gnd.sym} 1470 1200 1 0 {name=gRA5}
C {devices/vsource.sym} 1650 1200 1 0 {name=VRA4 value=0}
C {devices/lab_pin.sym} 1680 1200 2 0 {name=pRA4 lab=RA4}
C {devices/gnd.sym} 1620 1200 1 0 {name=gRA4}
C {devices/vsource.sym} 1800 1200 1 0 {name=VRA3 value=0}
C {devices/lab_pin.sym} 1830 1200 2 0 {name=pRA3 lab=RA3}
C {devices/gnd.sym} 1770 1200 1 0 {name=gRA3}
C {devices/vsource.sym} 1950 1200 1 0 {name=VRA2 value=0}
C {devices/lab_pin.sym} 1980 1200 2 0 {name=pRA2 lab=RA2}
C {devices/gnd.sym} 1920 1200 1 0 {name=gRA2}
C {devices/vsource.sym} 2100 1200 1 0 {name=VRA1 value=0}
C {devices/lab_pin.sym} 2130 1200 2 0 {name=pRA1 lab=RA1}
C {devices/gnd.sym} 2070 1200 1 0 {name=gRA1}
C {devices/vsource.sym} 2250 1200 1 0 {name=VRA0 value=0}
C {devices/lab_pin.sym} 2280 1200 2 0 {name=pRA0 lab=RA0}
C {devices/gnd.sym} 2220 1200 1 0 {name=gRA0}
C {devices/vsource.sym} 0 1300 1 0 {name=VRB15 value=0}
C {devices/lab_pin.sym} 30 1300 2 0 {name=pRB15 lab=RB15}
C {devices/gnd.sym} -30 1300 1 0 {name=gRB15}
C {devices/vsource.sym} 150 1300 1 0 {name=VRB14 value=0}
C {devices/lab_pin.sym} 180 1300 2 0 {name=pRB14 lab=RB14}
C {devices/gnd.sym} 120 1300 1 0 {name=gRB14}
C {devices/vsource.sym} 300 1300 1 0 {name=VRB13 value=0}
C {devices/lab_pin.sym} 330 1300 2 0 {name=pRB13 lab=RB13}
C {devices/gnd.sym} 270 1300 1 0 {name=gRB13}
C {devices/vsource.sym} 450 1300 1 0 {name=VRB12 value=0}
C {devices/lab_pin.sym} 480 1300 2 0 {name=pRB12 lab=RB12}
C {devices/gnd.sym} 420 1300 1 0 {name=gRB12}
C {devices/vsource.sym} 600 1300 1 0 {name=VRB11 value=0}
C {devices/lab_pin.sym} 630 1300 2 0 {name=pRB11 lab=RB11}
C {devices/gnd.sym} 570 1300 1 0 {name=gRB11}
C {devices/vsource.sym} 750 1300 1 0 {name=VRB10 value=0}
C {devices/lab_pin.sym} 780 1300 2 0 {name=pRB10 lab=RB10}
C {devices/gnd.sym} 720 1300 1 0 {name=gRB10}
C {devices/vsource.sym} 900 1300 1 0 {name=VRB9 value=0}
C {devices/lab_pin.sym} 930 1300 2 0 {name=pRB9 lab=RB9}
C {devices/gnd.sym} 870 1300 1 0 {name=gRB9}
C {devices/vsource.sym} 1050 1300 1 0 {name=VRB8 value=0}
C {devices/lab_pin.sym} 1080 1300 2 0 {name=pRB8 lab=RB8}
C {devices/gnd.sym} 1020 1300 1 0 {name=gRB8}
C {devices/vsource.sym} 1200 1300 1 0 {name=VRB7 value=0}
C {devices/lab_pin.sym} 1230 1300 2 0 {name=pRB7 lab=RB7}
C {devices/gnd.sym} 1170 1300 1 0 {name=gRB7}
C {devices/vsource.sym} 1350 1300 1 0 {name=VRB6 value=0}
C {devices/lab_pin.sym} 1380 1300 2 0 {name=pRB6 lab=RB6}
C {devices/gnd.sym} 1320 1300 1 0 {name=gRB6}
C {devices/vsource.sym} 1500 1300 1 0 {name=VRB5 value=0}
C {devices/lab_pin.sym} 1530 1300 2 0 {name=pRB5 lab=RB5}
C {devices/gnd.sym} 1470 1300 1 0 {name=gRB5}
C {devices/vsource.sym} 1650 1300 1 0 {name=VRB4 value=0}
C {devices/lab_pin.sym} 1680 1300 2 0 {name=pRB4 lab=RB4}
C {devices/gnd.sym} 1620 1300 1 0 {name=gRB4}
C {devices/vsource.sym} 1800 1300 1 0 {name=VRB3 value=0}
C {devices/lab_pin.sym} 1830 1300 2 0 {name=pRB3 lab=RB3}
C {devices/gnd.sym} 1770 1300 1 0 {name=gRB3}
C {devices/vsource.sym} 1950 1300 1 0 {name=VRB2 value=0}
C {devices/lab_pin.sym} 1980 1300 2 0 {name=pRB2 lab=RB2}
C {devices/gnd.sym} 1920 1300 1 0 {name=gRB2}
C {devices/vsource.sym} 2100 1300 1 0 {name=VRB1 value=0}
C {devices/lab_pin.sym} 2130 1300 2 0 {name=pRB1 lab=RB1}
C {devices/gnd.sym} 2070 1300 1 0 {name=gRB1}
C {devices/vsource.sym} 2250 1300 1 0 {name=VRB0 value=0}
C {devices/lab_pin.sym} 2280 1300 2 0 {name=pRB0 lab=RB0}
C {devices/gnd.sym} 2220 1300 1 0 {name=gRB0}
C {devices/vsource.sym} 0 1400 1 0 {name=VSI value=0}
C {devices/lab_pin.sym} 30 1400 2 0 {name=pSI lab=SI}
C {devices/gnd.sym} -30 1400 1 0 {name=gSI}
C {devices/vsource.sym} 0 1500 1 0 {name=VSE value=0}
C {devices/lab_pin.sym} 30 1500 2 0 {name=pSE lab=SE}
C {devices/gnd.sym} -30 1500 1 0 {name=gSE}
C {devices/vsource.sym} 0 1600 1 0 {name=VALU_SRC_A value=0}
C {devices/lab_pin.sym} 30 1600 2 0 {name=pALU_SRC_A lab=ALU_SRC_A}
C {devices/gnd.sym} -30 1600 1 0 {name=gALU_SRC_A}
C {devices/vsource.sym} 0 1700 1 0 {name=VCLK value=0}
C {devices/lab_pin.sym} 30 1700 2 0 {name=pCLK lab=CLK}
C {devices/gnd.sym} -30 1700 1 0 {name=gCLK}
C {devices/vsource.sym} 0 1800 1 0 {name=VDATA_OUT3 value=0}
C {devices/lab_pin.sym} 30 1800 2 0 {name=pDATA_OUT3 lab=DATA_OUT3}
C {devices/gnd.sym} -30 1800 1 0 {name=gDATA_OUT3}
C {devices/vsource.sym} 150 1800 1 0 {name=VDATA_OUT2 value=0}
C {devices/lab_pin.sym} 180 1800 2 0 {name=pDATA_OUT2 lab=DATA_OUT2}
C {devices/gnd.sym} 120 1800 1 0 {name=gDATA_OUT2}
C {devices/vsource.sym} 300 1800 1 0 {name=VDATA_OUT1 value=0}
C {devices/lab_pin.sym} 330 1800 2 0 {name=pDATA_OUT1 lab=DATA_OUT1}
C {devices/gnd.sym} 270 1800 1 0 {name=gDATA_OUT1}
C {devices/vsource.sym} 450 1800 1 0 {name=VDATA_OUT0 value=0}
C {devices/lab_pin.sym} 480 1800 2 0 {name=pDATA_OUT0 lab=DATA_OUT0}
C {devices/gnd.sym} 420 1800 1 0 {name=gDATA_OUT0}
C {devices/vsource.sym} 0 1900 1 0 {name=VRSTn value=0}
C {devices/lab_pin.sym} 30 1900 2 0 {name=pRSTn lab=RSTn}
C {devices/gnd.sym} -30 1900 1 0 {name=gRSTn}
C {devices/vsource.sym} 0 2000 1 0 {name=VVSS value=0}
C {devices/lab_pin.sym} 30 2000 2 0 {name=pVSS lab=VSS}
C {devices/gnd.sym} -30 2000 1 0 {name=gVSS}
C {devices/vsource.sym} 0 2100 1 0 {name=VVDD value=0}
C {devices/lab_pin.sym} 30 2100 2 0 {name=pVDD lab=VDD}
C {devices/gnd.sym} -30 2100 1 0 {name=gVDD}
C {devices/vsource.sym} 0 2200 1 0 {name=VSHIFT_AMT_SRC value=0}
C {devices/lab_pin.sym} 30 2200 2 0 {name=pSHIFT_AMT_SRC lab=SHIFT_AMT_SRC}
C {devices/gnd.sym} -30 2200 1 0 {name=gSHIFT_AMT_SRC}
C {devices/vsource.sym} 0 2300 1 0 {name=VIS_LUI value=0}
C {devices/lab_pin.sym} 30 2300 2 0 {name=pIS_LUI lab=IS_LUI}
C {devices/gnd.sym} -30 2300 1 0 {name=gIS_LUI}
C {devices/vsource.sym} 0 2400 1 0 {name=VIMEM_Q15 value=0}
C {devices/lab_pin.sym} 30 2400 2 0 {name=pIMEM_Q15 lab=IMEM_Q15}
C {devices/gnd.sym} -30 2400 1 0 {name=gIMEM_Q15}
C {devices/vsource.sym} 150 2400 1 0 {name=VIMEM_Q14 value=0}
C {devices/lab_pin.sym} 180 2400 2 0 {name=pIMEM_Q14 lab=IMEM_Q14}
C {devices/gnd.sym} 120 2400 1 0 {name=gIMEM_Q14}
C {devices/vsource.sym} 300 2400 1 0 {name=VIMEM_Q13 value=0}
C {devices/lab_pin.sym} 330 2400 2 0 {name=pIMEM_Q13 lab=IMEM_Q13}
C {devices/gnd.sym} 270 2400 1 0 {name=gIMEM_Q13}
C {devices/vsource.sym} 450 2400 1 0 {name=VIMEM_Q12 value=0}
C {devices/lab_pin.sym} 480 2400 2 0 {name=pIMEM_Q12 lab=IMEM_Q12}
C {devices/gnd.sym} 420 2400 1 0 {name=gIMEM_Q12}
C {devices/vsource.sym} 600 2400 1 0 {name=VIMEM_Q11 value=0}
C {devices/lab_pin.sym} 630 2400 2 0 {name=pIMEM_Q11 lab=IMEM_Q11}
C {devices/gnd.sym} 570 2400 1 0 {name=gIMEM_Q11}
C {devices/vsource.sym} 750 2400 1 0 {name=VIMEM_Q10 value=0}
C {devices/lab_pin.sym} 780 2400 2 0 {name=pIMEM_Q10 lab=IMEM_Q10}
C {devices/gnd.sym} 720 2400 1 0 {name=gIMEM_Q10}
C {devices/vsource.sym} 900 2400 1 0 {name=VIMEM_Q9 value=0}
C {devices/lab_pin.sym} 930 2400 2 0 {name=pIMEM_Q9 lab=IMEM_Q9}
C {devices/gnd.sym} 870 2400 1 0 {name=gIMEM_Q9}
C {devices/vsource.sym} 1050 2400 1 0 {name=VIMEM_Q8 value=0}
C {devices/lab_pin.sym} 1080 2400 2 0 {name=pIMEM_Q8 lab=IMEM_Q8}
C {devices/gnd.sym} 1020 2400 1 0 {name=gIMEM_Q8}
C {devices/vsource.sym} 1200 2400 1 0 {name=VIMEM_Q7 value=0}
C {devices/lab_pin.sym} 1230 2400 2 0 {name=pIMEM_Q7 lab=IMEM_Q7}
C {devices/gnd.sym} 1170 2400 1 0 {name=gIMEM_Q7}
C {devices/vsource.sym} 1350 2400 1 0 {name=VIMEM_Q6 value=0}
C {devices/lab_pin.sym} 1380 2400 2 0 {name=pIMEM_Q6 lab=IMEM_Q6}
C {devices/gnd.sym} 1320 2400 1 0 {name=gIMEM_Q6}
C {devices/vsource.sym} 1500 2400 1 0 {name=VIMEM_Q5 value=0}
C {devices/lab_pin.sym} 1530 2400 2 0 {name=pIMEM_Q5 lab=IMEM_Q5}
C {devices/gnd.sym} 1470 2400 1 0 {name=gIMEM_Q5}
C {devices/vsource.sym} 1650 2400 1 0 {name=VIMEM_Q4 value=0}
C {devices/lab_pin.sym} 1680 2400 2 0 {name=pIMEM_Q4 lab=IMEM_Q4}
C {devices/gnd.sym} 1620 2400 1 0 {name=gIMEM_Q4}
C {devices/vsource.sym} 1800 2400 1 0 {name=VIMEM_Q3 value=0}
C {devices/lab_pin.sym} 1830 2400 2 0 {name=pIMEM_Q3 lab=IMEM_Q3}
C {devices/gnd.sym} 1770 2400 1 0 {name=gIMEM_Q3}
C {devices/vsource.sym} 1950 2400 1 0 {name=VIMEM_Q2 value=0}
C {devices/lab_pin.sym} 1980 2400 2 0 {name=pIMEM_Q2 lab=IMEM_Q2}
C {devices/gnd.sym} 1920 2400 1 0 {name=gIMEM_Q2}
C {devices/vsource.sym} 2100 2400 1 0 {name=VIMEM_Q1 value=0}
C {devices/lab_pin.sym} 2130 2400 2 0 {name=pIMEM_Q1 lab=IMEM_Q1}
C {devices/gnd.sym} 2070 2400 1 0 {name=gIMEM_Q1}
C {devices/vsource.sym} 2250 2400 1 0 {name=VIMEM_Q0 value=0}
C {devices/lab_pin.sym} 2280 2400 2 0 {name=pIMEM_Q0 lab=IMEM_Q0}
C {devices/gnd.sym} 2220 2400 1 0 {name=gIMEM_Q0}
C {devices/vsource.sym} 0 2500 1 0 {name=VEXTEND value=0}
C {devices/lab_pin.sym} 30 2500 2 0 {name=pEXTEND lab=EXTEND}
C {devices/gnd.sym} -30 2500 1 0 {name=gEXTEND}
C {devices/vsource.sym} 0 2600 1 0 {name=VSHIFT_VAL_SRC value=0}
C {devices/lab_pin.sym} 30 2600 2 0 {name=pSHIFT_VAL_SRC lab=SHIFT_VAL_SRC}
C {devices/gnd.sym} -30 2600 1 0 {name=gSHIFT_VAL_SRC}
C {devices/code_shown.sym} 1020 -220 0 0 {name=NGSPICE only_toplevel=true
value="
.tran 100p 100u
"}
