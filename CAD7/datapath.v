// sch_path: /foss/designs/engn1600-team1/CAD7/datapath.sch
module datapath
(
  output wire ALU_F,
  output wire ALU_Z,
  output wire ALU_N,
  output wire [15..0] RDST,
  output wire [15..0] DMEM_ADDR,
  output wire [15..0] PC,
  output wire [15..0] INSTR,
  inout wire VSS,
  inout wire VDD,
  input wire [15..0] RA,
  input wire [15..0] RB,
  input wire MEM_RF,
  input wire ALU_RF,
  input wire SHIFTER_RF,
  input wire PC_RF,
  input wire [15..0] DMEM_Q,
  input wire [15..0] WE,
  input wire [15..0] IMEM_Q,
  input wire ALU_SRC_B,
  input wire ALU_SRC_A,
  input wire IS_LUI,
  input wire SHIFT_VAL_SRC,
  input wire [1..0] ALU_SEL,
  input wire REG_WRITE,
  input wire ALU_CIN,
  input wire PC_BR,
  input wire PC_JMP,
  input wire CLK,
  input wire RSTn,
  input wire EXTEND,
  input wire SHIFT_AMT_SRC,
  input wire SI,
  input wire SE
);
wire CLK2b ;
wire CLK3b ;
wire CLK4b ;
wire CLK5b ;
wire CLK6b ;
wire CLK7b ;
wire CLK8b ;
wire CLK9b ;
wire DMEM_Q0b ;
wire DMEM_Q1b ;
wire DMEM_Q2b ;
wire DMEM_Q3b ;
wire DMEM_Q4b ;
wire PC_NEXT15 ;
wire DMEM_Q5b ;
wire DMEM_Q6b ;
wire DMEM_Q7b ;
wire DMEM_Q8b ;
wire DMEM_Q9b ;
wire OUT ;
wire SHIFTER_D0 ;
wire SHIFTER_D1 ;
wire SHIFTER_D2 ;
wire SHIFTER_D3 ;
wire SHIFTER_D4 ;
wire SHIFTER_D5 ;
wire SHIFTER_D6 ;
wire SHIFTER_D7 ;
wire SHIFTER_D8 ;
wire SHIFTER_D9 ;
wire SHIFTER_I0 ;
wire SHIFTER_I1 ;
wire SHIFTER_I2 ;
wire SHIFTER_I3 ;
wire SHIFTER_R0 ;
wire SHIFTER_R1 ;
wire SHIFTER_R2 ;
wire SHIFTER_R3 ;
wire ALU_Y0b ;
wire ALU_Y1b ;
wire ALU_Y2b ;
wire ALU_Y3b ;
wire ALU_Y4b ;
wire ALU_Y5b ;
wire ALU_Y6b ;
wire ALU_Y7b ;
wire ALU_Y8b ;
wire ALU_Y9b ;
wire IMM0b ;
wire IMM1b ;
wire IMM2b ;
wire IMM3b ;
wire IMM4b ;
wire IMM5b ;
wire IMM6b ;
wire IMM7b ;
wire IMM8b ;
wire IMM9b ;
wire ALU_Y10b ;
wire ALU_Y11b ;
wire ALU_Y12b ;
wire ALU_Y13b ;
wire ALU_Y14b ;
wire ALU_Y15b ;
wire CLK10b ;
wire CLK11b ;
wire CLK12b ;
wire CLK13b ;
wire CLK14b ;
wire CLK15b ;
wire SHIFTER_D10 ;
wire SHIFTER_D11 ;
wire SHIFTER_D12 ;
wire SHIFTER_D13 ;
wire SHIFTER_D14 ;
wire SHIFTER_D15 ;
wire ALU_A10 ;
wire ALU_A11 ;
wire ALU_A12 ;
wire ALU_A13 ;
wire ALU_A14 ;
wire ALU_A15 ;
wire PC10b ;
wire PC11b ;
wire PC12b ;
wire PC13b ;
wire PC14b ;
wire PC15b ;
wire RF_D0 ;
wire RF_D1 ;
wire RF_D2 ;
wire RF_D3 ;
wire RF_D4 ;
wire RF_D5 ;
wire RF_D6 ;
wire RF_D7 ;
wire RF_D8 ;
wire RF_D9 ;
wire ALU_B10 ;
wire ALU_B11 ;
wire ALU_B12 ;
wire ALU_B13 ;
wire ALU_B14 ;
wire ALU_B15 ;
wire RSRC0b ;
wire RSRC1b ;
wire RSRC2b ;
wire RSRC3b ;
wire RSRC4b ;
wire RSRC5b ;
wire RSRC6b ;
wire RSRC7b ;
wire RSRC8b ;
wire RSRC9b ;
wire ALU_A0 ;
wire ALU_A1 ;
wire ALU_A2 ;
wire ALU_A3 ;
wire ALU_A4 ;
wire ALU_A5 ;
wire ALU_A6 ;
wire ALU_A7 ;
wire ALU_A8 ;
wire ALU_A9 ;
wire ALU_B0 ;
wire ALU_B1 ;
wire ALU_B2 ;
wire ALU_B3 ;
wire ALU_B4 ;
wire ALU_B5 ;
wire ALU_B6 ;
wire ALU_B7 ;
wire ALU_B8 ;
wire ALU_B9 ;
wire IMM10b ;
wire IMM11b ;
wire IMM12b ;
wire IMM13b ;
wire IMM14b ;
wire IMM15b ;
wire DEST10 ;
wire DEST11 ;
wire DEST12 ;
wire DEST13 ;
wire DEST14 ;
wire DEST15 ;
wire PC0b ;
wire PC1b ;
wire PC2b ;
wire PC3b ;
wire PC4b ;
wire PC5b ;
wire PC6b ;
wire PC7b ;
wire PC8b ;
wire PC9b ;
wire RDST0b ;
wire RDST1b ;
wire RDST2b ;
wire RDST3b ;
wire RDST4b ;
wire RDST5b ;
wire RDST6b ;
wire RDST7b ;
wire RDST8b ;
wire RDST9b ;
wire [15:0] net1 ;
wire [15:0] net2 ;
wire [15:0] net3 ;
wire [15:0] net4 ;
wire RDST10b ;
wire RDST11b ;
wire SHIFTER_Q10b ;
wire RDST12b ;
wire SHIFTER_Q11b ;
wire RDST13b ;
wire SHIFTER_Q12b ;
wire RDST14b ;
wire SHIFTER_Q13b ;
wire RDST15b ;
wire SHIFTER_Q14b ;
wire SHIFTER_Q15b ;
wire RF_D10 ;
wire RF_D11 ;
wire RF_D12 ;
wire RF_D13 ;
wire RF_D14 ;
wire RF_D15 ;
wire SHIFTER_Q0b ;
wire SHIFTER_Q1b ;
wire SHIFTER_Q2b ;
wire SHIFTER_Q3b ;
wire SHIFTER_Q4b ;
wire SHIFTER_Q5b ;
wire SHIFTER_Q6b ;
wire SHIFTER_Q7b ;
wire SHIFTER_Q8b ;
wire SHIFTER_Q9b ;
wire IS_LUI0b ;
wire IS_LUI1b ;
wire IS_LUI2b ;
wire IS_LUI3b ;
wire DEST0 ;
wire DEST1 ;
wire DEST2 ;
wire DEST3 ;
wire DEST4 ;
wire DEST5 ;
wire DEST6 ;
wire DEST7 ;
wire DEST8 ;
wire DEST9 ;
wire DMEM_Q10b ;
wire DMEM_Q11b ;
wire DMEM_Q12b ;
wire DMEM_Q13b ;
wire DMEM_Q14b ;
wire DMEM_Q15b ;
wire RSRC10b ;
wire RSRC11b ;
wire RSRC12b ;
wire RSRC13b ;
wire RSRC14b ;
wire RSRC15b ;
wire CLK0b ;
wire CLK1b ;

alu
x1 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .A( {ALU_A15,ALU_A14,ALU_A13,ALU_A12,ALU_A11,ALU_A10,ALU_A9,ALU_A8,ALU_A7,ALU_A6,ALU_A5,ALU_A4,ALU_A3,ALU_A2,ALU_A1,ALU_A0} ),
 .B( {ALU_B15,ALU_B14,ALU_B13,ALU_B12,ALU_B11,ALU_B10,ALU_B9,ALU_B8,ALU_B7,ALU_B6,ALU_B5,ALU_B4,ALU_B3,ALU_B2,ALU_B1,ALU_B0} ),
 .CIN( ALU_CIN ),
 .SEL( {ALU_SEL1,ALU_SEL0} ),
 .Y( {ALU_Y15b,ALU_Y14b,ALU_Y13b,ALU_Y12b,ALU_Y11b,ALU_Y10b,ALU_Y9b,ALU_Y8b,ALU_Y7b,ALU_Y6b,ALU_Y5b,ALU_Y4b,ALU_Y3b,ALU_Y2b,ALU_Y1b,ALU_Y0b} ),
 .F( ALU_F ),
 .Z( ALU_Z ),
 .N( ALU_N )
);


rf
x2 ( 
 .CLK( CLK ),
 .WEM( REG_WRITE ),
 .VDD( VDD ),
 .VSS( VSS ),
 .WE( {WE15,WE14,WE13,WE12,WE11,WE10,WE9,WE8,WE7,WE6,WE5,WE4,WE3,WE2,WE1,WE0} ),
 .RA( {RA15,RA14,RA13,RA12,RA11,RA10,RA9,RA8,RA7,RA6,RA5,RA4,RA3,RA2,RA1,RA0} ),
 .RB( {RB15,RB14,RB13,RB12,RB11,RB10,RB9,RB8,RB7,RB6,RB5,RB4,RB3,RB2,RB1,RB0} ),
 .D( {RF_D15,RF_D14,RF_D13,RF_D12,RF_D11,RF_D10,RF_D9,RF_D8,RF_D7,RF_D6,RF_D5,RF_D4,RF_D3,RF_D2,RF_D1,RF_D0} ),
 .QA( {RSRC15b,RSRC14b,RSRC13b,RSRC12b,RSRC11b,RSRC10b,RSRC9b,RSRC8b,RSRC7b,RSRC6b,RSRC5b,RSRC4b,RSRC3b,RSRC2b,RSRC1b,RSRC0b} ),
 .QB( {RDST15b,RDST14b,RDST13b,RDST12b,RDST11b,RDST10b,RDST9b,RDST8b,RDST7b,RDST6b,RDST5b,RDST4b,RDST3b,RDST2b,RDST1b,RDST0b} )
);


pc
x3 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .CLK( CLK ),
 .RSTn( RSTn ),
 .BR( PC_BR ),
 .DISP( {INSTR7,INSTR6,INSTR5,INSTR4,INSTR3,INSTR2,INSTR1,INSTR0} ),
 .JMP( PC_JMP ),
 .DEST( {DEST15,DEST14,DEST13,DEST12,DEST11,DEST10,DEST9,DEST8,DEST7,DEST6,DEST5,DEST4,DEST3,DEST2,DEST1,DEST0} ),
 .SI( SI ),
 .SE( SE ),
 .PC( {PC15,PC14,PC13,PC12,PC11,PC10,PC9,PC8,PC7,PC6,PC5,PC4,PC3,PC2,PC1,PC0} ),
 .PC_NEXT15( PC_NEXT15 )
);


shifter
x4 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .D( {SHIFTER_D15,SHIFTER_D14,SHIFTER_D13,SHIFTER_D12,SHIFTER_D11,SHIFTER_D10,SHIFTER_D9,SHIFTER_D8,SHIFTER_D7,SHIFTER_D6,SHIFTER_D5,SHIFTER_D4,SHIFTER_D3,SHIFTER_D2,SHIFTER_D1,SHIFTER_D0} ),
 .I( {SHIFTER_I3,SHIFTER_I2,SHIFTER_I1,SHIFTER_I0} ),
 .R( {SHIFTER_R3,SHIFTER_R2,SHIFTER_R1,SHIFTER_R0} ),
 .SEL( SHIFT_AMT_SRC ),
 .Q( {SHIFTER_Q15b,SHIFTER_Q14b,SHIFTER_Q13b,SHIFTER_Q12b,SHIFTER_Q11b,SHIFTER_Q10b,SHIFTER_Q9b,SHIFTER_Q8b,SHIFTER_Q7b,SHIFTER_Q6b,SHIFTER_Q5b,SHIFTER_Q4b,SHIFTER_Q3b,SHIFTER_Q2b,SHIFTER_Q1b,SHIFTER_Q0b} )
);


4x1_mux
x515 ( 
 .SA( MEM_RF ),
 .A( DMEM_Q15b ),
 .SB( ALU_RF ),
 .B( ALU_Y15b ),
 .VSS( VSS ),
 .Y( net1[15] ),
 .SC( SHIFTER_RF ),
 .C( SHIFTER_Q15b ),
 .SD( PC_RF ),
 .D( PC15b )
);


4x1_mux
x514 ( 
 .SA( MEM_RF ),
 .A( DMEM_Q14b ),
 .SB( ALU_RF ),
 .B( ALU_Y14b ),
 .VSS( VSS ),
 .Y( net1[14] ),
 .SC( SHIFTER_RF ),
 .C( SHIFTER_Q14b ),
 .SD( PC_RF ),
 .D( PC14b )
);


4x1_mux
x513 ( 
 .SA( MEM_RF ),
 .A( DMEM_Q13b ),
 .SB( ALU_RF ),
 .B( ALU_Y13b ),
 .VSS( VSS ),
 .Y( net1[13] ),
 .SC( SHIFTER_RF ),
 .C( SHIFTER_Q13b ),
 .SD( PC_RF ),
 .D( PC13b )
);


4x1_mux
x512 ( 
 .SA( MEM_RF ),
 .A( DMEM_Q12b ),
 .SB( ALU_RF ),
 .B( ALU_Y12b ),
 .VSS( VSS ),
 .Y( net1[12] ),
 .SC( SHIFTER_RF ),
 .C( SHIFTER_Q12b ),
 .SD( PC_RF ),
 .D( PC12b )
);


4x1_mux
x511 ( 
 .SA( MEM_RF ),
 .A( DMEM_Q11b ),
 .SB( ALU_RF ),
 .B( ALU_Y11b ),
 .VSS( VSS ),
 .Y( net1[11] ),
 .SC( SHIFTER_RF ),
 .C( SHIFTER_Q11b ),
 .SD( PC_RF ),
 .D( PC11b )
);


4x1_mux
x510 ( 
 .SA( MEM_RF ),
 .A( DMEM_Q10b ),
 .SB( ALU_RF ),
 .B( ALU_Y10b ),
 .VSS( VSS ),
 .Y( net1[10] ),
 .SC( SHIFTER_RF ),
 .C( SHIFTER_Q10b ),
 .SD( PC_RF ),
 .D( PC10b )
);


4x1_mux
x59 ( 
 .SA( MEM_RF ),
 .A( DMEM_Q9b ),
 .SB( ALU_RF ),
 .B( ALU_Y9b ),
 .VSS( VSS ),
 .Y( net1[9] ),
 .SC( SHIFTER_RF ),
 .C( SHIFTER_Q9b ),
 .SD( PC_RF ),
 .D( PC9b )
);


4x1_mux
x58 ( 
 .SA( MEM_RF ),
 .A( DMEM_Q8b ),
 .SB( ALU_RF ),
 .B( ALU_Y8b ),
 .VSS( VSS ),
 .Y( net1[8] ),
 .SC( SHIFTER_RF ),
 .C( SHIFTER_Q8b ),
 .SD( PC_RF ),
 .D( PC8b )
);


4x1_mux
x57 ( 
 .SA( MEM_RF ),
 .A( DMEM_Q7b ),
 .SB( ALU_RF ),
 .B( ALU_Y7b ),
 .VSS( VSS ),
 .Y( net1[7] ),
 .SC( SHIFTER_RF ),
 .C( SHIFTER_Q7b ),
 .SD( PC_RF ),
 .D( PC7b )
);


4x1_mux
x56 ( 
 .SA( MEM_RF ),
 .A( DMEM_Q6b ),
 .SB( ALU_RF ),
 .B( ALU_Y6b ),
 .VSS( VSS ),
 .Y( net1[6] ),
 .SC( SHIFTER_RF ),
 .C( SHIFTER_Q6b ),
 .SD( PC_RF ),
 .D( PC6b )
);


4x1_mux
x55 ( 
 .SA( MEM_RF ),
 .A( DMEM_Q5b ),
 .SB( ALU_RF ),
 .B( ALU_Y5b ),
 .VSS( VSS ),
 .Y( net1[5] ),
 .SC( SHIFTER_RF ),
 .C( SHIFTER_Q5b ),
 .SD( PC_RF ),
 .D( PC5b )
);


4x1_mux
x54 ( 
 .SA( MEM_RF ),
 .A( DMEM_Q4b ),
 .SB( ALU_RF ),
 .B( ALU_Y4b ),
 .VSS( VSS ),
 .Y( net1[4] ),
 .SC( SHIFTER_RF ),
 .C( SHIFTER_Q4b ),
 .SD( PC_RF ),
 .D( PC4b )
);


4x1_mux
x53 ( 
 .SA( MEM_RF ),
 .A( DMEM_Q3b ),
 .SB( ALU_RF ),
 .B( ALU_Y3b ),
 .VSS( VSS ),
 .Y( net1[3] ),
 .SC( SHIFTER_RF ),
 .C( SHIFTER_Q3b ),
 .SD( PC_RF ),
 .D( PC3b )
);


4x1_mux
x52 ( 
 .SA( MEM_RF ),
 .A( DMEM_Q2b ),
 .SB( ALU_RF ),
 .B( ALU_Y2b ),
 .VSS( VSS ),
 .Y( net1[2] ),
 .SC( SHIFTER_RF ),
 .C( SHIFTER_Q2b ),
 .SD( PC_RF ),
 .D( PC2b )
);


4x1_mux
x51 ( 
 .SA( MEM_RF ),
 .A( DMEM_Q1b ),
 .SB( ALU_RF ),
 .B( ALU_Y1b ),
 .VSS( VSS ),
 .Y( net1[1] ),
 .SC( SHIFTER_RF ),
 .C( SHIFTER_Q1b ),
 .SD( PC_RF ),
 .D( PC1b )
);


4x1_mux
x50 ( 
 .SA( MEM_RF ),
 .A( DMEM_Q0b ),
 .SB( ALU_RF ),
 .B( ALU_Y0b ),
 .VSS( VSS ),
 .Y( net1[0] ),
 .SC( SHIFTER_RF ),
 .C( SHIFTER_Q0b ),
 .SD( PC_RF ),
 .D( PC0b )
);


inv
#(
.kINV ( 1 )
)
x115 ( 
 .VDD( VDD ),
 .IN( net1[15] ),
 .OUT( RF_D15 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x114 ( 
 .VDD( VDD ),
 .IN( net1[14] ),
 .OUT( RF_D14 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x113 ( 
 .VDD( VDD ),
 .IN( net1[13] ),
 .OUT( RF_D13 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x112 ( 
 .VDD( VDD ),
 .IN( net1[12] ),
 .OUT( RF_D12 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x111 ( 
 .VDD( VDD ),
 .IN( net1[11] ),
 .OUT( RF_D11 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x110 ( 
 .VDD( VDD ),
 .IN( net1[10] ),
 .OUT( RF_D10 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x19 ( 
 .VDD( VDD ),
 .IN( net1[9] ),
 .OUT( RF_D9 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x18 ( 
 .VDD( VDD ),
 .IN( net1[8] ),
 .OUT( RF_D8 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x17 ( 
 .VDD( VDD ),
 .IN( net1[7] ),
 .OUT( RF_D7 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x16 ( 
 .VDD( VDD ),
 .IN( net1[6] ),
 .OUT( RF_D6 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x15 ( 
 .VDD( VDD ),
 .IN( net1[5] ),
 .OUT( RF_D5 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x14 ( 
 .VDD( VDD ),
 .IN( net1[4] ),
 .OUT( RF_D4 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x13 ( 
 .VDD( VDD ),
 .IN( net1[3] ),
 .OUT( RF_D3 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x12 ( 
 .VDD( VDD ),
 .IN( net1[2] ),
 .OUT( RF_D2 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x11 ( 
 .VDD( VDD ),
 .IN( net1[1] ),
 .OUT( RF_D1 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x10 ( 
 .VDD( VDD ),
 .IN( net1[0] ),
 .OUT( RF_D0 ),
 .VSS( VSS )
);


2x1_mux
x23 ( 
 .A( INSTR3 ),
 .SEL( IS_LUI ),
 .SELb( IS_LUI3b ),
 .Y( SHIFTER_I3 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( VDD )
);


2x1_mux
x22 ( 
 .A( INSTR2 ),
 .SEL( IS_LUI ),
 .SELb( IS_LUI2b ),
 .Y( SHIFTER_I2 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( VSS )
);


2x1_mux
x21 ( 
 .A( INSTR1 ),
 .SEL( IS_LUI ),
 .SELb( IS_LUI1b ),
 .Y( SHIFTER_I1 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( VSS )
);


2x1_mux
x20 ( 
 .A( INSTR0 ),
 .SEL( IS_LUI ),
 .SELb( IS_LUI0b ),
 .Y( SHIFTER_I0 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( VSS )
);


inv
#(
.kINV ( 1 )
)
x33 ( 
 .VDD( VDD ),
 .IN( RSRC3b ),
 .OUT( SHIFTER_R3 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x32 ( 
 .VDD( VDD ),
 .IN( RSRC2b ),
 .OUT( SHIFTER_R2 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x31 ( 
 .VDD( VDD ),
 .IN( RSRC1b ),
 .OUT( SHIFTER_R1 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x30 ( 
 .VDD( VDD ),
 .IN( RSRC0b ),
 .OUT( SHIFTER_R0 ),
 .VSS( VSS )
);


2x1_mux_pass
x415 ( 
 .A( RDST15b ),
 .SEL( ALU_SRC_A ),
 .Y( net2[15] ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( VDD )
);


2x1_mux_pass
x414 ( 
 .A( RDST14b ),
 .SEL( ALU_SRC_A ),
 .Y( net2[14] ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( VDD )
);


2x1_mux_pass
x413 ( 
 .A( RDST13b ),
 .SEL( ALU_SRC_A ),
 .Y( net2[13] ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( VDD )
);


2x1_mux_pass
x412 ( 
 .A( RDST12b ),
 .SEL( ALU_SRC_A ),
 .Y( net2[12] ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( VDD )
);


2x1_mux_pass
x411 ( 
 .A( RDST11b ),
 .SEL( ALU_SRC_A ),
 .Y( net2[11] ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( VDD )
);


2x1_mux_pass
x410 ( 
 .A( RDST10b ),
 .SEL( ALU_SRC_A ),
 .Y( net2[10] ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( VDD )
);


2x1_mux_pass
x49 ( 
 .A( RDST9b ),
 .SEL( ALU_SRC_A ),
 .Y( net2[9] ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( VDD )
);


2x1_mux_pass
x48 ( 
 .A( RDST8b ),
 .SEL( ALU_SRC_A ),
 .Y( net2[8] ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( VDD )
);


2x1_mux_pass
x47 ( 
 .A( RDST7b ),
 .SEL( ALU_SRC_A ),
 .Y( net2[7] ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( VDD )
);


2x1_mux_pass
x46 ( 
 .A( RDST6b ),
 .SEL( ALU_SRC_A ),
 .Y( net2[6] ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( VDD )
);


2x1_mux_pass
x45 ( 
 .A( RDST5b ),
 .SEL( ALU_SRC_A ),
 .Y( net2[5] ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( VDD )
);


2x1_mux_pass
x44 ( 
 .A( RDST4b ),
 .SEL( ALU_SRC_A ),
 .Y( net2[4] ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( VDD )
);


2x1_mux_pass
x43 ( 
 .A( RDST3b ),
 .SEL( ALU_SRC_A ),
 .Y( net2[3] ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( VDD )
);


2x1_mux_pass
x42 ( 
 .A( RDST2b ),
 .SEL( ALU_SRC_A ),
 .Y( net2[2] ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( VDD )
);


2x1_mux_pass
x41 ( 
 .A( RDST1b ),
 .SEL( ALU_SRC_A ),
 .Y( net2[1] ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( VDD )
);


2x1_mux_pass
x40 ( 
 .A( RDST0b ),
 .SEL( ALU_SRC_A ),
 .Y( net2[0] ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( VDD )
);


inv
#(
.kINV ( 1 )
)
x615 ( 
 .VDD( VDD ),
 .IN( net2[15] ),
 .OUT( ALU_A15 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x614 ( 
 .VDD( VDD ),
 .IN( net2[14] ),
 .OUT( ALU_A14 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x613 ( 
 .VDD( VDD ),
 .IN( net2[13] ),
 .OUT( ALU_A13 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x612 ( 
 .VDD( VDD ),
 .IN( net2[12] ),
 .OUT( ALU_A12 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x611 ( 
 .VDD( VDD ),
 .IN( net2[11] ),
 .OUT( ALU_A11 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x610 ( 
 .VDD( VDD ),
 .IN( net2[10] ),
 .OUT( ALU_A10 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x69 ( 
 .VDD( VDD ),
 .IN( net2[9] ),
 .OUT( ALU_A9 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x68 ( 
 .VDD( VDD ),
 .IN( net2[8] ),
 .OUT( ALU_A8 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x67 ( 
 .VDD( VDD ),
 .IN( net2[7] ),
 .OUT( ALU_A7 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x66 ( 
 .VDD( VDD ),
 .IN( net2[6] ),
 .OUT( ALU_A6 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x65 ( 
 .VDD( VDD ),
 .IN( net2[5] ),
 .OUT( ALU_A5 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x64 ( 
 .VDD( VDD ),
 .IN( net2[4] ),
 .OUT( ALU_A4 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x63 ( 
 .VDD( VDD ),
 .IN( net2[3] ),
 .OUT( ALU_A3 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x62 ( 
 .VDD( VDD ),
 .IN( net2[2] ),
 .OUT( ALU_A2 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x61 ( 
 .VDD( VDD ),
 .IN( net2[1] ),
 .OUT( ALU_A1 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x60 ( 
 .VDD( VDD ),
 .IN( net2[0] ),
 .OUT( ALU_A0 ),
 .VSS( VSS )
);


2x1_mux_pass
x715 ( 
 .A( RSRC15b ),
 .SEL( ALU_SRC_B ),
 .Y( net3[15] ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( IMM15b )
);


2x1_mux_pass
x714 ( 
 .A( RSRC14b ),
 .SEL( ALU_SRC_B ),
 .Y( net3[14] ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( IMM14b )
);


2x1_mux_pass
x713 ( 
 .A( RSRC13b ),
 .SEL( ALU_SRC_B ),
 .Y( net3[13] ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( IMM13b )
);


2x1_mux_pass
x712 ( 
 .A( RSRC12b ),
 .SEL( ALU_SRC_B ),
 .Y( net3[12] ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( IMM12b )
);


2x1_mux_pass
x711 ( 
 .A( RSRC11b ),
 .SEL( ALU_SRC_B ),
 .Y( net3[11] ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( IMM11b )
);


2x1_mux_pass
x710 ( 
 .A( RSRC10b ),
 .SEL( ALU_SRC_B ),
 .Y( net3[10] ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( IMM10b )
);


2x1_mux_pass
x79 ( 
 .A( RSRC9b ),
 .SEL( ALU_SRC_B ),
 .Y( net3[9] ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( IMM9b )
);


2x1_mux_pass
x78 ( 
 .A( RSRC8b ),
 .SEL( ALU_SRC_B ),
 .Y( net3[8] ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( IMM8b )
);


2x1_mux_pass
x77 ( 
 .A( RSRC7b ),
 .SEL( ALU_SRC_B ),
 .Y( net3[7] ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( IMM7b )
);


2x1_mux_pass
x76 ( 
 .A( RSRC6b ),
 .SEL( ALU_SRC_B ),
 .Y( net3[6] ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( IMM6b )
);


2x1_mux_pass
x75 ( 
 .A( RSRC5b ),
 .SEL( ALU_SRC_B ),
 .Y( net3[5] ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( IMM5b )
);


2x1_mux_pass
x74 ( 
 .A( RSRC4b ),
 .SEL( ALU_SRC_B ),
 .Y( net3[4] ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( IMM4b )
);


2x1_mux_pass
x73 ( 
 .A( RSRC3b ),
 .SEL( ALU_SRC_B ),
 .Y( net3[3] ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( IMM3b )
);


2x1_mux_pass
x72 ( 
 .A( RSRC2b ),
 .SEL( ALU_SRC_B ),
 .Y( net3[2] ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( IMM2b )
);


2x1_mux_pass
x71 ( 
 .A( RSRC1b ),
 .SEL( ALU_SRC_B ),
 .Y( net3[1] ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( IMM1b )
);


2x1_mux_pass
x70 ( 
 .A( RSRC0b ),
 .SEL( ALU_SRC_B ),
 .Y( net3[0] ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( IMM0b )
);


inv
#(
.kINV ( 1 )
)
x815 ( 
 .VDD( VDD ),
 .IN( net3[15] ),
 .OUT( ALU_B15 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x814 ( 
 .VDD( VDD ),
 .IN( net3[14] ),
 .OUT( ALU_B14 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x813 ( 
 .VDD( VDD ),
 .IN( net3[13] ),
 .OUT( ALU_B13 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x812 ( 
 .VDD( VDD ),
 .IN( net3[12] ),
 .OUT( ALU_B12 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x811 ( 
 .VDD( VDD ),
 .IN( net3[11] ),
 .OUT( ALU_B11 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x810 ( 
 .VDD( VDD ),
 .IN( net3[10] ),
 .OUT( ALU_B10 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x89 ( 
 .VDD( VDD ),
 .IN( net3[9] ),
 .OUT( ALU_B9 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x88 ( 
 .VDD( VDD ),
 .IN( net3[8] ),
 .OUT( ALU_B8 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x87 ( 
 .VDD( VDD ),
 .IN( net3[7] ),
 .OUT( ALU_B7 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x86 ( 
 .VDD( VDD ),
 .IN( net3[6] ),
 .OUT( ALU_B6 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x85 ( 
 .VDD( VDD ),
 .IN( net3[5] ),
 .OUT( ALU_B5 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x84 ( 
 .VDD( VDD ),
 .IN( net3[4] ),
 .OUT( ALU_B4 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x83 ( 
 .VDD( VDD ),
 .IN( net3[3] ),
 .OUT( ALU_B3 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x82 ( 
 .VDD( VDD ),
 .IN( net3[2] ),
 .OUT( ALU_B2 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x81 ( 
 .VDD( VDD ),
 .IN( net3[1] ),
 .OUT( ALU_B1 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x80 ( 
 .VDD( VDD ),
 .IN( net3[0] ),
 .OUT( ALU_B0 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x915 ( 
 .VDD( VDD ),
 .IN( RSRC15b ),
 .OUT( DMEM_ADDR15 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x914 ( 
 .VDD( VDD ),
 .IN( RSRC14b ),
 .OUT( DMEM_ADDR14 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x913 ( 
 .VDD( VDD ),
 .IN( RSRC13b ),
 .OUT( DMEM_ADDR13 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x912 ( 
 .VDD( VDD ),
 .IN( RSRC12b ),
 .OUT( DMEM_ADDR12 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x911 ( 
 .VDD( VDD ),
 .IN( RSRC11b ),
 .OUT( DMEM_ADDR11 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x910 ( 
 .VDD( VDD ),
 .IN( RSRC10b ),
 .OUT( DMEM_ADDR10 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x99 ( 
 .VDD( VDD ),
 .IN( RSRC9b ),
 .OUT( DMEM_ADDR9 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x98 ( 
 .VDD( VDD ),
 .IN( RSRC8b ),
 .OUT( DMEM_ADDR8 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x97 ( 
 .VDD( VDD ),
 .IN( RSRC7b ),
 .OUT( DMEM_ADDR7 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x96 ( 
 .VDD( VDD ),
 .IN( RSRC6b ),
 .OUT( DMEM_ADDR6 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x95 ( 
 .VDD( VDD ),
 .IN( RSRC5b ),
 .OUT( DMEM_ADDR5 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x94 ( 
 .VDD( VDD ),
 .IN( RSRC4b ),
 .OUT( DMEM_ADDR4 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x93 ( 
 .VDD( VDD ),
 .IN( RSRC3b ),
 .OUT( DMEM_ADDR3 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x92 ( 
 .VDD( VDD ),
 .IN( RSRC2b ),
 .OUT( DMEM_ADDR2 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x91 ( 
 .VDD( VDD ),
 .IN( RSRC1b ),
 .OUT( DMEM_ADDR1 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x90 ( 
 .VDD( VDD ),
 .IN( RSRC0b ),
 .OUT( DMEM_ADDR0 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x1015 ( 
 .VDD( VDD ),
 .IN( DMEM_Q15 ),
 .OUT( DMEM_Q15b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x1014 ( 
 .VDD( VDD ),
 .IN( DMEM_Q14 ),
 .OUT( DMEM_Q14b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x1013 ( 
 .VDD( VDD ),
 .IN( DMEM_Q13 ),
 .OUT( DMEM_Q13b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x1012 ( 
 .VDD( VDD ),
 .IN( DMEM_Q12 ),
 .OUT( DMEM_Q12b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x1011 ( 
 .VDD( VDD ),
 .IN( DMEM_Q11 ),
 .OUT( DMEM_Q11b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x1010 ( 
 .VDD( VDD ),
 .IN( DMEM_Q10 ),
 .OUT( DMEM_Q10b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x109 ( 
 .VDD( VDD ),
 .IN( DMEM_Q9 ),
 .OUT( DMEM_Q9b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x108 ( 
 .VDD( VDD ),
 .IN( DMEM_Q8 ),
 .OUT( DMEM_Q8b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x107 ( 
 .VDD( VDD ),
 .IN( DMEM_Q7 ),
 .OUT( DMEM_Q7b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x106 ( 
 .VDD( VDD ),
 .IN( DMEM_Q6 ),
 .OUT( DMEM_Q6b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x105 ( 
 .VDD( VDD ),
 .IN( DMEM_Q5 ),
 .OUT( DMEM_Q5b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x104 ( 
 .VDD( VDD ),
 .IN( DMEM_Q4 ),
 .OUT( DMEM_Q4b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x103 ( 
 .VDD( VDD ),
 .IN( DMEM_Q3 ),
 .OUT( DMEM_Q3b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x102 ( 
 .VDD( VDD ),
 .IN( DMEM_Q2 ),
 .OUT( DMEM_Q2b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x101 ( 
 .VDD( VDD ),
 .IN( DMEM_Q1 ),
 .OUT( DMEM_Q1b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x100 ( 
 .VDD( VDD ),
 .IN( DMEM_Q0 ),
 .OUT( DMEM_Q0b ),
 .VSS( VSS )
);


2x1_mux_pass
x1215 ( 
 .A( RDST15b ),
 .SEL( SHIFT_VAL_SRC ),
 .Y( net4[15] ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( IMM15b )
);


2x1_mux_pass
x1214 ( 
 .A( RDST14b ),
 .SEL( SHIFT_VAL_SRC ),
 .Y( net4[14] ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( IMM14b )
);


2x1_mux_pass
x1213 ( 
 .A( RDST13b ),
 .SEL( SHIFT_VAL_SRC ),
 .Y( net4[13] ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( IMM13b )
);


2x1_mux_pass
x1212 ( 
 .A( RDST12b ),
 .SEL( SHIFT_VAL_SRC ),
 .Y( net4[12] ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( IMM12b )
);


2x1_mux_pass
x1211 ( 
 .A( RDST11b ),
 .SEL( SHIFT_VAL_SRC ),
 .Y( net4[11] ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( IMM11b )
);


2x1_mux_pass
x1210 ( 
 .A( RDST10b ),
 .SEL( SHIFT_VAL_SRC ),
 .Y( net4[10] ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( IMM10b )
);


2x1_mux_pass
x129 ( 
 .A( RDST9b ),
 .SEL( SHIFT_VAL_SRC ),
 .Y( net4[9] ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( IMM9b )
);


2x1_mux_pass
x128 ( 
 .A( RDST8b ),
 .SEL( SHIFT_VAL_SRC ),
 .Y( net4[8] ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( IMM8b )
);


2x1_mux_pass
x127 ( 
 .A( RDST7b ),
 .SEL( SHIFT_VAL_SRC ),
 .Y( net4[7] ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( IMM7b )
);


2x1_mux_pass
x126 ( 
 .A( RDST6b ),
 .SEL( SHIFT_VAL_SRC ),
 .Y( net4[6] ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( IMM6b )
);


2x1_mux_pass
x125 ( 
 .A( RDST5b ),
 .SEL( SHIFT_VAL_SRC ),
 .Y( net4[5] ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( IMM5b )
);


2x1_mux_pass
x124 ( 
 .A( RDST4b ),
 .SEL( SHIFT_VAL_SRC ),
 .Y( net4[4] ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( IMM4b )
);


2x1_mux_pass
x123 ( 
 .A( RDST3b ),
 .SEL( SHIFT_VAL_SRC ),
 .Y( net4[3] ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( IMM3b )
);


2x1_mux_pass
x122 ( 
 .A( RDST2b ),
 .SEL( SHIFT_VAL_SRC ),
 .Y( net4[2] ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( IMM2b )
);


2x1_mux_pass
x121 ( 
 .A( RDST1b ),
 .SEL( SHIFT_VAL_SRC ),
 .Y( net4[1] ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( IMM1b )
);


2x1_mux_pass
x120 ( 
 .A( RDST0b ),
 .SEL( SHIFT_VAL_SRC ),
 .Y( net4[0] ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( IMM0b )
);


inv
#(
.kINV ( 1 )
)
x1315 ( 
 .VDD( VDD ),
 .IN( net4[15] ),
 .OUT( SHIFTER_D15 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x1314 ( 
 .VDD( VDD ),
 .IN( net4[14] ),
 .OUT( SHIFTER_D14 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x1313 ( 
 .VDD( VDD ),
 .IN( net4[13] ),
 .OUT( SHIFTER_D13 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x1312 ( 
 .VDD( VDD ),
 .IN( net4[12] ),
 .OUT( SHIFTER_D12 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x1311 ( 
 .VDD( VDD ),
 .IN( net4[11] ),
 .OUT( SHIFTER_D11 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x1310 ( 
 .VDD( VDD ),
 .IN( net4[10] ),
 .OUT( SHIFTER_D10 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x139 ( 
 .VDD( VDD ),
 .IN( net4[9] ),
 .OUT( SHIFTER_D9 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x138 ( 
 .VDD( VDD ),
 .IN( net4[8] ),
 .OUT( SHIFTER_D8 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x137 ( 
 .VDD( VDD ),
 .IN( net4[7] ),
 .OUT( SHIFTER_D7 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x136 ( 
 .VDD( VDD ),
 .IN( net4[6] ),
 .OUT( SHIFTER_D6 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x135 ( 
 .VDD( VDD ),
 .IN( net4[5] ),
 .OUT( SHIFTER_D5 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x134 ( 
 .VDD( VDD ),
 .IN( net4[4] ),
 .OUT( SHIFTER_D4 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x133 ( 
 .VDD( VDD ),
 .IN( net4[3] ),
 .OUT( SHIFTER_D3 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x132 ( 
 .VDD( VDD ),
 .IN( net4[2] ),
 .OUT( SHIFTER_D2 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x131 ( 
 .VDD( VDD ),
 .IN( net4[1] ),
 .OUT( SHIFTER_D1 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x130 ( 
 .VDD( VDD ),
 .IN( net4[0] ),
 .OUT( SHIFTER_D0 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x1415 ( 
 .VDD( VDD ),
 .IN( OUT ),
 .OUT( IMM15b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x1414 ( 
 .VDD( VDD ),
 .IN( OUT ),
 .OUT( IMM14b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x1413 ( 
 .VDD( VDD ),
 .IN( OUT ),
 .OUT( IMM13b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x1412 ( 
 .VDD( VDD ),
 .IN( OUT ),
 .OUT( IMM12b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x1411 ( 
 .VDD( VDD ),
 .IN( OUT ),
 .OUT( IMM11b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x1410 ( 
 .VDD( VDD ),
 .IN( OUT ),
 .OUT( IMM10b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x149 ( 
 .VDD( VDD ),
 .IN( OUT ),
 .OUT( IMM9b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x148 ( 
 .VDD( VDD ),
 .IN( OUT ),
 .OUT( IMM8b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x147 ( 
 .VDD( VDD ),
 .IN( INSTR7 ),
 .OUT( IMM7b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x146 ( 
 .VDD( VDD ),
 .IN( INSTR6 ),
 .OUT( IMM6b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x145 ( 
 .VDD( VDD ),
 .IN( INSTR5 ),
 .OUT( IMM5b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x144 ( 
 .VDD( VDD ),
 .IN( INSTR4 ),
 .OUT( IMM4b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x143 ( 
 .VDD( VDD ),
 .IN( INSTR3 ),
 .OUT( IMM3b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x142 ( 
 .VDD( VDD ),
 .IN( INSTR2 ),
 .OUT( IMM2b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x141 ( 
 .VDD( VDD ),
 .IN( INSTR1 ),
 .OUT( IMM1b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x140 ( 
 .VDD( VDD ),
 .IN( INSTR0 ),
 .OUT( IMM0b ),
 .VSS( VSS )
);


dff
x1615 ( 
 .CLKb( CLK15b ),
 .D( IMEM_Q15 ),
 .Q( INSTR15 ),
 .RSTn( RSTn ),
 .CLK( CLK ),
 .VDD( VDD ),
 .VSS( VSS )
);


dff
x1614 ( 
 .CLKb( CLK14b ),
 .D( IMEM_Q14 ),
 .Q( INSTR14 ),
 .RSTn( RSTn ),
 .CLK( CLK ),
 .VDD( VDD ),
 .VSS( VSS )
);


dff
x1613 ( 
 .CLKb( CLK13b ),
 .D( IMEM_Q13 ),
 .Q( INSTR13 ),
 .RSTn( RSTn ),
 .CLK( CLK ),
 .VDD( VDD ),
 .VSS( VSS )
);


dff
x1612 ( 
 .CLKb( CLK12b ),
 .D( IMEM_Q12 ),
 .Q( INSTR12 ),
 .RSTn( RSTn ),
 .CLK( CLK ),
 .VDD( VDD ),
 .VSS( VSS )
);


dff
x1611 ( 
 .CLKb( CLK11b ),
 .D( IMEM_Q11 ),
 .Q( INSTR11 ),
 .RSTn( RSTn ),
 .CLK( CLK ),
 .VDD( VDD ),
 .VSS( VSS )
);


dff
x1610 ( 
 .CLKb( CLK10b ),
 .D( IMEM_Q10 ),
 .Q( INSTR10 ),
 .RSTn( RSTn ),
 .CLK( CLK ),
 .VDD( VDD ),
 .VSS( VSS )
);


dff
x169 ( 
 .CLKb( CLK9b ),
 .D( IMEM_Q9 ),
 .Q( INSTR9 ),
 .RSTn( RSTn ),
 .CLK( CLK ),
 .VDD( VDD ),
 .VSS( VSS )
);


dff
x168 ( 
 .CLKb( CLK8b ),
 .D( IMEM_Q8 ),
 .Q( INSTR8 ),
 .RSTn( RSTn ),
 .CLK( CLK ),
 .VDD( VDD ),
 .VSS( VSS )
);


dff
x167 ( 
 .CLKb( CLK7b ),
 .D( IMEM_Q7 ),
 .Q( INSTR7 ),
 .RSTn( RSTn ),
 .CLK( CLK ),
 .VDD( VDD ),
 .VSS( VSS )
);


dff
x166 ( 
 .CLKb( CLK6b ),
 .D( IMEM_Q6 ),
 .Q( INSTR6 ),
 .RSTn( RSTn ),
 .CLK( CLK ),
 .VDD( VDD ),
 .VSS( VSS )
);


dff
x165 ( 
 .CLKb( CLK5b ),
 .D( IMEM_Q5 ),
 .Q( INSTR5 ),
 .RSTn( RSTn ),
 .CLK( CLK ),
 .VDD( VDD ),
 .VSS( VSS )
);


dff
x164 ( 
 .CLKb( CLK4b ),
 .D( IMEM_Q4 ),
 .Q( INSTR4 ),
 .RSTn( RSTn ),
 .CLK( CLK ),
 .VDD( VDD ),
 .VSS( VSS )
);


dff
x163 ( 
 .CLKb( CLK3b ),
 .D( IMEM_Q3 ),
 .Q( INSTR3 ),
 .RSTn( RSTn ),
 .CLK( CLK ),
 .VDD( VDD ),
 .VSS( VSS )
);


dff
x162 ( 
 .CLKb( CLK2b ),
 .D( IMEM_Q2 ),
 .Q( INSTR2 ),
 .RSTn( RSTn ),
 .CLK( CLK ),
 .VDD( VDD ),
 .VSS( VSS )
);


dff
x161 ( 
 .CLKb( CLK1b ),
 .D( IMEM_Q1 ),
 .Q( INSTR1 ),
 .RSTn( RSTn ),
 .CLK( CLK ),
 .VDD( VDD ),
 .VSS( VSS )
);


dff
x160 ( 
 .CLKb( CLK0b ),
 .D( IMEM_Q0 ),
 .Q( INSTR0 ),
 .RSTn( RSTn ),
 .CLK( CLK ),
 .VDD( VDD ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x1515 ( 
 .VDD( VDD ),
 .IN( RSRC15b ),
 .OUT( DEST15 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x1514 ( 
 .VDD( VDD ),
 .IN( RSRC14b ),
 .OUT( DEST14 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x1513 ( 
 .VDD( VDD ),
 .IN( RSRC13b ),
 .OUT( DEST13 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x1512 ( 
 .VDD( VDD ),
 .IN( RSRC12b ),
 .OUT( DEST12 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x1511 ( 
 .VDD( VDD ),
 .IN( RSRC11b ),
 .OUT( DEST11 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x1510 ( 
 .VDD( VDD ),
 .IN( RSRC10b ),
 .OUT( DEST10 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x159 ( 
 .VDD( VDD ),
 .IN( RSRC9b ),
 .OUT( DEST9 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x158 ( 
 .VDD( VDD ),
 .IN( RSRC8b ),
 .OUT( DEST8 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x157 ( 
 .VDD( VDD ),
 .IN( RSRC7b ),
 .OUT( DEST7 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x156 ( 
 .VDD( VDD ),
 .IN( RSRC6b ),
 .OUT( DEST6 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x155 ( 
 .VDD( VDD ),
 .IN( RSRC5b ),
 .OUT( DEST5 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x154 ( 
 .VDD( VDD ),
 .IN( RSRC4b ),
 .OUT( DEST4 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x153 ( 
 .VDD( VDD ),
 .IN( RSRC3b ),
 .OUT( DEST3 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x152 ( 
 .VDD( VDD ),
 .IN( RSRC2b ),
 .OUT( DEST2 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x151 ( 
 .VDD( VDD ),
 .IN( RSRC1b ),
 .OUT( DEST1 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x150 ( 
 .VDD( VDD ),
 .IN( RSRC0b ),
 .OUT( DEST0 ),
 .VSS( VSS )
);


sign_zero_extender
x5 ( 
 .EXTEND( EXTEND ),
 .OUT( OUT ),
 .IN( INSTR7 ),
 .VDD( VDD ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x173 ( 
 .VDD( VDD ),
 .IN( IS_LUI ),
 .OUT( IS_LUI3b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x172 ( 
 .VDD( VDD ),
 .IN( IS_LUI ),
 .OUT( IS_LUI2b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x171 ( 
 .VDD( VDD ),
 .IN( IS_LUI ),
 .OUT( IS_LUI1b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x170 ( 
 .VDD( VDD ),
 .IN( IS_LUI ),
 .OUT( IS_LUI0b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x1815 ( 
 .VDD( VDD ),
 .IN( PC15 ),
 .OUT( PC15b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x1814 ( 
 .VDD( VDD ),
 .IN( PC14 ),
 .OUT( PC14b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x1813 ( 
 .VDD( VDD ),
 .IN( PC13 ),
 .OUT( PC13b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x1812 ( 
 .VDD( VDD ),
 .IN( PC12 ),
 .OUT( PC12b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x1811 ( 
 .VDD( VDD ),
 .IN( PC11 ),
 .OUT( PC11b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x1810 ( 
 .VDD( VDD ),
 .IN( PC10 ),
 .OUT( PC10b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x189 ( 
 .VDD( VDD ),
 .IN( PC9 ),
 .OUT( PC9b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x188 ( 
 .VDD( VDD ),
 .IN( PC8 ),
 .OUT( PC8b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x187 ( 
 .VDD( VDD ),
 .IN( PC7 ),
 .OUT( PC7b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x186 ( 
 .VDD( VDD ),
 .IN( PC6 ),
 .OUT( PC6b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x185 ( 
 .VDD( VDD ),
 .IN( PC5 ),
 .OUT( PC5b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x184 ( 
 .VDD( VDD ),
 .IN( PC4 ),
 .OUT( PC4b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x183 ( 
 .VDD( VDD ),
 .IN( PC3 ),
 .OUT( PC3b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x182 ( 
 .VDD( VDD ),
 .IN( PC2 ),
 .OUT( PC2b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x181 ( 
 .VDD( VDD ),
 .IN( PC1 ),
 .OUT( PC1b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x180 ( 
 .VDD( VDD ),
 .IN( PC0 ),
 .OUT( PC0b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x1915 ( 
 .VDD( VDD ),
 .IN( CLK ),
 .OUT( CLK15b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x1914 ( 
 .VDD( VDD ),
 .IN( CLK ),
 .OUT( CLK14b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x1913 ( 
 .VDD( VDD ),
 .IN( CLK ),
 .OUT( CLK13b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x1912 ( 
 .VDD( VDD ),
 .IN( CLK ),
 .OUT( CLK12b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x1911 ( 
 .VDD( VDD ),
 .IN( CLK ),
 .OUT( CLK11b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x1910 ( 
 .VDD( VDD ),
 .IN( CLK ),
 .OUT( CLK10b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x199 ( 
 .VDD( VDD ),
 .IN( CLK ),
 .OUT( CLK9b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x198 ( 
 .VDD( VDD ),
 .IN( CLK ),
 .OUT( CLK8b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x197 ( 
 .VDD( VDD ),
 .IN( CLK ),
 .OUT( CLK7b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x196 ( 
 .VDD( VDD ),
 .IN( CLK ),
 .OUT( CLK6b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x195 ( 
 .VDD( VDD ),
 .IN( CLK ),
 .OUT( CLK5b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x194 ( 
 .VDD( VDD ),
 .IN( CLK ),
 .OUT( CLK4b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x193 ( 
 .VDD( VDD ),
 .IN( CLK ),
 .OUT( CLK3b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x192 ( 
 .VDD( VDD ),
 .IN( CLK ),
 .OUT( CLK2b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x191 ( 
 .VDD( VDD ),
 .IN( CLK ),
 .OUT( CLK1b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x190 ( 
 .VDD( VDD ),
 .IN( CLK ),
 .OUT( CLK0b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x2015 ( 
 .VDD( VDD ),
 .IN( RDST15b ),
 .OUT( RDST15 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x2014 ( 
 .VDD( VDD ),
 .IN( RDST14b ),
 .OUT( RDST14 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x2013 ( 
 .VDD( VDD ),
 .IN( RDST13b ),
 .OUT( RDST13 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x2012 ( 
 .VDD( VDD ),
 .IN( RDST12b ),
 .OUT( RDST12 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x2011 ( 
 .VDD( VDD ),
 .IN( RDST11b ),
 .OUT( RDST11 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x2010 ( 
 .VDD( VDD ),
 .IN( RDST10b ),
 .OUT( RDST10 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x209 ( 
 .VDD( VDD ),
 .IN( RDST9b ),
 .OUT( RDST9 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x208 ( 
 .VDD( VDD ),
 .IN( RDST8b ),
 .OUT( RDST8 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x207 ( 
 .VDD( VDD ),
 .IN( RDST7b ),
 .OUT( RDST7 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x206 ( 
 .VDD( VDD ),
 .IN( RDST6b ),
 .OUT( RDST6 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x205 ( 
 .VDD( VDD ),
 .IN( RDST5b ),
 .OUT( RDST5 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x204 ( 
 .VDD( VDD ),
 .IN( RDST4b ),
 .OUT( RDST4 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x203 ( 
 .VDD( VDD ),
 .IN( RDST3b ),
 .OUT( RDST3 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x202 ( 
 .VDD( VDD ),
 .IN( RDST2b ),
 .OUT( RDST2 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x201 ( 
 .VDD( VDD ),
 .IN( RDST1b ),
 .OUT( RDST1 ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x200 ( 
 .VDD( VDD ),
 .IN( RDST0b ),
 .OUT( RDST0 ),
 .VSS( VSS )
);

endmodule

// expanding   symbol:  engn1600-team1/CAD4/alu.sym # of pins=10
// sym_path: /foss/designs/engn1600-team1/CAD4/alu.sym
// sch_path: /foss/designs/engn1600-team1/CAD4/alu.sch
module alu
(
  inout wire VDD,
  inout wire VSS,
  input wire [15..0] A,
  input wire [15..0] B,
  input wire CIN,
  input wire [1..0] SEL,
  output wire [15..0] Y,
  output wire F,
  output wire Z,
  output wire N
);
wire B10p ;
wire B11p ;
wire B12p ;
wire B13p ;
wire B14p ;
wire B15p ;
wire AND12 ;
wire XOR0 ;
wire XOR1 ;
wire XOR2 ;
wire XOR3 ;
wire XOR4 ;
wire XOR5 ;
wire XOR6 ;
wire XOR7 ;
wire XOR8 ;
wire XOR9 ;
wire XOR10 ;
wire XOR11 ;
wire XOR12 ;
wire XOR13 ;
wire XOR14 ;
wire XOR15 ;
wire NAND0 ;
wire NAND1 ;
wire NAND2 ;
wire NAND3 ;
wire NAND4 ;
wire NAND5 ;
wire NAND6 ;
wire NAND7 ;
wire NAND8 ;
wire NAND9 ;
wire OR4 ;
wire OR8 ;
wire NOR10 ;
wire NOR11 ;
wire NOR12 ;
wire NOR13 ;
wire NOR14 ;
wire NOR15 ;
wire Y10b ;
wire Y11b ;
wire Y12b ;
wire Y13b ;
wire Y14b ;
wire Y15b ;
wire COUT11b ;
wire COUT14b ;
wire COUT15b ;
wire SUM0b ;
wire SUM1b ;
wire SUM2b ;
wire SUM3b ;
wire SUM4b ;
wire SUM5b ;
wire SUM6b ;
wire SUM7b ;
wire SUM8b ;
wire SUM9b ;
wire NAND10 ;
wire NAND11 ;
wire NAND12 ;
wire NAND13 ;
wire NAND14 ;
wire NAND15 ;
wire COUT11 ;
wire COUT14 ;
wire COUT15 ;
wire COUT3b ;
wire COUT7b ;
wire SA ;
wire SB ;
wire SC ;
wire SD ;
wire Y0b ;
wire Y1b ;
wire Y2b ;
wire Y3b ;
wire Y4b ;
wire Y5b ;
wire Y6b ;
wire Y7b ;
wire Y8b ;
wire Y9b ;
wire SUM_05b ;
wire SUM_06b ;
wire SUM_07b ;
wire SUM_09b ;
wire XNOR10 ;
wire XNOR11 ;
wire XNOR12 ;
wire XNOR13 ;
wire XNOR14 ;
wire XNOR15 ;
wire SUM_15b ;
wire SUM_16b ;
wire SUM_17b ;
wire SUM_19b ;
wire SUM10b ;
wire SUM11b ;
wire SUM12b ;
wire SUM13b ;
wire SUM14b ;
wire SUM15b ;
wire COUT_010 ;
wire COUT_011 ;
wire COUT_013 ;
wire COUT_014 ;
wire COUT_015 ;
wire COUT_110 ;
wire COUT_111 ;
wire COUT_113 ;
wire COUT_114 ;
wire COUT_115 ;
wire B0p ;
wire B1p ;
wire B2p ;
wire B3p ;
wire B4p ;
wire B5p ;
wire B6p ;
wire B7p ;
wire B8p ;
wire B9p ;
wire SUM_010b ;
wire SUM_011b ;
wire SUM_013b ;
wire SUM_014b ;
wire SUM_015b ;
wire NOR0 ;
wire NOR1 ;
wire NOR2 ;
wire NOR3 ;
wire NOR4 ;
wire NOR5 ;
wire NOR6 ;
wire NOR7 ;
wire NOR8 ;
wire NOR9 ;
wire COUT_05 ;
wire COUT_06 ;
wire COUT_07 ;
wire COUT_09 ;
wire COUT_15 ;
wire COUT_16 ;
wire COUT_17 ;
wire COUT_19 ;
wire COUT0 ;
wire COUT1 ;
wire COUT2 ;
wire COUT3 ;
wire COUT7 ;
wire SUM_110b ;
wire SUM_111b ;
wire SUM_113b ;
wire SUM_114b ;
wire SUM_115b ;
wire XNOR0 ;
wire XNOR1 ;
wire XNOR2 ;
wire XNOR3 ;
wire XNOR4 ;
wire XNOR5 ;
wire XNOR6 ;
wire XNOR7 ;
wire XNOR8 ;
wire XNOR9 ;
wire AND4 ;
wire AND8 ;
wire OR12 ;


full_adder
#(
.kSUMb ( "'kSUMb'" ) ,
.kTS ( "'kTS'" )
)
x1 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .A( A0 ),
 .B( B0p ),
 .CIN( CIN ),
 .SUMb( SUM0b ),
 .COUT( COUT0 )
);


full_adder
#(
.kSUMb ( "'kSUMb'" ) ,
.kTS ( "'kTS'" )
)
x2 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .A( A1 ),
 .B( B1p ),
 .CIN( COUT0 ),
 .SUMb( SUM1b ),
 .COUT( COUT1 )
);


full_adder
#(
.kSUMb ( "'kSUMb'" ) ,
.kTS ( "'kTS'" )
)
x3 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .A( A2 ),
 .B( B2p ),
 .CIN( COUT1 ),
 .SUMb( SUM2b ),
 .COUT( COUT2 )
);


full_adder
#(
.kSUMb ( "'kSUMb'" ) ,
.kTS ( "'kTS'" )
)
x4 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .A( A3 ),
 .B( B3p ),
 .CIN( COUT2 ),
 .SUMb( SUM3b ),
 .COUT( COUT3 )
);


logic
x5 ( 
 .NOR( NOR0 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .XNOR( XNOR0 ),
 .A( A0 ),
 .B( B0p ),
 .NAND( NAND0 ),
 .XOR( XOR0 )
);


4x1_mux
x1015 ( 
 .SA( SA ),
 .A( SUM15b ),
 .SB( SB ),
 .B( NAND15 ),
 .VSS( VSS ),
 .Y( Y15b ),
 .SC( SC ),
 .C( NOR15 ),
 .SD( SD ),
 .D( XNOR15 )
);


4x1_mux
x1014 ( 
 .SA( SA ),
 .A( SUM14b ),
 .SB( SB ),
 .B( NAND14 ),
 .VSS( VSS ),
 .Y( Y14b ),
 .SC( SC ),
 .C( NOR14 ),
 .SD( SD ),
 .D( XNOR14 )
);


4x1_mux
x1013 ( 
 .SA( SA ),
 .A( SUM13b ),
 .SB( SB ),
 .B( NAND13 ),
 .VSS( VSS ),
 .Y( Y13b ),
 .SC( SC ),
 .C( NOR13 ),
 .SD( SD ),
 .D( XNOR13 )
);


4x1_mux
x1012 ( 
 .SA( SA ),
 .A( SUM12b ),
 .SB( SB ),
 .B( NAND12 ),
 .VSS( VSS ),
 .Y( Y12b ),
 .SC( SC ),
 .C( NOR12 ),
 .SD( SD ),
 .D( XNOR12 )
);


4x1_mux
x1011 ( 
 .SA( SA ),
 .A( SUM11b ),
 .SB( SB ),
 .B( NAND11 ),
 .VSS( VSS ),
 .Y( Y11b ),
 .SC( SC ),
 .C( NOR11 ),
 .SD( SD ),
 .D( XNOR11 )
);


4x1_mux
x1010 ( 
 .SA( SA ),
 .A( SUM10b ),
 .SB( SB ),
 .B( NAND10 ),
 .VSS( VSS ),
 .Y( Y10b ),
 .SC( SC ),
 .C( NOR10 ),
 .SD( SD ),
 .D( XNOR10 )
);


4x1_mux
x109 ( 
 .SA( SA ),
 .A( SUM9b ),
 .SB( SB ),
 .B( NAND9 ),
 .VSS( VSS ),
 .Y( Y9b ),
 .SC( SC ),
 .C( NOR9 ),
 .SD( SD ),
 .D( XNOR9 )
);


4x1_mux
x108 ( 
 .SA( SA ),
 .A( SUM8b ),
 .SB( SB ),
 .B( NAND8 ),
 .VSS( VSS ),
 .Y( Y8b ),
 .SC( SC ),
 .C( NOR8 ),
 .SD( SD ),
 .D( XNOR8 )
);


4x1_mux
x107 ( 
 .SA( SA ),
 .A( SUM7b ),
 .SB( SB ),
 .B( NAND7 ),
 .VSS( VSS ),
 .Y( Y7b ),
 .SC( SC ),
 .C( NOR7 ),
 .SD( SD ),
 .D( XNOR7 )
);


4x1_mux
x106 ( 
 .SA( SA ),
 .A( SUM6b ),
 .SB( SB ),
 .B( NAND6 ),
 .VSS( VSS ),
 .Y( Y6b ),
 .SC( SC ),
 .C( NOR6 ),
 .SD( SD ),
 .D( XNOR6 )
);


4x1_mux
x105 ( 
 .SA( SA ),
 .A( SUM5b ),
 .SB( SB ),
 .B( NAND5 ),
 .VSS( VSS ),
 .Y( Y5b ),
 .SC( SC ),
 .C( NOR5 ),
 .SD( SD ),
 .D( XNOR5 )
);


4x1_mux
x104 ( 
 .SA( SA ),
 .A( SUM4b ),
 .SB( SB ),
 .B( NAND4 ),
 .VSS( VSS ),
 .Y( Y4b ),
 .SC( SC ),
 .C( NOR4 ),
 .SD( SD ),
 .D( XNOR4 )
);


4x1_mux
x103 ( 
 .SA( SA ),
 .A( SUM3b ),
 .SB( SB ),
 .B( NAND3 ),
 .VSS( VSS ),
 .Y( Y3b ),
 .SC( SC ),
 .C( NOR3 ),
 .SD( SD ),
 .D( XNOR3 )
);


4x1_mux
x102 ( 
 .SA( SA ),
 .A( SUM2b ),
 .SB( SB ),
 .B( NAND2 ),
 .VSS( VSS ),
 .Y( Y2b ),
 .SC( SC ),
 .C( NOR2 ),
 .SD( SD ),
 .D( XNOR2 )
);


4x1_mux
x101 ( 
 .SA( SA ),
 .A( SUM1b ),
 .SB( SB ),
 .B( NAND1 ),
 .VSS( VSS ),
 .Y( Y1b ),
 .SC( SC ),
 .C( NOR1 ),
 .SD( SD ),
 .D( XNOR1 )
);


4x1_mux
x100 ( 
 .SA( SA ),
 .A( SUM0b ),
 .SB( SB ),
 .B( NAND0 ),
 .VSS( VSS ),
 .Y( Y0b ),
 .SC( SC ),
 .C( NOR0 ),
 .SD( SD ),
 .D( XNOR0 )
);


inv
x1115 ( 
 .VDD( VDD ),
 .IN( Y15b ),
 .OUT( Y15 ),
 .VSS( VSS )
);


inv
x1114 ( 
 .VDD( VDD ),
 .IN( Y14b ),
 .OUT( Y14 ),
 .VSS( VSS )
);


inv
x1113 ( 
 .VDD( VDD ),
 .IN( Y13b ),
 .OUT( Y13 ),
 .VSS( VSS )
);


inv
x1112 ( 
 .VDD( VDD ),
 .IN( Y12b ),
 .OUT( Y12 ),
 .VSS( VSS )
);


inv
x1111 ( 
 .VDD( VDD ),
 .IN( Y11b ),
 .OUT( Y11 ),
 .VSS( VSS )
);


inv
x1110 ( 
 .VDD( VDD ),
 .IN( Y10b ),
 .OUT( Y10 ),
 .VSS( VSS )
);


inv
x119 ( 
 .VDD( VDD ),
 .IN( Y9b ),
 .OUT( Y9 ),
 .VSS( VSS )
);


inv
x118 ( 
 .VDD( VDD ),
 .IN( Y8b ),
 .OUT( Y8 ),
 .VSS( VSS )
);


inv
x117 ( 
 .VDD( VDD ),
 .IN( Y7b ),
 .OUT( Y7 ),
 .VSS( VSS )
);


inv
x116 ( 
 .VDD( VDD ),
 .IN( Y6b ),
 .OUT( Y6 ),
 .VSS( VSS )
);


inv
x115 ( 
 .VDD( VDD ),
 .IN( Y5b ),
 .OUT( Y5 ),
 .VSS( VSS )
);


inv
x114 ( 
 .VDD( VDD ),
 .IN( Y4b ),
 .OUT( Y4 ),
 .VSS( VSS )
);


inv
x113 ( 
 .VDD( VDD ),
 .IN( Y3b ),
 .OUT( Y3 ),
 .VSS( VSS )
);


inv
x112 ( 
 .VDD( VDD ),
 .IN( Y2b ),
 .OUT( Y2 ),
 .VSS( VSS )
);


inv
x111 ( 
 .VDD( VDD ),
 .IN( Y1b ),
 .OUT( Y1 ),
 .VSS( VSS )
);


inv
x110 ( 
 .VDD( VDD ),
 .IN( Y0b ),
 .OUT( Y0 ),
 .VSS( VSS )
);


logic
x8 ( 
 .NOR( NOR1 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .XNOR( XNOR1 ),
 .A( A1 ),
 .B( B1p ),
 .NAND( NAND1 ),
 .XOR( XOR1 )
);


logic
x11 ( 
 .NOR( NOR2 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .XNOR( XNOR2 ),
 .A( A2 ),
 .B( B2p ),
 .NAND( NAND2 ),
 .XOR( XOR2 )
);


logic
x14 ( 
 .NOR( NOR3 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .XNOR( XNOR3 ),
 .A( A3 ),
 .B( B3p ),
 .NAND( NAND3 ),
 .XOR( XOR3 )
);


logic_extended
x17 ( 
 .AND( AND4 ),
 .XOR( XOR4 ),
 .OR( OR4 ),
 .NOR( NOR4 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .XNOR( XNOR4 ),
 .A( A4 ),
 .B( B4p ),
 .NAND( NAND4 )
);


full_adder
#(
.kSUMb ( "'kSUMb'" ) ,
.kTS ( "'kTS'" )
)
x18 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .A( A5 ),
 .B( B5p ),
 .CIN( AND4 ),
 .SUMb( SUM_05b ),
 .COUT( COUT_05 )
);


full_adder
#(
.kSUMb ( "'kSUMb'" ) ,
.kTS ( "'kTS'" )
)
x19 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .A( A6 ),
 .B( B6p ),
 .CIN( COUT_05 ),
 .SUMb( SUM_06b ),
 .COUT( COUT_06 )
);


full_adder
#(
.kSUMb ( "'kSUMb'" ) ,
.kTS ( "'kTS'" )
)
x20 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .A( A7 ),
 .B( B7p ),
 .CIN( COUT_06 ),
 .SUMb( SUM_07b ),
 .COUT( COUT_07 )
);


logic
x24 ( 
 .NOR( NOR5 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .XNOR( XNOR5 ),
 .A( A5 ),
 .B( B5p ),
 .NAND( NAND5 ),
 .XOR( XOR5 )
);


logic
x25 ( 
 .NOR( NOR6 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .XNOR( XNOR6 ),
 .A( A6 ),
 .B( B6p ),
 .NAND( NAND6 ),
 .XOR( XOR6 )
);


logic
x26 ( 
 .NOR( NOR7 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .XNOR( XNOR7 ),
 .A( A7 ),
 .B( B7p ),
 .NAND( NAND7 ),
 .XOR( XOR7 )
);


2x1_mux
x35 ( 
 .A( SUM_07b ),
 .SEL( COUT3 ),
 .SELb( COUT3b ),
 .Y( SUM7b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( SUM_17b )
);


2x1_mux
x36 ( 
 .A( SUM_06b ),
 .SEL( COUT3 ),
 .SELb( COUT3b ),
 .Y( SUM6b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( SUM_16b )
);


2x1_mux
x37 ( 
 .A( SUM_05b ),
 .SEL( COUT3 ),
 .SELb( COUT3b ),
 .Y( SUM5b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( SUM_15b )
);


2x1_mux
x38 ( 
 .A( XOR4 ),
 .SEL( COUT3b ),
 .SELb( COUT3 ),
 .Y( SUM4b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( XNOR4 )
);


full_adder
#(
.kSUMb ( "'kSUMb'" ) ,
.kTS ( "'kTS'" )
)
x21 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .A( A5 ),
 .B( B5p ),
 .CIN( OR4 ),
 .SUMb( SUM_15b ),
 .COUT( COUT_15 )
);


full_adder
#(
.kSUMb ( "'kSUMb'" ) ,
.kTS ( "'kTS'" )
)
x22 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .A( A6 ),
 .B( B6p ),
 .CIN( COUT_15 ),
 .SUMb( SUM_16b ),
 .COUT( COUT_16 )
);


full_adder
#(
.kSUMb ( "'kSUMb'" ) ,
.kTS ( "'kTS'" )
)
x23 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .A( A7 ),
 .B( B7p ),
 .CIN( COUT_16 ),
 .SUMb( SUM_17b ),
 .COUT( COUT_17 )
);


2x1_mux_cmos
#(
.kI ( "'kI'" ) ,
.kYb ( "'kYb'" ) ,
.kY ( "'kY'" )
)
x39 ( 
 .A( COUT_17 ),
 .SEL( COUT3b ),
 .SELb( COUT3 ),
 .Y( COUT7 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( COUT_07 ),
 .Yb( COUT7b )
);


inv
x40 ( 
 .VDD( VDD ),
 .IN( COUT3 ),
 .OUT( COUT3b ),
 .VSS( VSS )
);


logic_extended
x42 ( 
 .AND( AND8 ),
 .XOR( XOR8 ),
 .OR( OR8 ),
 .NOR( NOR8 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .XNOR( XNOR8 ),
 .A( A8 ),
 .B( B8p ),
 .NAND( NAND8 )
);


full_adder
#(
.kSUMb ( "'kSUMb'" ) ,
.kTS ( "'kTS'" )
)
x43 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .A( A9 ),
 .B( B9p ),
 .CIN( AND8 ),
 .SUMb( SUM_09b ),
 .COUT( COUT_09 )
);


full_adder
#(
.kSUMb ( "'kSUMb'" ) ,
.kTS ( "'kTS'" )
)
x44 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .A( A10 ),
 .B( B10p ),
 .CIN( COUT_09 ),
 .SUMb( SUM_010b ),
 .COUT( COUT_010 )
);


full_adder
#(
.kSUMb ( "'kSUMb'" ) ,
.kTS ( "'kTS'" )
)
x45 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .A( A11 ),
 .B( B11p ),
 .CIN( COUT_010 ),
 .SUMb( SUM_011b ),
 .COUT( COUT_011 )
);


logic
x46 ( 
 .NOR( NOR9 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .XNOR( XNOR9 ),
 .A( A9 ),
 .B( B9p ),
 .NAND( NAND9 ),
 .XOR( XOR9 )
);


logic
x47 ( 
 .NOR( NOR10 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .XNOR( XNOR10 ),
 .A( A10 ),
 .B( B10p ),
 .NAND( NAND10 ),
 .XOR( XOR10 )
);


logic
x48 ( 
 .NOR( NOR11 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .XNOR( XNOR11 ),
 .A( A11 ),
 .B( B11p ),
 .NAND( NAND11 ),
 .XOR( XOR11 )
);


2x1_mux
x57 ( 
 .A( SUM_011b ),
 .SEL( COUT7 ),
 .SELb( COUT7b ),
 .Y( SUM11b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( SUM_111b )
);


2x1_mux
x58 ( 
 .A( SUM_010b ),
 .SEL( COUT7 ),
 .SELb( COUT7b ),
 .Y( SUM10b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( SUM_110b )
);


2x1_mux
x59 ( 
 .A( SUM_09b ),
 .SEL( COUT7 ),
 .SELb( COUT7b ),
 .Y( SUM9b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( SUM_19b )
);


2x1_mux
x60 ( 
 .A( XOR8 ),
 .SEL( COUT7b ),
 .SELb( COUT7 ),
 .Y( SUM8b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( XNOR8 )
);


full_adder
#(
.kSUMb ( "'kSUMb'" ) ,
.kTS ( "'kTS'" )
)
x61 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .A( A9 ),
 .B( B9p ),
 .CIN( OR8 ),
 .SUMb( SUM_19b ),
 .COUT( COUT_19 )
);


full_adder
#(
.kSUMb ( "'kSUMb'" ) ,
.kTS ( "'kTS'" )
)
x62 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .A( A10 ),
 .B( B10p ),
 .CIN( COUT_19 ),
 .SUMb( SUM_110b ),
 .COUT( COUT_110 )
);


full_adder
#(
.kSUMb ( "'kSUMb'" ) ,
.kTS ( "'kTS'" )
)
x63 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .A( A11 ),
 .B( B11p ),
 .CIN( COUT_110 ),
 .SUMb( SUM_111b ),
 .COUT( COUT_111 )
);


2x1_mux_cmos
#(
.kI ( "'kI'" ) ,
.kYb ( "'kYb'" ) ,
.kY ( "'kY'" )
)
x64 ( 
 .A( COUT_111 ),
 .SEL( COUT7b ),
 .SELb( COUT7 ),
 .Y( COUT11 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( COUT_011 ),
 .Yb( COUT11b )
);


logic_extended
x66 ( 
 .AND( AND12 ),
 .XOR( XOR12 ),
 .OR( OR12 ),
 .NOR( NOR12 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .XNOR( XNOR12 ),
 .A( A12 ),
 .B( B12p ),
 .NAND( NAND12 )
);


full_adder
#(
.kSUMb ( "'kSUMb'" ) ,
.kTS ( "'kTS'" )
)
x67 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .A( A13 ),
 .B( B13p ),
 .CIN( AND12 ),
 .SUMb( SUM_013b ),
 .COUT( COUT_013 )
);


full_adder
#(
.kSUMb ( "'kSUMb'" ) ,
.kTS ( "'kTS'" )
)
x68 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .A( A14 ),
 .B( B14p ),
 .CIN( COUT_013 ),
 .SUMb( SUM_014b ),
 .COUT( COUT_014 )
);


full_adder
#(
.kSUMb ( "'kSUMb'" ) ,
.kTS ( "'kTS'" )
)
x69 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .A( A15 ),
 .B( B15p ),
 .CIN( COUT_014 ),
 .SUMb( SUM_015b ),
 .COUT( COUT_015 )
);


logic
x70 ( 
 .NOR( NOR13 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .XNOR( XNOR13 ),
 .A( A13 ),
 .B( B13p ),
 .NAND( NAND13 ),
 .XOR( XOR13 )
);


logic
x71 ( 
 .NOR( NOR14 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .XNOR( XNOR14 ),
 .A( A14 ),
 .B( B14p ),
 .NAND( NAND14 ),
 .XOR( XOR14 )
);


logic
x72 ( 
 .NOR( NOR15 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .XNOR( XNOR15 ),
 .A( A15 ),
 .B( B15p ),
 .NAND( NAND15 ),
 .XOR( XOR15 )
);


2x1_mux
x81 ( 
 .A( SUM_015b ),
 .SEL( COUT11 ),
 .SELb( COUT11b ),
 .Y( SUM15b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( SUM_115b )
);


2x1_mux
x82 ( 
 .A( SUM_014b ),
 .SEL( COUT11 ),
 .SELb( COUT11b ),
 .Y( SUM14b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( SUM_114b )
);


2x1_mux
x83 ( 
 .A( SUM_013b ),
 .SEL( COUT11 ),
 .SELb( COUT11b ),
 .Y( SUM13b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( SUM_113b )
);


2x1_mux
x84 ( 
 .A( XOR12 ),
 .SEL( COUT11b ),
 .SELb( COUT11 ),
 .Y( SUM12b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( XNOR12 )
);


full_adder
#(
.kSUMb ( "'kSUMb'" ) ,
.kTS ( "'kTS'" )
)
x85 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .A( A13 ),
 .B( B13p ),
 .CIN( OR12 ),
 .SUMb( SUM_113b ),
 .COUT( COUT_113 )
);


full_adder
#(
.kSUMb ( "'kSUMb'" ) ,
.kTS ( "'kTS'" )
)
x86 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .A( A14 ),
 .B( B14p ),
 .CIN( COUT_113 ),
 .SUMb( SUM_114b ),
 .COUT( COUT_114 )
);


full_adder
#(
.kSUMb ( "'kSUMb'" ) ,
.kTS ( "'kTS'" )
)
x87 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .A( A15 ),
 .B( B15p ),
 .CIN( COUT_114 ),
 .SUMb( SUM_115b ),
 .COUT( COUT_115 )
);


2x4_decoder
x88 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .S0( SEL0 ),
 .S1( SEL1 ),
 .SA( SA ),
 .SB( SB ),
 .SC( SC ),
 .SD( SD )
);


and16
x89 ( 
 .IN( {XOR15,XOR14,XOR13,XOR12,XOR11,XOR10,XOR9,XOR8,XOR7,XOR6,XOR5,XOR4,XOR3,XOR2,XOR1,XOR0} ),
 .VDD( VDD ),
 .OUT( Z ),
 .VSS( VSS )
);


2x1_mux_cmos
#(
.kI ( "'kI'" ) ,
.kYb ( "'kYb'" ) ,
.kY ( "'kY'" )
)
x91 ( 
 .A( COUT_115 ),
 .SEL( COUT11b ),
 .SELb( COUT11 ),
 .Y( COUT15 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( COUT_015 ),
 .Yb( COUT15b )
);


2x1_mux_cmos
#(
.kI ( "'kI'" ) ,
.kYb ( "'kYb'" ) ,
.kY ( "'kY'" )
)
x94 ( 
 .A( COUT_014 ),
 .SEL( COUT11 ),
 .SELb( COUT11b ),
 .Y( COUT14 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( COUT_114 ),
 .Yb( COUT14b )
);


xor2
x93 ( 
 .VDD( VDD ),
 .OUT( F ),
 .IN0( COUT14 ),
 .IN1( COUT15 ),
 .VSS( VSS )
);


xor2
x95 ( 
 .VDD( VDD ),
 .OUT( N ),
 .IN0( F ),
 .IN1( Y15 ),
 .VSS( VSS )
);


xor2
x1215 ( 
 .VDD( VDD ),
 .OUT( B15p ),
 .IN0( B15 ),
 .IN1( CIN ),
 .VSS( VSS )
);


xor2
x1214 ( 
 .VDD( VDD ),
 .OUT( B14p ),
 .IN0( B14 ),
 .IN1( CIN ),
 .VSS( VSS )
);


xor2
x1213 ( 
 .VDD( VDD ),
 .OUT( B13p ),
 .IN0( B13 ),
 .IN1( CIN ),
 .VSS( VSS )
);


xor2
x1212 ( 
 .VDD( VDD ),
 .OUT( B12p ),
 .IN0( B12 ),
 .IN1( CIN ),
 .VSS( VSS )
);


xor2
x1211 ( 
 .VDD( VDD ),
 .OUT( B11p ),
 .IN0( B11 ),
 .IN1( CIN ),
 .VSS( VSS )
);


xor2
x1210 ( 
 .VDD( VDD ),
 .OUT( B10p ),
 .IN0( B10 ),
 .IN1( CIN ),
 .VSS( VSS )
);


xor2
x129 ( 
 .VDD( VDD ),
 .OUT( B9p ),
 .IN0( B9 ),
 .IN1( CIN ),
 .VSS( VSS )
);


xor2
x128 ( 
 .VDD( VDD ),
 .OUT( B8p ),
 .IN0( B8 ),
 .IN1( CIN ),
 .VSS( VSS )
);


xor2
x127 ( 
 .VDD( VDD ),
 .OUT( B7p ),
 .IN0( B7 ),
 .IN1( CIN ),
 .VSS( VSS )
);


xor2
x126 ( 
 .VDD( VDD ),
 .OUT( B6p ),
 .IN0( B6 ),
 .IN1( CIN ),
 .VSS( VSS )
);


xor2
x125 ( 
 .VDD( VDD ),
 .OUT( B5p ),
 .IN0( B5 ),
 .IN1( CIN ),
 .VSS( VSS )
);


xor2
x124 ( 
 .VDD( VDD ),
 .OUT( B4p ),
 .IN0( B4 ),
 .IN1( CIN ),
 .VSS( VSS )
);


xor2
x123 ( 
 .VDD( VDD ),
 .OUT( B3p ),
 .IN0( B3 ),
 .IN1( CIN ),
 .VSS( VSS )
);


xor2
x122 ( 
 .VDD( VDD ),
 .OUT( B2p ),
 .IN0( B2 ),
 .IN1( CIN ),
 .VSS( VSS )
);


xor2
x121 ( 
 .VDD( VDD ),
 .OUT( B1p ),
 .IN0( B1 ),
 .IN1( CIN ),
 .VSS( VSS )
);


xor2
x120 ( 
 .VDD( VDD ),
 .OUT( B0p ),
 .IN0( B0 ),
 .IN1( CIN ),
 .VSS( VSS )
);


.param kSUMb=1
.param kTS=1
.param kI=2.5
.param kYb=1.875
.param kY=0.775/0.36

endmodule

// expanding   symbol:  engn1600-team1/CAD3/rf.sym # of pins=10
// sym_path: /foss/designs/engn1600-team1/CAD3/rf.sym
// sch_path: /foss/designs/engn1600-team1/CAD3/rf.sch
module rf
(
  input wire CLK,
  input wire WEM,
  inout wire VDD,
  inout wire VSS,
  input wire [15..0] WE,
  input wire [15..0] RA,
  input wire [15..0] RB,
  input wire [15..0] D,
  output wire [15..0b] QA,
  output wire [15..0b] QB
);
wire N10 ;
wire N11 ;
wire N12 ;
wire N13 ;
wire N14 ;
wire N15 ;
wire WE10CLK ;
wire WE9CLK ;
wire WE2CLK ;
wire QA0 ;
wire QA1 ;
wire QA2 ;
wire QA3 ;
wire QA4 ;
wire QA5 ;
wire QA6 ;
wire QA7 ;
wire QA8 ;
wire QA9 ;
wire QB0 ;
wire QB1 ;
wire QB2 ;
wire QB3 ;
wire QB4 ;
wire QB5 ;
wire QB6 ;
wire QB7 ;
wire QB8 ;
wire QB9 ;
wire WE11CLK ;
wire WE3CLK ;
wire WE15CLKb ;
wire WE13CLKb ;
wire WE11CLKb ;
wire WE12CLK ;
wire N0 ;
wire N1 ;
wire N2 ;
wire N3 ;
wire N4 ;
wire N5 ;
wire N6 ;
wire N7 ;
wire N8 ;
wire N9 ;
wire WE4CLK ;
wire WE8CLKb ;
wire WE6CLKb ;
wire WE4CLKb ;
wire WE2CLKb ;
wire WE0CLKb ;
wire WE13CLK ;
wire WE5CLK ;
wire WEMb ;
wire WE14CLK ;
wire QA10 ;
wire QA11 ;
wire QA12 ;
wire QA13 ;
wire QA14 ;
wire QA15 ;
wire QB10 ;
wire QB11 ;
wire QB12 ;
wire QB13 ;
wire QB14 ;
wire QB15 ;
wire WE6CLK ;
wire WE15CLK ;
wire WE14CLKb ;
wire WE7CLK ;
wire WE12CLKb ;
wire WE10CLKb ;
wire WE0CLK ;
wire WE9CLKb ;
wire WE7CLKb ;
wire WE8CLK ;
wire WE5CLKb ;
wire WE3CLKb ;
wire WE1CLKb ;
wire WE1CLK ;


slave_latch
#(
.kQ ( "'kQ'" )
)
x0_0 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA0 ),
 .WECLK( WE0CLK ),
 .WECLKb( WE0CLKb ),
 .RA( RA0 ),
 .RB( RB0 ),
 .QB( QB0 ),
 .D( N0 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x0_1 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA1 ),
 .WECLK( WE0CLK ),
 .WECLKb( WE0CLKb ),
 .RA( RA0 ),
 .RB( RB0 ),
 .QB( QB1 ),
 .D( N1 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x0_2 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA2 ),
 .WECLK( WE0CLK ),
 .WECLKb( WE0CLKb ),
 .RA( RA0 ),
 .RB( RB0 ),
 .QB( QB2 ),
 .D( N2 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x0_3 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA3 ),
 .WECLK( WE0CLK ),
 .WECLKb( WE0CLKb ),
 .RA( RA0 ),
 .RB( RB0 ),
 .QB( QB3 ),
 .D( N3 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x0_4 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA4 ),
 .WECLK( WE0CLK ),
 .WECLKb( WE0CLKb ),
 .RA( RA0 ),
 .RB( RB0 ),
 .QB( QB4 ),
 .D( N4 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x0_5 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA5 ),
 .WECLK( WE0CLK ),
 .WECLKb( WE0CLKb ),
 .RA( RA0 ),
 .RB( RB0 ),
 .QB( QB5 ),
 .D( N5 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x0_6 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA6 ),
 .WECLK( WE0CLK ),
 .WECLKb( WE0CLKb ),
 .RA( RA0 ),
 .RB( RB0 ),
 .QB( QB6 ),
 .D( N6 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x0_7 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA7 ),
 .WECLK( WE0CLK ),
 .WECLKb( WE0CLKb ),
 .RA( RA0 ),
 .RB( RB0 ),
 .QB( QB7 ),
 .D( N7 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x0_8 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA8 ),
 .WECLK( WE0CLK ),
 .WECLKb( WE0CLKb ),
 .RA( RA0 ),
 .RB( RB0 ),
 .QB( QB8 ),
 .D( N8 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x0_9 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA9 ),
 .WECLK( WE0CLK ),
 .WECLKb( WE0CLKb ),
 .RA( RA0 ),
 .RB( RB0 ),
 .QB( QB9 ),
 .D( N9 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x0_10 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA10 ),
 .WECLK( WE0CLK ),
 .WECLKb( WE0CLKb ),
 .RA( RA0 ),
 .RB( RB0 ),
 .QB( QB10 ),
 .D( N10 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x0_11 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA11 ),
 .WECLK( WE0CLK ),
 .WECLKb( WE0CLKb ),
 .RA( RA0 ),
 .RB( RB0 ),
 .QB( QB11 ),
 .D( N11 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x0_12 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA12 ),
 .WECLK( WE0CLK ),
 .WECLKb( WE0CLKb ),
 .RA( RA0 ),
 .RB( RB0 ),
 .QB( QB12 ),
 .D( N12 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x0_13 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA13 ),
 .WECLK( WE0CLK ),
 .WECLKb( WE0CLKb ),
 .RA( RA0 ),
 .RB( RB0 ),
 .QB( QB13 ),
 .D( N13 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x0_14 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA14 ),
 .WECLK( WE0CLK ),
 .WECLKb( WE0CLKb ),
 .RA( RA0 ),
 .RB( RB0 ),
 .QB( QB14 ),
 .D( N14 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x0_15 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA15 ),
 .WECLK( WE0CLK ),
 .WECLKb( WE0CLKb ),
 .RA( RA0 ),
 .RB( RB0 ),
 .QB( QB15 ),
 .D( N15 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x1_0 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA0 ),
 .WECLK( WE1CLK ),
 .WECLKb( WE1CLKb ),
 .RA( RA1 ),
 .RB( RB1 ),
 .QB( QB0 ),
 .D( N0 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x1_1 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA1 ),
 .WECLK( WE1CLK ),
 .WECLKb( WE1CLKb ),
 .RA( RA1 ),
 .RB( RB1 ),
 .QB( QB1 ),
 .D( N1 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x1_2 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA2 ),
 .WECLK( WE1CLK ),
 .WECLKb( WE1CLKb ),
 .RA( RA1 ),
 .RB( RB1 ),
 .QB( QB2 ),
 .D( N2 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x1_3 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA3 ),
 .WECLK( WE1CLK ),
 .WECLKb( WE1CLKb ),
 .RA( RA1 ),
 .RB( RB1 ),
 .QB( QB3 ),
 .D( N3 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x1_4 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA4 ),
 .WECLK( WE1CLK ),
 .WECLKb( WE1CLKb ),
 .RA( RA1 ),
 .RB( RB1 ),
 .QB( QB4 ),
 .D( N4 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x1_5 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA5 ),
 .WECLK( WE1CLK ),
 .WECLKb( WE1CLKb ),
 .RA( RA1 ),
 .RB( RB1 ),
 .QB( QB5 ),
 .D( N5 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x1_6 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA6 ),
 .WECLK( WE1CLK ),
 .WECLKb( WE1CLKb ),
 .RA( RA1 ),
 .RB( RB1 ),
 .QB( QB6 ),
 .D( N6 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x1_7 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA7 ),
 .WECLK( WE1CLK ),
 .WECLKb( WE1CLKb ),
 .RA( RA1 ),
 .RB( RB1 ),
 .QB( QB7 ),
 .D( N7 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x1_8 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA8 ),
 .WECLK( WE1CLK ),
 .WECLKb( WE1CLKb ),
 .RA( RA1 ),
 .RB( RB1 ),
 .QB( QB8 ),
 .D( N8 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x1_9 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA9 ),
 .WECLK( WE1CLK ),
 .WECLKb( WE1CLKb ),
 .RA( RA1 ),
 .RB( RB1 ),
 .QB( QB9 ),
 .D( N9 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x1_10 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA10 ),
 .WECLK( WE1CLK ),
 .WECLKb( WE1CLKb ),
 .RA( RA1 ),
 .RB( RB1 ),
 .QB( QB10 ),
 .D( N10 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x1_11 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA11 ),
 .WECLK( WE1CLK ),
 .WECLKb( WE1CLKb ),
 .RA( RA1 ),
 .RB( RB1 ),
 .QB( QB11 ),
 .D( N11 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x1_12 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA12 ),
 .WECLK( WE1CLK ),
 .WECLKb( WE1CLKb ),
 .RA( RA1 ),
 .RB( RB1 ),
 .QB( QB12 ),
 .D( N12 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x1_13 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA13 ),
 .WECLK( WE1CLK ),
 .WECLKb( WE1CLKb ),
 .RA( RA1 ),
 .RB( RB1 ),
 .QB( QB13 ),
 .D( N13 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x1_14 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA14 ),
 .WECLK( WE1CLK ),
 .WECLKb( WE1CLKb ),
 .RA( RA1 ),
 .RB( RB1 ),
 .QB( QB14 ),
 .D( N14 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x1_15 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA15 ),
 .WECLK( WE1CLK ),
 .WECLKb( WE1CLKb ),
 .RA( RA1 ),
 .RB( RB1 ),
 .QB( QB15 ),
 .D( N15 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x2_0 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA0 ),
 .WECLK( WE2CLK ),
 .WECLKb( WE2CLKb ),
 .RA( RA2 ),
 .RB( RB2 ),
 .QB( QB0 ),
 .D( N0 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x2_1 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA1 ),
 .WECLK( WE2CLK ),
 .WECLKb( WE2CLKb ),
 .RA( RA2 ),
 .RB( RB2 ),
 .QB( QB1 ),
 .D( N1 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x2_2 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA2 ),
 .WECLK( WE2CLK ),
 .WECLKb( WE2CLKb ),
 .RA( RA2 ),
 .RB( RB2 ),
 .QB( QB2 ),
 .D( N2 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x2_3 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA3 ),
 .WECLK( WE2CLK ),
 .WECLKb( WE2CLKb ),
 .RA( RA2 ),
 .RB( RB2 ),
 .QB( QB3 ),
 .D( N3 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x2_4 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA4 ),
 .WECLK( WE2CLK ),
 .WECLKb( WE2CLKb ),
 .RA( RA2 ),
 .RB( RB2 ),
 .QB( QB4 ),
 .D( N4 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x2_5 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA5 ),
 .WECLK( WE2CLK ),
 .WECLKb( WE2CLKb ),
 .RA( RA2 ),
 .RB( RB2 ),
 .QB( QB5 ),
 .D( N5 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x2_6 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA6 ),
 .WECLK( WE2CLK ),
 .WECLKb( WE2CLKb ),
 .RA( RA2 ),
 .RB( RB2 ),
 .QB( QB6 ),
 .D( N6 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x2_7 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA7 ),
 .WECLK( WE2CLK ),
 .WECLKb( WE2CLKb ),
 .RA( RA2 ),
 .RB( RB2 ),
 .QB( QB7 ),
 .D( N7 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x2_8 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA8 ),
 .WECLK( WE2CLK ),
 .WECLKb( WE2CLKb ),
 .RA( RA2 ),
 .RB( RB2 ),
 .QB( QB8 ),
 .D( N8 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x2_9 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA9 ),
 .WECLK( WE2CLK ),
 .WECLKb( WE2CLKb ),
 .RA( RA2 ),
 .RB( RB2 ),
 .QB( QB9 ),
 .D( N9 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x2_10 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA10 ),
 .WECLK( WE2CLK ),
 .WECLKb( WE2CLKb ),
 .RA( RA2 ),
 .RB( RB2 ),
 .QB( QB10 ),
 .D( N10 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x2_11 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA11 ),
 .WECLK( WE2CLK ),
 .WECLKb( WE2CLKb ),
 .RA( RA2 ),
 .RB( RB2 ),
 .QB( QB11 ),
 .D( N11 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x2_12 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA12 ),
 .WECLK( WE2CLK ),
 .WECLKb( WE2CLKb ),
 .RA( RA2 ),
 .RB( RB2 ),
 .QB( QB12 ),
 .D( N12 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x2_13 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA13 ),
 .WECLK( WE2CLK ),
 .WECLKb( WE2CLKb ),
 .RA( RA2 ),
 .RB( RB2 ),
 .QB( QB13 ),
 .D( N13 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x2_14 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA14 ),
 .WECLK( WE2CLK ),
 .WECLKb( WE2CLKb ),
 .RA( RA2 ),
 .RB( RB2 ),
 .QB( QB14 ),
 .D( N14 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x2_15 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA15 ),
 .WECLK( WE2CLK ),
 .WECLKb( WE2CLKb ),
 .RA( RA2 ),
 .RB( RB2 ),
 .QB( QB15 ),
 .D( N15 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x3_0 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA0 ),
 .WECLK( WE3CLK ),
 .WECLKb( WE3CLKb ),
 .RA( RA3 ),
 .RB( RB3 ),
 .QB( QB0 ),
 .D( N0 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x3_1 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA1 ),
 .WECLK( WE3CLK ),
 .WECLKb( WE3CLKb ),
 .RA( RA3 ),
 .RB( RB3 ),
 .QB( QB1 ),
 .D( N1 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x3_2 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA2 ),
 .WECLK( WE3CLK ),
 .WECLKb( WE3CLKb ),
 .RA( RA3 ),
 .RB( RB3 ),
 .QB( QB2 ),
 .D( N2 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x3_3 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA3 ),
 .WECLK( WE3CLK ),
 .WECLKb( WE3CLKb ),
 .RA( RA3 ),
 .RB( RB3 ),
 .QB( QB3 ),
 .D( N3 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x3_4 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA4 ),
 .WECLK( WE3CLK ),
 .WECLKb( WE3CLKb ),
 .RA( RA3 ),
 .RB( RB3 ),
 .QB( QB4 ),
 .D( N4 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x3_5 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA5 ),
 .WECLK( WE3CLK ),
 .WECLKb( WE3CLKb ),
 .RA( RA3 ),
 .RB( RB3 ),
 .QB( QB5 ),
 .D( N5 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x3_6 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA6 ),
 .WECLK( WE3CLK ),
 .WECLKb( WE3CLKb ),
 .RA( RA3 ),
 .RB( RB3 ),
 .QB( QB6 ),
 .D( N6 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x3_7 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA7 ),
 .WECLK( WE3CLK ),
 .WECLKb( WE3CLKb ),
 .RA( RA3 ),
 .RB( RB3 ),
 .QB( QB7 ),
 .D( N7 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x3_8 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA8 ),
 .WECLK( WE3CLK ),
 .WECLKb( WE3CLKb ),
 .RA( RA3 ),
 .RB( RB3 ),
 .QB( QB8 ),
 .D( N8 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x3_9 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA9 ),
 .WECLK( WE3CLK ),
 .WECLKb( WE3CLKb ),
 .RA( RA3 ),
 .RB( RB3 ),
 .QB( QB9 ),
 .D( N9 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x3_10 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA10 ),
 .WECLK( WE3CLK ),
 .WECLKb( WE3CLKb ),
 .RA( RA3 ),
 .RB( RB3 ),
 .QB( QB10 ),
 .D( N10 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x3_11 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA11 ),
 .WECLK( WE3CLK ),
 .WECLKb( WE3CLKb ),
 .RA( RA3 ),
 .RB( RB3 ),
 .QB( QB11 ),
 .D( N11 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x3_12 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA12 ),
 .WECLK( WE3CLK ),
 .WECLKb( WE3CLKb ),
 .RA( RA3 ),
 .RB( RB3 ),
 .QB( QB12 ),
 .D( N12 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x3_13 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA13 ),
 .WECLK( WE3CLK ),
 .WECLKb( WE3CLKb ),
 .RA( RA3 ),
 .RB( RB3 ),
 .QB( QB13 ),
 .D( N13 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x3_14 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA14 ),
 .WECLK( WE3CLK ),
 .WECLKb( WE3CLKb ),
 .RA( RA3 ),
 .RB( RB3 ),
 .QB( QB14 ),
 .D( N14 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x3_15 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA15 ),
 .WECLK( WE3CLK ),
 .WECLKb( WE3CLKb ),
 .RA( RA3 ),
 .RB( RB3 ),
 .QB( QB15 ),
 .D( N15 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x4_0 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA0 ),
 .WECLK( WE4CLK ),
 .WECLKb( WE4CLKb ),
 .RA( RA4 ),
 .RB( RB4 ),
 .QB( QB0 ),
 .D( N0 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x4_1 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA1 ),
 .WECLK( WE4CLK ),
 .WECLKb( WE4CLKb ),
 .RA( RA4 ),
 .RB( RB4 ),
 .QB( QB1 ),
 .D( N1 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x4_2 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA2 ),
 .WECLK( WE4CLK ),
 .WECLKb( WE4CLKb ),
 .RA( RA4 ),
 .RB( RB4 ),
 .QB( QB2 ),
 .D( N2 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x4_3 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA3 ),
 .WECLK( WE4CLK ),
 .WECLKb( WE4CLKb ),
 .RA( RA4 ),
 .RB( RB4 ),
 .QB( QB3 ),
 .D( N3 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x4_4 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA4 ),
 .WECLK( WE4CLK ),
 .WECLKb( WE4CLKb ),
 .RA( RA4 ),
 .RB( RB4 ),
 .QB( QB4 ),
 .D( N4 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x4_5 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA5 ),
 .WECLK( WE4CLK ),
 .WECLKb( WE4CLKb ),
 .RA( RA4 ),
 .RB( RB4 ),
 .QB( QB5 ),
 .D( N5 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x4_6 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA6 ),
 .WECLK( WE4CLK ),
 .WECLKb( WE4CLKb ),
 .RA( RA4 ),
 .RB( RB4 ),
 .QB( QB6 ),
 .D( N6 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x4_7 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA7 ),
 .WECLK( WE4CLK ),
 .WECLKb( WE4CLKb ),
 .RA( RA4 ),
 .RB( RB4 ),
 .QB( QB7 ),
 .D( N7 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x4_8 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA8 ),
 .WECLK( WE4CLK ),
 .WECLKb( WE4CLKb ),
 .RA( RA4 ),
 .RB( RB4 ),
 .QB( QB8 ),
 .D( N8 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x4_9 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA9 ),
 .WECLK( WE4CLK ),
 .WECLKb( WE4CLKb ),
 .RA( RA4 ),
 .RB( RB4 ),
 .QB( QB9 ),
 .D( N9 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x4_10 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA10 ),
 .WECLK( WE4CLK ),
 .WECLKb( WE4CLKb ),
 .RA( RA4 ),
 .RB( RB4 ),
 .QB( QB10 ),
 .D( N10 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x4_11 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA11 ),
 .WECLK( WE4CLK ),
 .WECLKb( WE4CLKb ),
 .RA( RA4 ),
 .RB( RB4 ),
 .QB( QB11 ),
 .D( N11 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x4_12 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA12 ),
 .WECLK( WE4CLK ),
 .WECLKb( WE4CLKb ),
 .RA( RA4 ),
 .RB( RB4 ),
 .QB( QB12 ),
 .D( N12 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x4_13 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA13 ),
 .WECLK( WE4CLK ),
 .WECLKb( WE4CLKb ),
 .RA( RA4 ),
 .RB( RB4 ),
 .QB( QB13 ),
 .D( N13 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x4_14 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA14 ),
 .WECLK( WE4CLK ),
 .WECLKb( WE4CLKb ),
 .RA( RA4 ),
 .RB( RB4 ),
 .QB( QB14 ),
 .D( N14 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x4_15 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA15 ),
 .WECLK( WE4CLK ),
 .WECLKb( WE4CLKb ),
 .RA( RA4 ),
 .RB( RB4 ),
 .QB( QB15 ),
 .D( N15 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x5_0 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA0 ),
 .WECLK( WE5CLK ),
 .WECLKb( WE5CLKb ),
 .RA( RA5 ),
 .RB( RB5 ),
 .QB( QB0 ),
 .D( N0 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x5_1 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA1 ),
 .WECLK( WE5CLK ),
 .WECLKb( WE5CLKb ),
 .RA( RA5 ),
 .RB( RB5 ),
 .QB( QB1 ),
 .D( N1 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x5_2 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA2 ),
 .WECLK( WE5CLK ),
 .WECLKb( WE5CLKb ),
 .RA( RA5 ),
 .RB( RB5 ),
 .QB( QB2 ),
 .D( N2 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x5_3 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA3 ),
 .WECLK( WE5CLK ),
 .WECLKb( WE5CLKb ),
 .RA( RA5 ),
 .RB( RB5 ),
 .QB( QB3 ),
 .D( N3 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x5_4 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA4 ),
 .WECLK( WE5CLK ),
 .WECLKb( WE5CLKb ),
 .RA( RA5 ),
 .RB( RB5 ),
 .QB( QB4 ),
 .D( N4 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x5_5 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA5 ),
 .WECLK( WE5CLK ),
 .WECLKb( WE5CLKb ),
 .RA( RA5 ),
 .RB( RB5 ),
 .QB( QB5 ),
 .D( N5 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x5_6 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA6 ),
 .WECLK( WE5CLK ),
 .WECLKb( WE5CLKb ),
 .RA( RA5 ),
 .RB( RB5 ),
 .QB( QB6 ),
 .D( N6 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x5_7 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA7 ),
 .WECLK( WE5CLK ),
 .WECLKb( WE5CLKb ),
 .RA( RA5 ),
 .RB( RB5 ),
 .QB( QB7 ),
 .D( N7 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x5_8 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA8 ),
 .WECLK( WE5CLK ),
 .WECLKb( WE5CLKb ),
 .RA( RA5 ),
 .RB( RB5 ),
 .QB( QB8 ),
 .D( N8 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x5_9 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA9 ),
 .WECLK( WE5CLK ),
 .WECLKb( WE5CLKb ),
 .RA( RA5 ),
 .RB( RB5 ),
 .QB( QB9 ),
 .D( N9 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x5_10 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA10 ),
 .WECLK( WE5CLK ),
 .WECLKb( WE5CLKb ),
 .RA( RA5 ),
 .RB( RB5 ),
 .QB( QB10 ),
 .D( N10 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x5_11 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA11 ),
 .WECLK( WE5CLK ),
 .WECLKb( WE5CLKb ),
 .RA( RA5 ),
 .RB( RB5 ),
 .QB( QB11 ),
 .D( N11 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x5_12 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA12 ),
 .WECLK( WE5CLK ),
 .WECLKb( WE5CLKb ),
 .RA( RA5 ),
 .RB( RB5 ),
 .QB( QB12 ),
 .D( N12 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x5_13 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA13 ),
 .WECLK( WE5CLK ),
 .WECLKb( WE5CLKb ),
 .RA( RA5 ),
 .RB( RB5 ),
 .QB( QB13 ),
 .D( N13 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x5_14 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA14 ),
 .WECLK( WE5CLK ),
 .WECLKb( WE5CLKb ),
 .RA( RA5 ),
 .RB( RB5 ),
 .QB( QB14 ),
 .D( N14 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x5_15 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA15 ),
 .WECLK( WE5CLK ),
 .WECLKb( WE5CLKb ),
 .RA( RA5 ),
 .RB( RB5 ),
 .QB( QB15 ),
 .D( N15 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x6_0 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA0 ),
 .WECLK( WE6CLK ),
 .WECLKb( WE6CLKb ),
 .RA( RA6 ),
 .RB( RB6 ),
 .QB( QB0 ),
 .D( N0 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x6_1 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA1 ),
 .WECLK( WE6CLK ),
 .WECLKb( WE6CLKb ),
 .RA( RA6 ),
 .RB( RB6 ),
 .QB( QB1 ),
 .D( N1 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x6_2 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA2 ),
 .WECLK( WE6CLK ),
 .WECLKb( WE6CLKb ),
 .RA( RA6 ),
 .RB( RB6 ),
 .QB( QB2 ),
 .D( N2 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x6_3 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA3 ),
 .WECLK( WE6CLK ),
 .WECLKb( WE6CLKb ),
 .RA( RA6 ),
 .RB( RB6 ),
 .QB( QB3 ),
 .D( N3 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x6_4 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA4 ),
 .WECLK( WE6CLK ),
 .WECLKb( WE6CLKb ),
 .RA( RA6 ),
 .RB( RB6 ),
 .QB( QB4 ),
 .D( N4 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x6_5 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA5 ),
 .WECLK( WE6CLK ),
 .WECLKb( WE6CLKb ),
 .RA( RA6 ),
 .RB( RB6 ),
 .QB( QB5 ),
 .D( N5 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x6_6 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA6 ),
 .WECLK( WE6CLK ),
 .WECLKb( WE6CLKb ),
 .RA( RA6 ),
 .RB( RB6 ),
 .QB( QB6 ),
 .D( N6 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x6_7 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA7 ),
 .WECLK( WE6CLK ),
 .WECLKb( WE6CLKb ),
 .RA( RA6 ),
 .RB( RB6 ),
 .QB( QB7 ),
 .D( N7 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x6_8 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA8 ),
 .WECLK( WE6CLK ),
 .WECLKb( WE6CLKb ),
 .RA( RA6 ),
 .RB( RB6 ),
 .QB( QB8 ),
 .D( N8 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x6_9 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA9 ),
 .WECLK( WE6CLK ),
 .WECLKb( WE6CLKb ),
 .RA( RA6 ),
 .RB( RB6 ),
 .QB( QB9 ),
 .D( N9 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x6_10 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA10 ),
 .WECLK( WE6CLK ),
 .WECLKb( WE6CLKb ),
 .RA( RA6 ),
 .RB( RB6 ),
 .QB( QB10 ),
 .D( N10 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x6_11 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA11 ),
 .WECLK( WE6CLK ),
 .WECLKb( WE6CLKb ),
 .RA( RA6 ),
 .RB( RB6 ),
 .QB( QB11 ),
 .D( N11 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x6_12 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA12 ),
 .WECLK( WE6CLK ),
 .WECLKb( WE6CLKb ),
 .RA( RA6 ),
 .RB( RB6 ),
 .QB( QB12 ),
 .D( N12 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x6_13 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA13 ),
 .WECLK( WE6CLK ),
 .WECLKb( WE6CLKb ),
 .RA( RA6 ),
 .RB( RB6 ),
 .QB( QB13 ),
 .D( N13 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x6_14 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA14 ),
 .WECLK( WE6CLK ),
 .WECLKb( WE6CLKb ),
 .RA( RA6 ),
 .RB( RB6 ),
 .QB( QB14 ),
 .D( N14 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x6_15 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA15 ),
 .WECLK( WE6CLK ),
 .WECLKb( WE6CLKb ),
 .RA( RA6 ),
 .RB( RB6 ),
 .QB( QB15 ),
 .D( N15 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x7_0 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA0 ),
 .WECLK( WE7CLK ),
 .WECLKb( WE7CLKb ),
 .RA( RA7 ),
 .RB( RB7 ),
 .QB( QB0 ),
 .D( N0 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x7_1 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA1 ),
 .WECLK( WE7CLK ),
 .WECLKb( WE7CLKb ),
 .RA( RA7 ),
 .RB( RB7 ),
 .QB( QB1 ),
 .D( N1 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x7_2 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA2 ),
 .WECLK( WE7CLK ),
 .WECLKb( WE7CLKb ),
 .RA( RA7 ),
 .RB( RB7 ),
 .QB( QB2 ),
 .D( N2 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x7_3 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA3 ),
 .WECLK( WE7CLK ),
 .WECLKb( WE7CLKb ),
 .RA( RA7 ),
 .RB( RB7 ),
 .QB( QB3 ),
 .D( N3 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x7_4 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA4 ),
 .WECLK( WE7CLK ),
 .WECLKb( WE7CLKb ),
 .RA( RA7 ),
 .RB( RB7 ),
 .QB( QB4 ),
 .D( N4 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x7_5 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA5 ),
 .WECLK( WE7CLK ),
 .WECLKb( WE7CLKb ),
 .RA( RA7 ),
 .RB( RB7 ),
 .QB( QB5 ),
 .D( N5 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x7_6 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA6 ),
 .WECLK( WE7CLK ),
 .WECLKb( WE7CLKb ),
 .RA( RA7 ),
 .RB( RB7 ),
 .QB( QB6 ),
 .D( N6 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x7_7 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA7 ),
 .WECLK( WE7CLK ),
 .WECLKb( WE7CLKb ),
 .RA( RA7 ),
 .RB( RB7 ),
 .QB( QB7 ),
 .D( N7 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x7_8 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA8 ),
 .WECLK( WE7CLK ),
 .WECLKb( WE7CLKb ),
 .RA( RA7 ),
 .RB( RB7 ),
 .QB( QB8 ),
 .D( N8 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x7_9 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA9 ),
 .WECLK( WE7CLK ),
 .WECLKb( WE7CLKb ),
 .RA( RA7 ),
 .RB( RB7 ),
 .QB( QB9 ),
 .D( N9 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x7_10 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA10 ),
 .WECLK( WE7CLK ),
 .WECLKb( WE7CLKb ),
 .RA( RA7 ),
 .RB( RB7 ),
 .QB( QB10 ),
 .D( N10 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x7_11 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA11 ),
 .WECLK( WE7CLK ),
 .WECLKb( WE7CLKb ),
 .RA( RA7 ),
 .RB( RB7 ),
 .QB( QB11 ),
 .D( N11 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x7_12 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA12 ),
 .WECLK( WE7CLK ),
 .WECLKb( WE7CLKb ),
 .RA( RA7 ),
 .RB( RB7 ),
 .QB( QB12 ),
 .D( N12 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x7_13 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA13 ),
 .WECLK( WE7CLK ),
 .WECLKb( WE7CLKb ),
 .RA( RA7 ),
 .RB( RB7 ),
 .QB( QB13 ),
 .D( N13 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x7_14 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA14 ),
 .WECLK( WE7CLK ),
 .WECLKb( WE7CLKb ),
 .RA( RA7 ),
 .RB( RB7 ),
 .QB( QB14 ),
 .D( N14 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x7_15 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA15 ),
 .WECLK( WE7CLK ),
 .WECLKb( WE7CLKb ),
 .RA( RA7 ),
 .RB( RB7 ),
 .QB( QB15 ),
 .D( N15 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x8_0 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA0 ),
 .WECLK( WE8CLK ),
 .WECLKb( WE8CLKb ),
 .RA( RA8 ),
 .RB( RB8 ),
 .QB( QB0 ),
 .D( N0 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x8_1 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA1 ),
 .WECLK( WE8CLK ),
 .WECLKb( WE8CLKb ),
 .RA( RA8 ),
 .RB( RB8 ),
 .QB( QB1 ),
 .D( N1 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x8_2 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA2 ),
 .WECLK( WE8CLK ),
 .WECLKb( WE8CLKb ),
 .RA( RA8 ),
 .RB( RB8 ),
 .QB( QB2 ),
 .D( N2 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x8_3 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA3 ),
 .WECLK( WE8CLK ),
 .WECLKb( WE8CLKb ),
 .RA( RA8 ),
 .RB( RB8 ),
 .QB( QB3 ),
 .D( N3 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x8_4 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA4 ),
 .WECLK( WE8CLK ),
 .WECLKb( WE8CLKb ),
 .RA( RA8 ),
 .RB( RB8 ),
 .QB( QB4 ),
 .D( N4 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x8_5 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA5 ),
 .WECLK( WE8CLK ),
 .WECLKb( WE8CLKb ),
 .RA( RA8 ),
 .RB( RB8 ),
 .QB( QB5 ),
 .D( N5 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x8_6 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA6 ),
 .WECLK( WE8CLK ),
 .WECLKb( WE8CLKb ),
 .RA( RA8 ),
 .RB( RB8 ),
 .QB( QB6 ),
 .D( N6 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x8_7 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA7 ),
 .WECLK( WE8CLK ),
 .WECLKb( WE8CLKb ),
 .RA( RA8 ),
 .RB( RB8 ),
 .QB( QB7 ),
 .D( N7 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x8_8 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA8 ),
 .WECLK( WE8CLK ),
 .WECLKb( WE8CLKb ),
 .RA( RA8 ),
 .RB( RB8 ),
 .QB( QB8 ),
 .D( N8 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x8_9 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA9 ),
 .WECLK( WE8CLK ),
 .WECLKb( WE8CLKb ),
 .RA( RA8 ),
 .RB( RB8 ),
 .QB( QB9 ),
 .D( N9 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x8_10 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA10 ),
 .WECLK( WE8CLK ),
 .WECLKb( WE8CLKb ),
 .RA( RA8 ),
 .RB( RB8 ),
 .QB( QB10 ),
 .D( N10 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x8_11 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA11 ),
 .WECLK( WE8CLK ),
 .WECLKb( WE8CLKb ),
 .RA( RA8 ),
 .RB( RB8 ),
 .QB( QB11 ),
 .D( N11 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x8_12 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA12 ),
 .WECLK( WE8CLK ),
 .WECLKb( WE8CLKb ),
 .RA( RA8 ),
 .RB( RB8 ),
 .QB( QB12 ),
 .D( N12 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x8_13 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA13 ),
 .WECLK( WE8CLK ),
 .WECLKb( WE8CLKb ),
 .RA( RA8 ),
 .RB( RB8 ),
 .QB( QB13 ),
 .D( N13 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x8_14 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA14 ),
 .WECLK( WE8CLK ),
 .WECLKb( WE8CLKb ),
 .RA( RA8 ),
 .RB( RB8 ),
 .QB( QB14 ),
 .D( N14 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x8_15 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA15 ),
 .WECLK( WE8CLK ),
 .WECLKb( WE8CLKb ),
 .RA( RA8 ),
 .RB( RB8 ),
 .QB( QB15 ),
 .D( N15 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x9_0 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA0 ),
 .WECLK( WE9CLK ),
 .WECLKb( WE9CLKb ),
 .RA( RA9 ),
 .RB( RB9 ),
 .QB( QB0 ),
 .D( N0 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x9_1 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA1 ),
 .WECLK( WE9CLK ),
 .WECLKb( WE9CLKb ),
 .RA( RA9 ),
 .RB( RB9 ),
 .QB( QB1 ),
 .D( N1 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x9_2 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA2 ),
 .WECLK( WE9CLK ),
 .WECLKb( WE9CLKb ),
 .RA( RA9 ),
 .RB( RB9 ),
 .QB( QB2 ),
 .D( N2 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x9_3 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA3 ),
 .WECLK( WE9CLK ),
 .WECLKb( WE9CLKb ),
 .RA( RA9 ),
 .RB( RB9 ),
 .QB( QB3 ),
 .D( N3 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x9_4 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA4 ),
 .WECLK( WE9CLK ),
 .WECLKb( WE9CLKb ),
 .RA( RA9 ),
 .RB( RB9 ),
 .QB( QB4 ),
 .D( N4 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x9_5 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA5 ),
 .WECLK( WE9CLK ),
 .WECLKb( WE9CLKb ),
 .RA( RA9 ),
 .RB( RB9 ),
 .QB( QB5 ),
 .D( N5 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x9_6 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA6 ),
 .WECLK( WE9CLK ),
 .WECLKb( WE9CLKb ),
 .RA( RA9 ),
 .RB( RB9 ),
 .QB( QB6 ),
 .D( N6 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x9_7 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA7 ),
 .WECLK( WE9CLK ),
 .WECLKb( WE9CLKb ),
 .RA( RA9 ),
 .RB( RB9 ),
 .QB( QB7 ),
 .D( N7 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x9_8 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA8 ),
 .WECLK( WE9CLK ),
 .WECLKb( WE9CLKb ),
 .RA( RA9 ),
 .RB( RB9 ),
 .QB( QB8 ),
 .D( N8 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x9_9 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA9 ),
 .WECLK( WE9CLK ),
 .WECLKb( WE9CLKb ),
 .RA( RA9 ),
 .RB( RB9 ),
 .QB( QB9 ),
 .D( N9 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x9_10 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA10 ),
 .WECLK( WE9CLK ),
 .WECLKb( WE9CLKb ),
 .RA( RA9 ),
 .RB( RB9 ),
 .QB( QB10 ),
 .D( N10 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x9_11 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA11 ),
 .WECLK( WE9CLK ),
 .WECLKb( WE9CLKb ),
 .RA( RA9 ),
 .RB( RB9 ),
 .QB( QB11 ),
 .D( N11 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x9_12 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA12 ),
 .WECLK( WE9CLK ),
 .WECLKb( WE9CLKb ),
 .RA( RA9 ),
 .RB( RB9 ),
 .QB( QB12 ),
 .D( N12 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x9_13 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA13 ),
 .WECLK( WE9CLK ),
 .WECLKb( WE9CLKb ),
 .RA( RA9 ),
 .RB( RB9 ),
 .QB( QB13 ),
 .D( N13 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x9_14 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA14 ),
 .WECLK( WE9CLK ),
 .WECLKb( WE9CLKb ),
 .RA( RA9 ),
 .RB( RB9 ),
 .QB( QB14 ),
 .D( N14 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x9_15 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA15 ),
 .WECLK( WE9CLK ),
 .WECLKb( WE9CLKb ),
 .RA( RA9 ),
 .RB( RB9 ),
 .QB( QB15 ),
 .D( N15 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x10_0 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA0 ),
 .WECLK( WE10CLK ),
 .WECLKb( WE10CLKb ),
 .RA( RA10 ),
 .RB( RB10 ),
 .QB( QB0 ),
 .D( N0 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x10_1 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA1 ),
 .WECLK( WE10CLK ),
 .WECLKb( WE10CLKb ),
 .RA( RA10 ),
 .RB( RB10 ),
 .QB( QB1 ),
 .D( N1 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x10_2 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA2 ),
 .WECLK( WE10CLK ),
 .WECLKb( WE10CLKb ),
 .RA( RA10 ),
 .RB( RB10 ),
 .QB( QB2 ),
 .D( N2 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x10_3 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA3 ),
 .WECLK( WE10CLK ),
 .WECLKb( WE10CLKb ),
 .RA( RA10 ),
 .RB( RB10 ),
 .QB( QB3 ),
 .D( N3 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x10_4 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA4 ),
 .WECLK( WE10CLK ),
 .WECLKb( WE10CLKb ),
 .RA( RA10 ),
 .RB( RB10 ),
 .QB( QB4 ),
 .D( N4 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x10_5 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA5 ),
 .WECLK( WE10CLK ),
 .WECLKb( WE10CLKb ),
 .RA( RA10 ),
 .RB( RB10 ),
 .QB( QB5 ),
 .D( N5 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x10_6 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA6 ),
 .WECLK( WE10CLK ),
 .WECLKb( WE10CLKb ),
 .RA( RA10 ),
 .RB( RB10 ),
 .QB( QB6 ),
 .D( N6 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x10_7 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA7 ),
 .WECLK( WE10CLK ),
 .WECLKb( WE10CLKb ),
 .RA( RA10 ),
 .RB( RB10 ),
 .QB( QB7 ),
 .D( N7 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x10_8 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA8 ),
 .WECLK( WE10CLK ),
 .WECLKb( WE10CLKb ),
 .RA( RA10 ),
 .RB( RB10 ),
 .QB( QB8 ),
 .D( N8 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x10_9 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA9 ),
 .WECLK( WE10CLK ),
 .WECLKb( WE10CLKb ),
 .RA( RA10 ),
 .RB( RB10 ),
 .QB( QB9 ),
 .D( N9 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x10_10 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA10 ),
 .WECLK( WE10CLK ),
 .WECLKb( WE10CLKb ),
 .RA( RA10 ),
 .RB( RB10 ),
 .QB( QB10 ),
 .D( N10 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x10_11 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA11 ),
 .WECLK( WE10CLK ),
 .WECLKb( WE10CLKb ),
 .RA( RA10 ),
 .RB( RB10 ),
 .QB( QB11 ),
 .D( N11 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x10_12 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA12 ),
 .WECLK( WE10CLK ),
 .WECLKb( WE10CLKb ),
 .RA( RA10 ),
 .RB( RB10 ),
 .QB( QB12 ),
 .D( N12 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x10_13 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA13 ),
 .WECLK( WE10CLK ),
 .WECLKb( WE10CLKb ),
 .RA( RA10 ),
 .RB( RB10 ),
 .QB( QB13 ),
 .D( N13 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x10_14 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA14 ),
 .WECLK( WE10CLK ),
 .WECLKb( WE10CLKb ),
 .RA( RA10 ),
 .RB( RB10 ),
 .QB( QB14 ),
 .D( N14 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x10_15 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA15 ),
 .WECLK( WE10CLK ),
 .WECLKb( WE10CLKb ),
 .RA( RA10 ),
 .RB( RB10 ),
 .QB( QB15 ),
 .D( N15 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x11_0 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA0 ),
 .WECLK( WE11CLK ),
 .WECLKb( WE11CLKb ),
 .RA( RA11 ),
 .RB( RB11 ),
 .QB( QB0 ),
 .D( N0 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x11_1 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA1 ),
 .WECLK( WE11CLK ),
 .WECLKb( WE11CLKb ),
 .RA( RA11 ),
 .RB( RB11 ),
 .QB( QB1 ),
 .D( N1 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x11_2 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA2 ),
 .WECLK( WE11CLK ),
 .WECLKb( WE11CLKb ),
 .RA( RA11 ),
 .RB( RB11 ),
 .QB( QB2 ),
 .D( N2 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x11_3 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA3 ),
 .WECLK( WE11CLK ),
 .WECLKb( WE11CLKb ),
 .RA( RA11 ),
 .RB( RB11 ),
 .QB( QB3 ),
 .D( N3 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x11_4 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA4 ),
 .WECLK( WE11CLK ),
 .WECLKb( WE11CLKb ),
 .RA( RA11 ),
 .RB( RB11 ),
 .QB( QB4 ),
 .D( N4 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x11_5 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA5 ),
 .WECLK( WE11CLK ),
 .WECLKb( WE11CLKb ),
 .RA( RA11 ),
 .RB( RB11 ),
 .QB( QB5 ),
 .D( N5 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x11_6 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA6 ),
 .WECLK( WE11CLK ),
 .WECLKb( WE11CLKb ),
 .RA( RA11 ),
 .RB( RB11 ),
 .QB( QB6 ),
 .D( N6 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x11_7 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA7 ),
 .WECLK( WE11CLK ),
 .WECLKb( WE11CLKb ),
 .RA( RA11 ),
 .RB( RB11 ),
 .QB( QB7 ),
 .D( N7 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x11_8 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA8 ),
 .WECLK( WE11CLK ),
 .WECLKb( WE11CLKb ),
 .RA( RA11 ),
 .RB( RB11 ),
 .QB( QB8 ),
 .D( N8 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x11_9 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA9 ),
 .WECLK( WE11CLK ),
 .WECLKb( WE11CLKb ),
 .RA( RA11 ),
 .RB( RB11 ),
 .QB( QB9 ),
 .D( N9 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x11_10 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA10 ),
 .WECLK( WE11CLK ),
 .WECLKb( WE11CLKb ),
 .RA( RA11 ),
 .RB( RB11 ),
 .QB( QB10 ),
 .D( N10 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x11_11 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA11 ),
 .WECLK( WE11CLK ),
 .WECLKb( WE11CLKb ),
 .RA( RA11 ),
 .RB( RB11 ),
 .QB( QB11 ),
 .D( N11 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x11_12 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA12 ),
 .WECLK( WE11CLK ),
 .WECLKb( WE11CLKb ),
 .RA( RA11 ),
 .RB( RB11 ),
 .QB( QB12 ),
 .D( N12 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x11_13 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA13 ),
 .WECLK( WE11CLK ),
 .WECLKb( WE11CLKb ),
 .RA( RA11 ),
 .RB( RB11 ),
 .QB( QB13 ),
 .D( N13 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x11_14 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA14 ),
 .WECLK( WE11CLK ),
 .WECLKb( WE11CLKb ),
 .RA( RA11 ),
 .RB( RB11 ),
 .QB( QB14 ),
 .D( N14 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x11_15 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA15 ),
 .WECLK( WE11CLK ),
 .WECLKb( WE11CLKb ),
 .RA( RA11 ),
 .RB( RB11 ),
 .QB( QB15 ),
 .D( N15 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x12_0 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA0 ),
 .WECLK( WE12CLK ),
 .WECLKb( WE12CLKb ),
 .RA( RA12 ),
 .RB( RB12 ),
 .QB( QB0 ),
 .D( N0 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x12_1 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA1 ),
 .WECLK( WE12CLK ),
 .WECLKb( WE12CLKb ),
 .RA( RA12 ),
 .RB( RB12 ),
 .QB( QB1 ),
 .D( N1 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x12_2 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA2 ),
 .WECLK( WE12CLK ),
 .WECLKb( WE12CLKb ),
 .RA( RA12 ),
 .RB( RB12 ),
 .QB( QB2 ),
 .D( N2 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x12_3 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA3 ),
 .WECLK( WE12CLK ),
 .WECLKb( WE12CLKb ),
 .RA( RA12 ),
 .RB( RB12 ),
 .QB( QB3 ),
 .D( N3 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x12_4 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA4 ),
 .WECLK( WE12CLK ),
 .WECLKb( WE12CLKb ),
 .RA( RA12 ),
 .RB( RB12 ),
 .QB( QB4 ),
 .D( N4 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x12_5 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA5 ),
 .WECLK( WE12CLK ),
 .WECLKb( WE12CLKb ),
 .RA( RA12 ),
 .RB( RB12 ),
 .QB( QB5 ),
 .D( N5 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x12_6 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA6 ),
 .WECLK( WE12CLK ),
 .WECLKb( WE12CLKb ),
 .RA( RA12 ),
 .RB( RB12 ),
 .QB( QB6 ),
 .D( N6 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x12_7 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA7 ),
 .WECLK( WE12CLK ),
 .WECLKb( WE12CLKb ),
 .RA( RA12 ),
 .RB( RB12 ),
 .QB( QB7 ),
 .D( N7 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x12_8 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA8 ),
 .WECLK( WE12CLK ),
 .WECLKb( WE12CLKb ),
 .RA( RA12 ),
 .RB( RB12 ),
 .QB( QB8 ),
 .D( N8 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x12_9 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA9 ),
 .WECLK( WE12CLK ),
 .WECLKb( WE12CLKb ),
 .RA( RA12 ),
 .RB( RB12 ),
 .QB( QB9 ),
 .D( N9 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x12_10 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA10 ),
 .WECLK( WE12CLK ),
 .WECLKb( WE12CLKb ),
 .RA( RA12 ),
 .RB( RB12 ),
 .QB( QB10 ),
 .D( N10 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x12_11 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA11 ),
 .WECLK( WE12CLK ),
 .WECLKb( WE12CLKb ),
 .RA( RA12 ),
 .RB( RB12 ),
 .QB( QB11 ),
 .D( N11 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x12_12 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA12 ),
 .WECLK( WE12CLK ),
 .WECLKb( WE12CLKb ),
 .RA( RA12 ),
 .RB( RB12 ),
 .QB( QB12 ),
 .D( N12 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x12_13 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA13 ),
 .WECLK( WE12CLK ),
 .WECLKb( WE12CLKb ),
 .RA( RA12 ),
 .RB( RB12 ),
 .QB( QB13 ),
 .D( N13 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x12_14 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA14 ),
 .WECLK( WE12CLK ),
 .WECLKb( WE12CLKb ),
 .RA( RA12 ),
 .RB( RB12 ),
 .QB( QB14 ),
 .D( N14 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x12_15 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA15 ),
 .WECLK( WE12CLK ),
 .WECLKb( WE12CLKb ),
 .RA( RA12 ),
 .RB( RB12 ),
 .QB( QB15 ),
 .D( N15 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x13_0 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA0 ),
 .WECLK( WE13CLK ),
 .WECLKb( WE13CLKb ),
 .RA( RA13 ),
 .RB( RB13 ),
 .QB( QB0 ),
 .D( N0 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x13_1 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA1 ),
 .WECLK( WE13CLK ),
 .WECLKb( WE13CLKb ),
 .RA( RA13 ),
 .RB( RB13 ),
 .QB( QB1 ),
 .D( N1 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x13_2 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA2 ),
 .WECLK( WE13CLK ),
 .WECLKb( WE13CLKb ),
 .RA( RA13 ),
 .RB( RB13 ),
 .QB( QB2 ),
 .D( N2 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x13_3 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA3 ),
 .WECLK( WE13CLK ),
 .WECLKb( WE13CLKb ),
 .RA( RA13 ),
 .RB( RB13 ),
 .QB( QB3 ),
 .D( N3 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x13_4 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA4 ),
 .WECLK( WE13CLK ),
 .WECLKb( WE13CLKb ),
 .RA( RA13 ),
 .RB( RB13 ),
 .QB( QB4 ),
 .D( N4 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x13_5 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA5 ),
 .WECLK( WE13CLK ),
 .WECLKb( WE13CLKb ),
 .RA( RA13 ),
 .RB( RB13 ),
 .QB( QB5 ),
 .D( N5 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x13_6 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA6 ),
 .WECLK( WE13CLK ),
 .WECLKb( WE13CLKb ),
 .RA( RA13 ),
 .RB( RB13 ),
 .QB( QB6 ),
 .D( N6 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x13_7 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA7 ),
 .WECLK( WE13CLK ),
 .WECLKb( WE13CLKb ),
 .RA( RA13 ),
 .RB( RB13 ),
 .QB( QB7 ),
 .D( N7 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x13_8 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA8 ),
 .WECLK( WE13CLK ),
 .WECLKb( WE13CLKb ),
 .RA( RA13 ),
 .RB( RB13 ),
 .QB( QB8 ),
 .D( N8 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x13_9 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA9 ),
 .WECLK( WE13CLK ),
 .WECLKb( WE13CLKb ),
 .RA( RA13 ),
 .RB( RB13 ),
 .QB( QB9 ),
 .D( N9 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x13_10 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA10 ),
 .WECLK( WE13CLK ),
 .WECLKb( WE13CLKb ),
 .RA( RA13 ),
 .RB( RB13 ),
 .QB( QB10 ),
 .D( N10 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x13_11 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA11 ),
 .WECLK( WE13CLK ),
 .WECLKb( WE13CLKb ),
 .RA( RA13 ),
 .RB( RB13 ),
 .QB( QB11 ),
 .D( N11 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x13_12 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA12 ),
 .WECLK( WE13CLK ),
 .WECLKb( WE13CLKb ),
 .RA( RA13 ),
 .RB( RB13 ),
 .QB( QB12 ),
 .D( N12 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x13_13 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA13 ),
 .WECLK( WE13CLK ),
 .WECLKb( WE13CLKb ),
 .RA( RA13 ),
 .RB( RB13 ),
 .QB( QB13 ),
 .D( N13 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x13_14 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA14 ),
 .WECLK( WE13CLK ),
 .WECLKb( WE13CLKb ),
 .RA( RA13 ),
 .RB( RB13 ),
 .QB( QB14 ),
 .D( N14 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x13_15 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA15 ),
 .WECLK( WE13CLK ),
 .WECLKb( WE13CLKb ),
 .RA( RA13 ),
 .RB( RB13 ),
 .QB( QB15 ),
 .D( N15 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x14_0 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA0 ),
 .WECLK( WE14CLK ),
 .WECLKb( WE14CLKb ),
 .RA( RA14 ),
 .RB( RB14 ),
 .QB( QB0 ),
 .D( N0 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x14_1 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA1 ),
 .WECLK( WE14CLK ),
 .WECLKb( WE14CLKb ),
 .RA( RA14 ),
 .RB( RB14 ),
 .QB( QB1 ),
 .D( N1 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x14_2 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA2 ),
 .WECLK( WE14CLK ),
 .WECLKb( WE14CLKb ),
 .RA( RA14 ),
 .RB( RB14 ),
 .QB( QB2 ),
 .D( N2 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x14_3 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA3 ),
 .WECLK( WE14CLK ),
 .WECLKb( WE14CLKb ),
 .RA( RA14 ),
 .RB( RB14 ),
 .QB( QB3 ),
 .D( N3 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x14_4 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA4 ),
 .WECLK( WE14CLK ),
 .WECLKb( WE14CLKb ),
 .RA( RA14 ),
 .RB( RB14 ),
 .QB( QB4 ),
 .D( N4 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x14_5 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA5 ),
 .WECLK( WE14CLK ),
 .WECLKb( WE14CLKb ),
 .RA( RA14 ),
 .RB( RB14 ),
 .QB( QB5 ),
 .D( N5 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x14_6 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA6 ),
 .WECLK( WE14CLK ),
 .WECLKb( WE14CLKb ),
 .RA( RA14 ),
 .RB( RB14 ),
 .QB( QB6 ),
 .D( N6 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x14_7 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA7 ),
 .WECLK( WE14CLK ),
 .WECLKb( WE14CLKb ),
 .RA( RA14 ),
 .RB( RB14 ),
 .QB( QB7 ),
 .D( N7 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x14_8 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA8 ),
 .WECLK( WE14CLK ),
 .WECLKb( WE14CLKb ),
 .RA( RA14 ),
 .RB( RB14 ),
 .QB( QB8 ),
 .D( N8 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x14_9 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA9 ),
 .WECLK( WE14CLK ),
 .WECLKb( WE14CLKb ),
 .RA( RA14 ),
 .RB( RB14 ),
 .QB( QB9 ),
 .D( N9 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x14_10 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA10 ),
 .WECLK( WE14CLK ),
 .WECLKb( WE14CLKb ),
 .RA( RA14 ),
 .RB( RB14 ),
 .QB( QB10 ),
 .D( N10 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x14_11 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA11 ),
 .WECLK( WE14CLK ),
 .WECLKb( WE14CLKb ),
 .RA( RA14 ),
 .RB( RB14 ),
 .QB( QB11 ),
 .D( N11 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x14_12 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA12 ),
 .WECLK( WE14CLK ),
 .WECLKb( WE14CLKb ),
 .RA( RA14 ),
 .RB( RB14 ),
 .QB( QB12 ),
 .D( N12 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x14_13 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA13 ),
 .WECLK( WE14CLK ),
 .WECLKb( WE14CLKb ),
 .RA( RA14 ),
 .RB( RB14 ),
 .QB( QB13 ),
 .D( N13 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x14_14 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA14 ),
 .WECLK( WE14CLK ),
 .WECLKb( WE14CLKb ),
 .RA( RA14 ),
 .RB( RB14 ),
 .QB( QB14 ),
 .D( N14 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x14_15 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA15 ),
 .WECLK( WE14CLK ),
 .WECLKb( WE14CLKb ),
 .RA( RA14 ),
 .RB( RB14 ),
 .QB( QB15 ),
 .D( N15 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x15_0 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA0 ),
 .WECLK( WE15CLK ),
 .WECLKb( WE15CLKb ),
 .RA( RA15 ),
 .RB( RB15 ),
 .QB( QB0 ),
 .D( N0 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x15_1 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA1 ),
 .WECLK( WE15CLK ),
 .WECLKb( WE15CLKb ),
 .RA( RA15 ),
 .RB( RB15 ),
 .QB( QB1 ),
 .D( N1 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x15_2 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA2 ),
 .WECLK( WE15CLK ),
 .WECLKb( WE15CLKb ),
 .RA( RA15 ),
 .RB( RB15 ),
 .QB( QB2 ),
 .D( N2 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x15_3 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA3 ),
 .WECLK( WE15CLK ),
 .WECLKb( WE15CLKb ),
 .RA( RA15 ),
 .RB( RB15 ),
 .QB( QB3 ),
 .D( N3 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x15_4 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA4 ),
 .WECLK( WE15CLK ),
 .WECLKb( WE15CLKb ),
 .RA( RA15 ),
 .RB( RB15 ),
 .QB( QB4 ),
 .D( N4 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x15_5 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA5 ),
 .WECLK( WE15CLK ),
 .WECLKb( WE15CLKb ),
 .RA( RA15 ),
 .RB( RB15 ),
 .QB( QB5 ),
 .D( N5 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x15_6 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA6 ),
 .WECLK( WE15CLK ),
 .WECLKb( WE15CLKb ),
 .RA( RA15 ),
 .RB( RB15 ),
 .QB( QB6 ),
 .D( N6 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x15_7 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA7 ),
 .WECLK( WE15CLK ),
 .WECLKb( WE15CLKb ),
 .RA( RA15 ),
 .RB( RB15 ),
 .QB( QB7 ),
 .D( N7 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x15_8 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA8 ),
 .WECLK( WE15CLK ),
 .WECLKb( WE15CLKb ),
 .RA( RA15 ),
 .RB( RB15 ),
 .QB( QB8 ),
 .D( N8 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x15_9 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA9 ),
 .WECLK( WE15CLK ),
 .WECLKb( WE15CLKb ),
 .RA( RA15 ),
 .RB( RB15 ),
 .QB( QB9 ),
 .D( N9 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x15_10 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA10 ),
 .WECLK( WE15CLK ),
 .WECLKb( WE15CLKb ),
 .RA( RA15 ),
 .RB( RB15 ),
 .QB( QB10 ),
 .D( N10 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x15_11 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA11 ),
 .WECLK( WE15CLK ),
 .WECLKb( WE15CLKb ),
 .RA( RA15 ),
 .RB( RB15 ),
 .QB( QB11 ),
 .D( N11 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x15_12 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA12 ),
 .WECLK( WE15CLK ),
 .WECLKb( WE15CLKb ),
 .RA( RA15 ),
 .RB( RB15 ),
 .QB( QB12 ),
 .D( N12 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x15_13 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA13 ),
 .WECLK( WE15CLK ),
 .WECLKb( WE15CLKb ),
 .RA( RA15 ),
 .RB( RB15 ),
 .QB( QB13 ),
 .D( N13 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x15_14 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA14 ),
 .WECLK( WE15CLK ),
 .WECLKb( WE15CLKb ),
 .RA( RA15 ),
 .RB( RB15 ),
 .QB( QB14 ),
 .D( N14 )
);


slave_latch
#(
.kQ ( "'kQ'" )
)
x15_15 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QA( QA15 ),
 .WECLK( WE15CLK ),
 .WECLKb( WE15CLKb ),
 .RA( RA15 ),
 .RB( RB15 ),
 .QB( QB15 ),
 .D( N15 )
);


master_latch
#(
.kN ( "'kN'" )
)
x1 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .Q( N0 ),
 .WEM( WEM ),
 .WEMb( WEMb ),
 .D( D0 )
);


master_latch
#(
.kN ( "'kN'" )
)
x2 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .Q( N1 ),
 .WEM( WEM ),
 .WEMb( WEMb ),
 .D( D1 )
);


master_latch
#(
.kN ( "'kN'" )
)
x3 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .Q( N2 ),
 .WEM( WEM ),
 .WEMb( WEMb ),
 .D( D2 )
);


master_latch
#(
.kN ( "'kN'" )
)
x4 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .Q( N3 ),
 .WEM( WEM ),
 .WEMb( WEMb ),
 .D( D3 )
);


master_latch
#(
.kN ( "'kN'" )
)
x5 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .Q( N4 ),
 .WEM( WEM ),
 .WEMb( WEMb ),
 .D( D4 )
);


master_latch
#(
.kN ( "'kN'" )
)
x6 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .Q( N5 ),
 .WEM( WEM ),
 .WEMb( WEMb ),
 .D( D5 )
);


master_latch
#(
.kN ( "'kN'" )
)
x7 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .Q( N6 ),
 .WEM( WEM ),
 .WEMb( WEMb ),
 .D( D6 )
);


master_latch
#(
.kN ( "'kN'" )
)
x8 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .Q( N7 ),
 .WEM( WEM ),
 .WEMb( WEMb ),
 .D( D7 )
);


master_latch
#(
.kN ( "'kN'" )
)
x9 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .Q( N8 ),
 .WEM( WEM ),
 .WEMb( WEMb ),
 .D( D8 )
);


master_latch
#(
.kN ( "'kN'" )
)
x10 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .Q( N9 ),
 .WEM( WEM ),
 .WEMb( WEMb ),
 .D( D9 )
);


master_latch
#(
.kN ( "'kN'" )
)
x11 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .Q( N10 ),
 .WEM( WEM ),
 .WEMb( WEMb ),
 .D( D10 )
);


master_latch
#(
.kN ( "'kN'" )
)
x12 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .Q( N11 ),
 .WEM( WEM ),
 .WEMb( WEMb ),
 .D( D11 )
);


master_latch
#(
.kN ( "'kN'" )
)
x13 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .Q( N12 ),
 .WEM( WEM ),
 .WEMb( WEMb ),
 .D( D12 )
);


master_latch
#(
.kN ( "'kN'" )
)
x14 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .Q( N13 ),
 .WEM( WEM ),
 .WEMb( WEMb ),
 .D( D13 )
);


master_latch
#(
.kN ( "'kN'" )
)
x15 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .Q( N14 ),
 .WEM( WEM ),
 .WEMb( WEMb ),
 .D( D14 )
);


master_latch
#(
.kN ( "'kN'" )
)
x16 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .Q( N15 ),
 .WEM( WEM ),
 .WEMb( WEMb ),
 .D( D15 )
);


driver_cell
#(
.kWECLK ( "'kWECLK'" ) ,
.kWECLKb ( "'kWECLKb'" )
)
x17 ( 
 .CLK( CLK ),
 .WE( WE15 ),
 .WECLKb( WE15CLKb ),
 .VDD( VDD ),
 .VSS( VSS ),
 .WECLK( WE15CLK )
);


driver_cell
#(
.kWECLK ( "'kWECLK'" ) ,
.kWECLKb ( "'kWECLKb'" )
)
x18 ( 
 .CLK( CLK ),
 .WE( WE14 ),
 .WECLKb( WE14CLKb ),
 .VDD( VDD ),
 .VSS( VSS ),
 .WECLK( WE14CLK )
);


driver_cell
#(
.kWECLK ( "'kWECLK'" ) ,
.kWECLKb ( "'kWECLKb'" )
)
x19 ( 
 .CLK( CLK ),
 .WE( WE13 ),
 .WECLKb( WE13CLKb ),
 .VDD( VDD ),
 .VSS( VSS ),
 .WECLK( WE13CLK )
);


driver_cell
#(
.kWECLK ( "'kWECLK'" ) ,
.kWECLKb ( "'kWECLKb'" )
)
x20 ( 
 .CLK( CLK ),
 .WE( WE12 ),
 .WECLKb( WE12CLKb ),
 .VDD( VDD ),
 .VSS( VSS ),
 .WECLK( WE12CLK )
);


driver_cell
#(
.kWECLK ( "'kWECLK'" ) ,
.kWECLKb ( "'kWECLKb'" )
)
x21 ( 
 .CLK( CLK ),
 .WE( WE11 ),
 .WECLKb( WE11CLKb ),
 .VDD( VDD ),
 .VSS( VSS ),
 .WECLK( WE11CLK )
);


driver_cell
#(
.kWECLK ( "'kWECLK'" ) ,
.kWECLKb ( "'kWECLKb'" )
)
x22 ( 
 .CLK( CLK ),
 .WE( WE10 ),
 .WECLKb( WE10CLKb ),
 .VDD( VDD ),
 .VSS( VSS ),
 .WECLK( WE10CLK )
);


driver_cell
#(
.kWECLK ( "'kWECLK'" ) ,
.kWECLKb ( "'kWECLKb'" )
)
x23 ( 
 .CLK( CLK ),
 .WE( WE9 ),
 .WECLKb( WE9CLKb ),
 .VDD( VDD ),
 .VSS( VSS ),
 .WECLK( WE9CLK )
);


driver_cell
#(
.kWECLK ( "'kWECLK'" ) ,
.kWECLKb ( "'kWECLKb'" )
)
x24 ( 
 .CLK( CLK ),
 .WE( WE8 ),
 .WECLKb( WE8CLKb ),
 .VDD( VDD ),
 .VSS( VSS ),
 .WECLK( WE8CLK )
);


driver_cell
#(
.kWECLK ( "'kWECLK'" ) ,
.kWECLKb ( "'kWECLKb'" )
)
x25 ( 
 .CLK( CLK ),
 .WE( WE7 ),
 .WECLKb( WE7CLKb ),
 .VDD( VDD ),
 .VSS( VSS ),
 .WECLK( WE7CLK )
);


driver_cell
#(
.kWECLK ( "'kWECLK'" ) ,
.kWECLKb ( "'kWECLKb'" )
)
x26 ( 
 .CLK( CLK ),
 .WE( WE6 ),
 .WECLKb( WE6CLKb ),
 .VDD( VDD ),
 .VSS( VSS ),
 .WECLK( WE6CLK )
);


driver_cell
#(
.kWECLK ( "'kWECLK'" ) ,
.kWECLKb ( "'kWECLKb'" )
)
x27 ( 
 .CLK( CLK ),
 .WE( WE5 ),
 .WECLKb( WE5CLKb ),
 .VDD( VDD ),
 .VSS( VSS ),
 .WECLK( WE5CLK )
);


driver_cell
#(
.kWECLK ( "'kWECLK'" ) ,
.kWECLKb ( "'kWECLKb'" )
)
x28 ( 
 .CLK( CLK ),
 .WE( WE4 ),
 .WECLKb( WE4CLKb ),
 .VDD( VDD ),
 .VSS( VSS ),
 .WECLK( WE4CLK )
);


driver_cell
#(
.kWECLK ( "'kWECLK'" ) ,
.kWECLKb ( "'kWECLKb'" )
)
x29 ( 
 .CLK( CLK ),
 .WE( WE3 ),
 .WECLKb( WE3CLKb ),
 .VDD( VDD ),
 .VSS( VSS ),
 .WECLK( WE3CLK )
);


driver_cell
#(
.kWECLK ( "'kWECLK'" ) ,
.kWECLKb ( "'kWECLKb'" )
)
x30 ( 
 .CLK( CLK ),
 .WE( WE2 ),
 .WECLKb( WE2CLKb ),
 .VDD( VDD ),
 .VSS( VSS ),
 .WECLK( WE2CLK )
);


driver_cell
#(
.kWECLK ( "'kWECLK'" ) ,
.kWECLKb ( "'kWECLKb'" )
)
x31 ( 
 .CLK( CLK ),
 .WE( WE1 ),
 .WECLKb( WE1CLKb ),
 .VDD( VDD ),
 .VSS( VSS ),
 .WECLK( WE1CLK )
);


driver_cell
#(
.kWECLK ( "'kWECLK'" ) ,
.kWECLKb ( "'kWECLKb'" )
)
x32 ( 
 .CLK( CLK ),
 .WE( WE0 ),
 .WECLKb( WE0CLKb ),
 .VDD( VDD ),
 .VSS( VSS ),
 .WECLK( WE0CLK )
);


output_inverter
x33 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QAb( QA0b ),
 .QA( QA0 ),
 .QB( QB0 ),
 .QBb( QB0b )
);


output_inverter
x34 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QAb( QA1b ),
 .QA( QA1 ),
 .QB( QB1 ),
 .QBb( QB1b )
);


output_inverter
x35 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QAb( QA2b ),
 .QA( QA2 ),
 .QB( QB2 ),
 .QBb( QB2b )
);


output_inverter
x36 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QAb( QA3b ),
 .QA( QA3 ),
 .QB( QB3 ),
 .QBb( QB3b )
);


output_inverter
x37 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QAb( QA4b ),
 .QA( QA4 ),
 .QB( QB4 ),
 .QBb( QB4b )
);


output_inverter
x38 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QAb( QA5b ),
 .QA( QA5 ),
 .QB( QB5 ),
 .QBb( QB5b )
);


output_inverter
x39 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QAb( QA6b ),
 .QA( QA6 ),
 .QB( QB6 ),
 .QBb( QB6b )
);


output_inverter
x40 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QAb( QA7b ),
 .QA( QA7 ),
 .QB( QB7 ),
 .QBb( QB7b )
);


output_inverter
x41 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QAb( QA8b ),
 .QA( QA8 ),
 .QB( QB8 ),
 .QBb( QB8b )
);


output_inverter
x42 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QAb( QA9b ),
 .QA( QA9 ),
 .QB( QB9 ),
 .QBb( QB9b )
);


output_inverter
x43 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QAb( QA10b ),
 .QA( QA10 ),
 .QB( QB10 ),
 .QBb( QB10b )
);


output_inverter
x44 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QAb( QA11b ),
 .QA( QA11 ),
 .QB( QB11 ),
 .QBb( QB11b )
);


output_inverter
x45 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QAb( QA12b ),
 .QA( QA12 ),
 .QB( QB12 ),
 .QBb( QB12b )
);


output_inverter
x46 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QAb( QA13b ),
 .QA( QA13 ),
 .QB( QB13 ),
 .QBb( QB13b )
);


output_inverter
x47 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QAb( QA14b ),
 .QA( QA14 ),
 .QB( QB14 ),
 .QBb( QB14b )
);


output_inverter
x48 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .QAb( QA15b ),
 .QA( QA15 ),
 .QB( QB15 ),
 .QBb( QB15b )
);


wem_inverter
#(
.kWEMb ( "'kWEMb'" )
)
x49 ( 
 .VDD( VDD ),
 .WEM( WEM ),
 .WEMb( WEMb ),
 .VSS( VSS )
);


.param kWECLKb=1.34/0.36
.param kWECLK=1.27/0.36
.param kWEMb=1.26/0.36
.param kQ=0.36/0.36
.param kN=1.24/0.36

endmodule

// expanding   symbol:  engn1600-team1/CAD6/pc.sym # of pins=12
// sym_path: /foss/designs/engn1600-team1/CAD6/pc.sym
// sch_path: /foss/designs/engn1600-team1/CAD6/pc.sch
module pc
(
  inout wire VDD,
  inout wire VSS,
  input wire CLK,
  input wire RSTn,
  input wire BR,
  input wire [7..0] DISP,
  input wire JMP,
  input wire [15..0] DEST,
  input wire SI,
  input wire SE,
  output wire [15..0] PC,
  output wire PC_NEXT15
);
wire CLK2b ;
wire CLK3b ;
wire CLK4b ;
wire CLK5b ;
wire CLK6b ;
wire CLK7b ;
wire CLK8b ;
wire CLK9b ;
wire SE0b ;
wire SE1b ;
wire SE2b ;
wire SE3b ;
wire SE4b ;
wire SE5b ;
wire SE6b ;
wire SE7b ;
wire SE8b ;
wire SE9b ;
wire PC_NEXT10 ;
wire PC_NEXT11 ;
wire PC_NEXT12 ;
wire PC_NEXT13 ;
wire PC_NEXT14 ;
wire SE10b ;
wire SE11b ;
wire SE12b ;
wire SE13b ;
wire SE14b ;
wire SE15b ;
wire BR0b ;
wire BR1b ;
wire BR2b ;
wire BR3b ;
wire BR4b ;
wire BR5b ;
wire BR6b ;
wire BR7b ;
wire BR8b ;
wire BR9b ;
wire PCJ10 ;
wire PCJ11 ;
wire PCJ12 ;
wire PCJ13 ;
wire PCJ14 ;
wire PCJ15 ;
wire CLK10b ;
wire CLK11b ;
wire CLK12b ;
wire CLK13b ;
wire CLK14b ;
wire CLK15b ;
wire JMP10b ;
wire JMP11b ;
wire JMP12b ;
wire JMP13b ;
wire JMP14b ;
wire JMP15b ;
wire COUT10 ;
wire COUT11 ;
wire COUT12 ;
wire COUT13 ;
wire COUT14 ;
wire COUT15 ;
wire B0 ;
wire B1 ;
wire B2 ;
wire B3 ;
wire B4 ;
wire B5 ;
wire B6 ;
wire B7 ;
wire B8 ;
wire B9 ;
wire BR10b ;
wire BR11b ;
wire BR12b ;
wire BR13b ;
wire BR14b ;
wire BR15b ;
wire DISP_SE ;
wire PCB0 ;
wire PCB1 ;
wire PCB2 ;
wire PCB3 ;
wire PCB4 ;
wire PCB5 ;
wire PCB6 ;
wire PCB7 ;
wire PCB8 ;
wire PCB9 ;
wire PCJ0 ;
wire PCJ1 ;
wire PCJ2 ;
wire PCJ3 ;
wire PCJ4 ;
wire PCJ5 ;
wire PCJ6 ;
wire PCJ7 ;
wire PCJ8 ;
wire PCJ9 ;
wire B10 ;
wire B11 ;
wire B12 ;
wire B13 ;
wire B14 ;
wire B15 ;
wire PC_NEXT0 ;
wire PC_NEXT1 ;
wire PC_NEXT2 ;
wire PC_NEXT3 ;
wire PC_NEXT4 ;
wire PC_NEXT5 ;
wire PC_NEXT6 ;
wire PC_NEXT7 ;
wire PC_NEXT8 ;
wire PC_NEXT9 ;
wire JMP0b ;
wire COUT0 ;
wire COUT1 ;
wire COUT2 ;
wire JMP1b ;
wire COUT3 ;
wire COUT4 ;
wire COUT5 ;
wire COUT6 ;
wire COUT7 ;
wire COUT8 ;
wire COUT9 ;
wire JMP2b ;
wire JMP3b ;
wire JMP4b ;
wire JMP5b ;
wire JMP6b ;
wire JMP7b ;
wire JMP8b ;
wire JMP9b ;
wire PCB10 ;
wire PCB11 ;
wire PCB12 ;
wire PCB13 ;
wire PCB14 ;
wire PCB15 ;
wire CLK0b ;
wire CLK1b ;


sign_extend
x1 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .OUT( DISP_SE ),
 .IN( DISP7 )
);


2x1_mux
x215 ( 
 .A( VSS ),
 .SEL( BR ),
 .SELb( BR15b ),
 .Y( B15 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( DISP_SE )
);


2x1_mux
x214 ( 
 .A( VSS ),
 .SEL( BR ),
 .SELb( BR14b ),
 .Y( B14 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( DISP_SE )
);


2x1_mux
x213 ( 
 .A( VSS ),
 .SEL( BR ),
 .SELb( BR13b ),
 .Y( B13 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( DISP_SE )
);


2x1_mux
x212 ( 
 .A( VSS ),
 .SEL( BR ),
 .SELb( BR12b ),
 .Y( B12 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( DISP_SE )
);


2x1_mux
x211 ( 
 .A( VSS ),
 .SEL( BR ),
 .SELb( BR11b ),
 .Y( B11 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( DISP_SE )
);


2x1_mux
x210 ( 
 .A( VSS ),
 .SEL( BR ),
 .SELb( BR10b ),
 .Y( B10 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( DISP_SE )
);


2x1_mux
x29 ( 
 .A( VSS ),
 .SEL( BR ),
 .SELb( BR9b ),
 .Y( B9 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( DISP_SE )
);


2x1_mux
x28 ( 
 .A( VSS ),
 .SEL( BR ),
 .SELb( BR8b ),
 .Y( B8 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( DISP_SE )
);


2x1_mux
x27 ( 
 .A( VSS ),
 .SEL( BR ),
 .SELb( BR7b ),
 .Y( B7 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( DISP_SE )
);


2x1_mux
x26 ( 
 .A( VSS ),
 .SEL( BR ),
 .SELb( BR6b ),
 .Y( B6 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( DISP6 )
);


2x1_mux
x25 ( 
 .A( VSS ),
 .SEL( BR ),
 .SELb( BR5b ),
 .Y( B5 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( DISP5 )
);


2x1_mux
x24 ( 
 .A( VSS ),
 .SEL( BR ),
 .SELb( BR4b ),
 .Y( B4 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( DISP4 )
);


2x1_mux
x23 ( 
 .A( VSS ),
 .SEL( BR ),
 .SELb( BR3b ),
 .Y( B3 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( DISP3 )
);


2x1_mux
x22 ( 
 .A( VSS ),
 .SEL( BR ),
 .SELb( BR2b ),
 .Y( B2 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( DISP2 )
);


2x1_mux
x21 ( 
 .A( VDD ),
 .SEL( BR ),
 .SELb( BR1b ),
 .Y( B1 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( DISP1 )
);


2x1_mux
x20 ( 
 .A( VSS ),
 .SEL( BR ),
 .SELb( BR0b ),
 .Y( B0 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( DISP0 )
);


inv
#(
.kINV ( 1 )
)
x815 ( 
 .VDD( VDD ),
 .IN( BR ),
 .OUT( BR15b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x814 ( 
 .VDD( VDD ),
 .IN( BR ),
 .OUT( BR14b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x813 ( 
 .VDD( VDD ),
 .IN( BR ),
 .OUT( BR13b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x812 ( 
 .VDD( VDD ),
 .IN( BR ),
 .OUT( BR12b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x811 ( 
 .VDD( VDD ),
 .IN( BR ),
 .OUT( BR11b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x810 ( 
 .VDD( VDD ),
 .IN( BR ),
 .OUT( BR10b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x89 ( 
 .VDD( VDD ),
 .IN( BR ),
 .OUT( BR9b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x88 ( 
 .VDD( VDD ),
 .IN( BR ),
 .OUT( BR8b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x87 ( 
 .VDD( VDD ),
 .IN( BR ),
 .OUT( BR7b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x86 ( 
 .VDD( VDD ),
 .IN( BR ),
 .OUT( BR6b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x85 ( 
 .VDD( VDD ),
 .IN( BR ),
 .OUT( BR5b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x84 ( 
 .VDD( VDD ),
 .IN( BR ),
 .OUT( BR4b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x83 ( 
 .VDD( VDD ),
 .IN( BR ),
 .OUT( BR3b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x82 ( 
 .VDD( VDD ),
 .IN( BR ),
 .OUT( BR2b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x81 ( 
 .VDD( VDD ),
 .IN( BR ),
 .OUT( BR1b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x80 ( 
 .VDD( VDD ),
 .IN( BR ),
 .OUT( BR0b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x915 ( 
 .VDD( VDD ),
 .IN( JMP ),
 .OUT( JMP15b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x914 ( 
 .VDD( VDD ),
 .IN( JMP ),
 .OUT( JMP14b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x913 ( 
 .VDD( VDD ),
 .IN( JMP ),
 .OUT( JMP13b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x912 ( 
 .VDD( VDD ),
 .IN( JMP ),
 .OUT( JMP12b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x911 ( 
 .VDD( VDD ),
 .IN( JMP ),
 .OUT( JMP11b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x910 ( 
 .VDD( VDD ),
 .IN( JMP ),
 .OUT( JMP10b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x99 ( 
 .VDD( VDD ),
 .IN( JMP ),
 .OUT( JMP9b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x98 ( 
 .VDD( VDD ),
 .IN( JMP ),
 .OUT( JMP8b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x97 ( 
 .VDD( VDD ),
 .IN( JMP ),
 .OUT( JMP7b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x96 ( 
 .VDD( VDD ),
 .IN( JMP ),
 .OUT( JMP6b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x95 ( 
 .VDD( VDD ),
 .IN( JMP ),
 .OUT( JMP5b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x94 ( 
 .VDD( VDD ),
 .IN( JMP ),
 .OUT( JMP4b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x93 ( 
 .VDD( VDD ),
 .IN( JMP ),
 .OUT( JMP3b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x92 ( 
 .VDD( VDD ),
 .IN( JMP ),
 .OUT( JMP2b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x91 ( 
 .VDD( VDD ),
 .IN( JMP ),
 .OUT( JMP1b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x90 ( 
 .VDD( VDD ),
 .IN( JMP ),
 .OUT( JMP0b ),
 .VSS( VSS )
);


2x1_mux
x515 ( 
 .A( PCB15 ),
 .SEL( JMP ),
 .SELb( JMP15b ),
 .Y( PCJ15 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( DEST15 )
);


2x1_mux
x514 ( 
 .A( PCB14 ),
 .SEL( JMP ),
 .SELb( JMP14b ),
 .Y( PCJ14 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( DEST14 )
);


2x1_mux
x513 ( 
 .A( PCB13 ),
 .SEL( JMP ),
 .SELb( JMP13b ),
 .Y( PCJ13 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( DEST13 )
);


2x1_mux
x512 ( 
 .A( PCB12 ),
 .SEL( JMP ),
 .SELb( JMP12b ),
 .Y( PCJ12 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( DEST12 )
);


2x1_mux
x511 ( 
 .A( PCB11 ),
 .SEL( JMP ),
 .SELb( JMP11b ),
 .Y( PCJ11 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( DEST11 )
);


2x1_mux
x510 ( 
 .A( PCB10 ),
 .SEL( JMP ),
 .SELb( JMP10b ),
 .Y( PCJ10 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( DEST10 )
);


2x1_mux
x59 ( 
 .A( PCB9 ),
 .SEL( JMP ),
 .SELb( JMP9b ),
 .Y( PCJ9 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( DEST9 )
);


2x1_mux
x58 ( 
 .A( PCB8 ),
 .SEL( JMP ),
 .SELb( JMP8b ),
 .Y( PCJ8 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( DEST8 )
);


2x1_mux
x57 ( 
 .A( PCB7 ),
 .SEL( JMP ),
 .SELb( JMP7b ),
 .Y( PCJ7 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( DEST7 )
);


2x1_mux
x56 ( 
 .A( PCB6 ),
 .SEL( JMP ),
 .SELb( JMP6b ),
 .Y( PCJ6 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( DEST6 )
);


2x1_mux
x55 ( 
 .A( PCB5 ),
 .SEL( JMP ),
 .SELb( JMP5b ),
 .Y( PCJ5 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( DEST5 )
);


2x1_mux
x54 ( 
 .A( PCB4 ),
 .SEL( JMP ),
 .SELb( JMP4b ),
 .Y( PCJ4 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( DEST4 )
);


2x1_mux
x53 ( 
 .A( PCB3 ),
 .SEL( JMP ),
 .SELb( JMP3b ),
 .Y( PCJ3 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( DEST3 )
);


2x1_mux
x52 ( 
 .A( PCB2 ),
 .SEL( JMP ),
 .SELb( JMP2b ),
 .Y( PCJ2 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( DEST2 )
);


2x1_mux
x51 ( 
 .A( PCB1 ),
 .SEL( JMP ),
 .SELb( JMP1b ),
 .Y( PCJ1 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( DEST1 )
);


2x1_mux
x50 ( 
 .A( PCB0 ),
 .SEL( JMP ),
 .SELb( JMP0b ),
 .Y( PCJ0 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( DEST0 )
);


dff
x315 ( 
 .CLKb( CLK15b ),
 .D( PC_NEXT15 ),
 .Q( PC15 ),
 .RSTn( RSTn ),
 .CLK( CLK ),
 .VDD( VDD ),
 .VSS( VSS )
);


dff
x314 ( 
 .CLKb( CLK14b ),
 .D( PC_NEXT14 ),
 .Q( PC14 ),
 .RSTn( RSTn ),
 .CLK( CLK ),
 .VDD( VDD ),
 .VSS( VSS )
);


dff
x313 ( 
 .CLKb( CLK13b ),
 .D( PC_NEXT13 ),
 .Q( PC13 ),
 .RSTn( RSTn ),
 .CLK( CLK ),
 .VDD( VDD ),
 .VSS( VSS )
);


dff
x312 ( 
 .CLKb( CLK12b ),
 .D( PC_NEXT12 ),
 .Q( PC12 ),
 .RSTn( RSTn ),
 .CLK( CLK ),
 .VDD( VDD ),
 .VSS( VSS )
);


dff
x311 ( 
 .CLKb( CLK11b ),
 .D( PC_NEXT11 ),
 .Q( PC11 ),
 .RSTn( RSTn ),
 .CLK( CLK ),
 .VDD( VDD ),
 .VSS( VSS )
);


dff
x310 ( 
 .CLKb( CLK10b ),
 .D( PC_NEXT10 ),
 .Q( PC10 ),
 .RSTn( RSTn ),
 .CLK( CLK ),
 .VDD( VDD ),
 .VSS( VSS )
);


dff
x39 ( 
 .CLKb( CLK9b ),
 .D( PC_NEXT9 ),
 .Q( PC9 ),
 .RSTn( RSTn ),
 .CLK( CLK ),
 .VDD( VDD ),
 .VSS( VSS )
);


dff
x38 ( 
 .CLKb( CLK8b ),
 .D( PC_NEXT8 ),
 .Q( PC8 ),
 .RSTn( RSTn ),
 .CLK( CLK ),
 .VDD( VDD ),
 .VSS( VSS )
);


dff
x37 ( 
 .CLKb( CLK7b ),
 .D( PC_NEXT7 ),
 .Q( PC7 ),
 .RSTn( RSTn ),
 .CLK( CLK ),
 .VDD( VDD ),
 .VSS( VSS )
);


dff
x36 ( 
 .CLKb( CLK6b ),
 .D( PC_NEXT6 ),
 .Q( PC6 ),
 .RSTn( RSTn ),
 .CLK( CLK ),
 .VDD( VDD ),
 .VSS( VSS )
);


dff
x35 ( 
 .CLKb( CLK5b ),
 .D( PC_NEXT5 ),
 .Q( PC5 ),
 .RSTn( RSTn ),
 .CLK( CLK ),
 .VDD( VDD ),
 .VSS( VSS )
);


dff
x34 ( 
 .CLKb( CLK4b ),
 .D( PC_NEXT4 ),
 .Q( PC4 ),
 .RSTn( RSTn ),
 .CLK( CLK ),
 .VDD( VDD ),
 .VSS( VSS )
);


dff
x33 ( 
 .CLKb( CLK3b ),
 .D( PC_NEXT3 ),
 .Q( PC3 ),
 .RSTn( RSTn ),
 .CLK( CLK ),
 .VDD( VDD ),
 .VSS( VSS )
);


dff
x32 ( 
 .CLKb( CLK2b ),
 .D( PC_NEXT2 ),
 .Q( PC2 ),
 .RSTn( RSTn ),
 .CLK( CLK ),
 .VDD( VDD ),
 .VSS( VSS )
);


dff
x31 ( 
 .CLKb( CLK1b ),
 .D( PC_NEXT1 ),
 .Q( PC1 ),
 .RSTn( RSTn ),
 .CLK( CLK ),
 .VDD( VDD ),
 .VSS( VSS )
);


dff
x30 ( 
 .CLKb( CLK0b ),
 .D( PC_NEXT0 ),
 .Q( PC0 ),
 .RSTn( RSTn ),
 .CLK( CLK ),
 .VDD( VDD ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x115 ( 
 .VDD( VDD ),
 .IN( CLK ),
 .OUT( CLK15b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x114 ( 
 .VDD( VDD ),
 .IN( CLK ),
 .OUT( CLK14b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x113 ( 
 .VDD( VDD ),
 .IN( CLK ),
 .OUT( CLK13b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x112 ( 
 .VDD( VDD ),
 .IN( CLK ),
 .OUT( CLK12b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x111 ( 
 .VDD( VDD ),
 .IN( CLK ),
 .OUT( CLK11b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x110 ( 
 .VDD( VDD ),
 .IN( CLK ),
 .OUT( CLK10b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x19 ( 
 .VDD( VDD ),
 .IN( CLK ),
 .OUT( CLK9b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x18 ( 
 .VDD( VDD ),
 .IN( CLK ),
 .OUT( CLK8b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x17 ( 
 .VDD( VDD ),
 .IN( CLK ),
 .OUT( CLK7b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x16 ( 
 .VDD( VDD ),
 .IN( CLK ),
 .OUT( CLK6b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x15 ( 
 .VDD( VDD ),
 .IN( CLK ),
 .OUT( CLK5b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x14 ( 
 .VDD( VDD ),
 .IN( CLK ),
 .OUT( CLK4b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x13 ( 
 .VDD( VDD ),
 .IN( CLK ),
 .OUT( CLK3b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x12 ( 
 .VDD( VDD ),
 .IN( CLK ),
 .OUT( CLK2b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x11 ( 
 .VDD( VDD ),
 .IN( CLK ),
 .OUT( CLK1b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x10 ( 
 .VDD( VDD ),
 .IN( CLK ),
 .OUT( CLK0b ),
 .VSS( VSS )
);


full_adder
#(
.kSUMb ( 1 ) ,
.kTS ( 1 )
)
x415 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .A( PC15 ),
 .B( B15 ),
 .CIN( COUT14 ),
 .SUM( PCB15 ),
 .COUT( COUT15 )
);


full_adder
#(
.kSUMb ( 1 ) ,
.kTS ( 1 )
)
x414 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .A( PC14 ),
 .B( B14 ),
 .CIN( COUT13 ),
 .SUM( PCB14 ),
 .COUT( COUT14 )
);


full_adder
#(
.kSUMb ( 1 ) ,
.kTS ( 1 )
)
x413 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .A( PC13 ),
 .B( B13 ),
 .CIN( COUT12 ),
 .SUM( PCB13 ),
 .COUT( COUT13 )
);


full_adder
#(
.kSUMb ( 1 ) ,
.kTS ( 1 )
)
x412 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .A( PC12 ),
 .B( B12 ),
 .CIN( COUT11 ),
 .SUM( PCB12 ),
 .COUT( COUT12 )
);


full_adder
#(
.kSUMb ( 1 ) ,
.kTS ( 1 )
)
x411 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .A( PC11 ),
 .B( B11 ),
 .CIN( COUT10 ),
 .SUM( PCB11 ),
 .COUT( COUT11 )
);


full_adder
#(
.kSUMb ( 1 ) ,
.kTS ( 1 )
)
x410 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .A( PC10 ),
 .B( B10 ),
 .CIN( COUT9 ),
 .SUM( PCB10 ),
 .COUT( COUT10 )
);


full_adder
#(
.kSUMb ( 1 ) ,
.kTS ( 1 )
)
x49 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .A( PC9 ),
 .B( B9 ),
 .CIN( COUT8 ),
 .SUM( PCB9 ),
 .COUT( COUT9 )
);


full_adder
#(
.kSUMb ( 1 ) ,
.kTS ( 1 )
)
x48 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .A( PC8 ),
 .B( B8 ),
 .CIN( COUT7 ),
 .SUM( PCB8 ),
 .COUT( COUT8 )
);


full_adder
#(
.kSUMb ( 1 ) ,
.kTS ( 1 )
)
x47 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .A( PC7 ),
 .B( B7 ),
 .CIN( COUT6 ),
 .SUM( PCB7 ),
 .COUT( COUT7 )
);


full_adder
#(
.kSUMb ( 1 ) ,
.kTS ( 1 )
)
x46 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .A( PC6 ),
 .B( B6 ),
 .CIN( COUT5 ),
 .SUM( PCB6 ),
 .COUT( COUT6 )
);


full_adder
#(
.kSUMb ( 1 ) ,
.kTS ( 1 )
)
x45 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .A( PC5 ),
 .B( B5 ),
 .CIN( COUT4 ),
 .SUM( PCB5 ),
 .COUT( COUT5 )
);


full_adder
#(
.kSUMb ( 1 ) ,
.kTS ( 1 )
)
x44 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .A( PC4 ),
 .B( B4 ),
 .CIN( COUT3 ),
 .SUM( PCB4 ),
 .COUT( COUT4 )
);


full_adder
#(
.kSUMb ( 1 ) ,
.kTS ( 1 )
)
x43 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .A( PC3 ),
 .B( B3 ),
 .CIN( COUT2 ),
 .SUM( PCB3 ),
 .COUT( COUT3 )
);


full_adder
#(
.kSUMb ( 1 ) ,
.kTS ( 1 )
)
x42 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .A( PC2 ),
 .B( B2 ),
 .CIN( COUT1 ),
 .SUM( PCB2 ),
 .COUT( COUT2 )
);


full_adder
#(
.kSUMb ( 1 ) ,
.kTS ( 1 )
)
x41 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .A( PC1 ),
 .B( B1 ),
 .CIN( COUT0 ),
 .SUM( PCB1 ),
 .COUT( COUT1 )
);


full_adder
#(
.kSUMb ( 1 ) ,
.kTS ( 1 )
)
x40 ( 
 .VDD( VDD ),
 .VSS( VSS ),
 .A( PC0 ),
 .B( B0 ),
 .CIN( VSS ),
 .SUM( PCB0 ),
 .COUT( COUT0 )
);


2x1_mux
x715 ( 
 .A( PCJ15 ),
 .SEL( SE ),
 .SELb( SE15b ),
 .Y( PC_NEXT15 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( PC14 )
);


2x1_mux
x714 ( 
 .A( PCJ14 ),
 .SEL( SE ),
 .SELb( SE14b ),
 .Y( PC_NEXT14 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( PC13 )
);


2x1_mux
x713 ( 
 .A( PCJ13 ),
 .SEL( SE ),
 .SELb( SE13b ),
 .Y( PC_NEXT13 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( PC12 )
);


2x1_mux
x712 ( 
 .A( PCJ12 ),
 .SEL( SE ),
 .SELb( SE12b ),
 .Y( PC_NEXT12 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( PC11 )
);


2x1_mux
x711 ( 
 .A( PCJ11 ),
 .SEL( SE ),
 .SELb( SE11b ),
 .Y( PC_NEXT11 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( PC10 )
);


2x1_mux
x710 ( 
 .A( PCJ10 ),
 .SEL( SE ),
 .SELb( SE10b ),
 .Y( PC_NEXT10 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( PC9 )
);


2x1_mux
x79 ( 
 .A( PCJ9 ),
 .SEL( SE ),
 .SELb( SE9b ),
 .Y( PC_NEXT9 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( PC8 )
);


2x1_mux
x78 ( 
 .A( PCJ8 ),
 .SEL( SE ),
 .SELb( SE8b ),
 .Y( PC_NEXT8 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( PC7 )
);


2x1_mux
x77 ( 
 .A( PCJ7 ),
 .SEL( SE ),
 .SELb( SE7b ),
 .Y( PC_NEXT7 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( PC6 )
);


2x1_mux
x76 ( 
 .A( PCJ6 ),
 .SEL( SE ),
 .SELb( SE6b ),
 .Y( PC_NEXT6 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( PC5 )
);


2x1_mux
x75 ( 
 .A( PCJ5 ),
 .SEL( SE ),
 .SELb( SE5b ),
 .Y( PC_NEXT5 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( PC4 )
);


2x1_mux
x74 ( 
 .A( PCJ4 ),
 .SEL( SE ),
 .SELb( SE4b ),
 .Y( PC_NEXT4 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( PC3 )
);


2x1_mux
x73 ( 
 .A( PCJ3 ),
 .SEL( SE ),
 .SELb( SE3b ),
 .Y( PC_NEXT3 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( PC2 )
);


2x1_mux
x72 ( 
 .A( PCJ2 ),
 .SEL( SE ),
 .SELb( SE2b ),
 .Y( PC_NEXT2 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( PC1 )
);


2x1_mux
x71 ( 
 .A( PCJ1 ),
 .SEL( SE ),
 .SELb( SE1b ),
 .Y( PC_NEXT1 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( PC0 )
);


2x1_mux
x70 ( 
 .A( PCJ0 ),
 .SEL( SE ),
 .SELb( SE0b ),
 .Y( PC_NEXT0 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( SI )
);


inv
#(
.kINV ( 1 )
)
x1015 ( 
 .VDD( VDD ),
 .IN( SE ),
 .OUT( SE15b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x1014 ( 
 .VDD( VDD ),
 .IN( SE ),
 .OUT( SE14b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x1013 ( 
 .VDD( VDD ),
 .IN( SE ),
 .OUT( SE13b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x1012 ( 
 .VDD( VDD ),
 .IN( SE ),
 .OUT( SE12b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x1011 ( 
 .VDD( VDD ),
 .IN( SE ),
 .OUT( SE11b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x1010 ( 
 .VDD( VDD ),
 .IN( SE ),
 .OUT( SE10b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x109 ( 
 .VDD( VDD ),
 .IN( SE ),
 .OUT( SE9b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x108 ( 
 .VDD( VDD ),
 .IN( SE ),
 .OUT( SE8b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x107 ( 
 .VDD( VDD ),
 .IN( SE ),
 .OUT( SE7b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x106 ( 
 .VDD( VDD ),
 .IN( SE ),
 .OUT( SE6b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x105 ( 
 .VDD( VDD ),
 .IN( SE ),
 .OUT( SE5b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x104 ( 
 .VDD( VDD ),
 .IN( SE ),
 .OUT( SE4b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x103 ( 
 .VDD( VDD ),
 .IN( SE ),
 .OUT( SE3b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x102 ( 
 .VDD( VDD ),
 .IN( SE ),
 .OUT( SE2b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x101 ( 
 .VDD( VDD ),
 .IN( SE ),
 .OUT( SE1b ),
 .VSS( VSS )
);


inv
#(
.kINV ( 1 )
)
x100 ( 
 .VDD( VDD ),
 .IN( SE ),
 .OUT( SE0b ),
 .VSS( VSS )
);


.param kINV=1
.param kSUMb=1
.param kTS=1
.param Kb=1

endmodule

// expanding   symbol:  engn1600-team1/CAD5/shifter.sym # of pins=7
// sym_path: /foss/designs/engn1600-team1/CAD5/shifter.sym
// sch_path: /foss/designs/engn1600-team1/CAD5/shifter.sch
module shifter
(
  inout wire VDD,
  inout wire VSS,
  input wire [15..0] D,
  input wire [3..0] I,
  input wire [3..0] R,
  input wire SEL,
  output wire [15..0] Q
);
wire X10b ;
wire X11b ;
wire X12b ;
wire X13b ;
wire X14b ;
wire X15b ;
wire SELb ;
wire Q10b ;
wire Q11b ;
wire Q12b ;
wire Q13b ;
wire Q14b ;
wire Q15b ;
wire Q0b ;
wire Q1b ;
wire Q2b ;
wire Q3b ;
wire Y10b ;
wire Q4b ;
wire Y11b ;
wire Q5b ;
wire Y12b ;
wire Q6b ;
wire Y13b ;
wire Q7b ;
wire Y14b ;
wire Q8b ;
wire Y15b ;
wire Q9b ;
wire S0b ;
wire S1b ;
wire S2b ;
wire S3b ;
wire Z10b ;
wire Z11b ;
wire D10b ;
wire Z12b ;
wire D11b ;
wire Z13b ;
wire D12b ;
wire Z14b ;
wire D13b ;
wire Z15b ;
wire D14b ;
wire D15b ;
wire S0 ;
wire S1 ;
wire S2 ;
wire S3 ;
wire X0b ;
wire X1b ;
wire X2b ;
wire X3b ;
wire X4b ;
wire X5b ;
wire X6b ;
wire X7b ;
wire X8b ;
wire X9b ;
wire Y0b ;
wire Y1b ;
wire Y2b ;
wire Y3b ;
wire Y4b ;
wire Y5b ;
wire Y6b ;
wire Y7b ;
wire Y8b ;
wire Y9b ;
wire Z0b ;
wire Z1b ;
wire Z2b ;
wire Z3b ;
wire Z4b ;
wire Z5b ;
wire Z6b ;
wire Z7b ;
wire Z8b ;
wire Z9b ;
wire D0b ;
wire D1b ;
wire D2b ;
wire D3b ;
wire D4b ;
wire D5b ;
wire D6b ;
wire D7b ;
wire D8b ;
wire D9b ;


2x1_mux
x115 ( 
 .A( D15b ),
 .SEL( S0 ),
 .SELb( S0b ),
 .Y( X15b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( D14b )
);


2x1_mux
x114 ( 
 .A( D14b ),
 .SEL( S0 ),
 .SELb( S0b ),
 .Y( X14b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( D13b )
);


2x1_mux
x113 ( 
 .A( D13b ),
 .SEL( S0 ),
 .SELb( S0b ),
 .Y( X13b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( D12b )
);


2x1_mux
x112 ( 
 .A( D12b ),
 .SEL( S0 ),
 .SELb( S0b ),
 .Y( X12b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( D11b )
);


2x1_mux
x111 ( 
 .A( D11b ),
 .SEL( S0 ),
 .SELb( S0b ),
 .Y( X11b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( D10b )
);


2x1_mux
x110 ( 
 .A( D10b ),
 .SEL( S0 ),
 .SELb( S0b ),
 .Y( X10b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( D9b )
);


2x1_mux
x19 ( 
 .A( D9b ),
 .SEL( S0 ),
 .SELb( S0b ),
 .Y( X9b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( D8b )
);


2x1_mux
x18 ( 
 .A( D8b ),
 .SEL( S0 ),
 .SELb( S0b ),
 .Y( X8b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( D7b )
);


2x1_mux
x17 ( 
 .A( D7b ),
 .SEL( S0 ),
 .SELb( S0b ),
 .Y( X7b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( D6b )
);


2x1_mux
x16 ( 
 .A( D6b ),
 .SEL( S0 ),
 .SELb( S0b ),
 .Y( X6b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( D5b )
);


2x1_mux
x15 ( 
 .A( D5b ),
 .SEL( S0 ),
 .SELb( S0b ),
 .Y( X5b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( D4b )
);


2x1_mux
x14 ( 
 .A( D4b ),
 .SEL( S0 ),
 .SELb( S0b ),
 .Y( X4b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( D3b )
);


2x1_mux
x13 ( 
 .A( D3b ),
 .SEL( S0 ),
 .SELb( S0b ),
 .Y( X3b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( D2b )
);


2x1_mux
x12 ( 
 .A( D2b ),
 .SEL( S0 ),
 .SELb( S0b ),
 .Y( X2b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( D1b )
);


2x1_mux
x11 ( 
 .A( D1b ),
 .SEL( S0 ),
 .SELb( S0b ),
 .Y( X1b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( D0b )
);


2x1_mux
x10 ( 
 .A( D0b ),
 .SEL( S0 ),
 .SELb( S0b ),
 .Y( X0b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( VDD )
);


2x1_mux_cmos
#(
.kI ( "'kI'" ) ,
.kYb ( "'kYb'" ) ,
.kY ( "'kY'" )
)
x23 ( 
 .A( R3 ),
 .SEL( SEL ),
 .SELb( SELb ),
 .Y( S3 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( I3 ),
 .Yb( S3b )
);


2x1_mux_cmos
#(
.kI ( "'kI'" ) ,
.kYb ( "'kYb'" ) ,
.kY ( "'kY'" )
)
x22 ( 
 .A( R2 ),
 .SEL( SEL ),
 .SELb( SELb ),
 .Y( S2 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( I2 ),
 .Yb( S2b )
);


2x1_mux_cmos
#(
.kI ( "'kI'" ) ,
.kYb ( "'kYb'" ) ,
.kY ( "'kY'" )
)
x21 ( 
 .A( R1 ),
 .SEL( SEL ),
 .SELb( SELb ),
 .Y( S1 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( I1 ),
 .Yb( S1b )
);


2x1_mux_cmos
#(
.kI ( "'kI'" ) ,
.kYb ( "'kYb'" ) ,
.kY ( "'kY'" )
)
x20 ( 
 .A( R0 ),
 .SEL( SEL ),
 .SELb( SELb ),
 .Y( S0 ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( I0 ),
 .Yb( S0b )
);


inv
#(
.kSELb ( "'kSELb'" )
)
x1 ( 
 .VDD( VDD ),
 .IN( SEL ),
 .OUT( SELb ),
 .VSS( VSS )
);


2x1_mux
x315 ( 
 .A( X15b ),
 .SEL( S1 ),
 .SELb( S1b ),
 .Y( Y15b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( X13b )
);


2x1_mux
x314 ( 
 .A( X14b ),
 .SEL( S1 ),
 .SELb( S1b ),
 .Y( Y14b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( X12b )
);


2x1_mux
x313 ( 
 .A( X13b ),
 .SEL( S1 ),
 .SELb( S1b ),
 .Y( Y13b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( X11b )
);


2x1_mux
x312 ( 
 .A( X12b ),
 .SEL( S1 ),
 .SELb( S1b ),
 .Y( Y12b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( X10b )
);


2x1_mux
x311 ( 
 .A( X11b ),
 .SEL( S1 ),
 .SELb( S1b ),
 .Y( Y11b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( X9b )
);


2x1_mux
x310 ( 
 .A( X10b ),
 .SEL( S1 ),
 .SELb( S1b ),
 .Y( Y10b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( X8b )
);


2x1_mux
x39 ( 
 .A( X9b ),
 .SEL( S1 ),
 .SELb( S1b ),
 .Y( Y9b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( X7b )
);


2x1_mux
x38 ( 
 .A( X8b ),
 .SEL( S1 ),
 .SELb( S1b ),
 .Y( Y8b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( X6b )
);


2x1_mux
x37 ( 
 .A( X7b ),
 .SEL( S1 ),
 .SELb( S1b ),
 .Y( Y7b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( X5b )
);


2x1_mux
x36 ( 
 .A( X6b ),
 .SEL( S1 ),
 .SELb( S1b ),
 .Y( Y6b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( X4b )
);


2x1_mux
x35 ( 
 .A( X5b ),
 .SEL( S1 ),
 .SELb( S1b ),
 .Y( Y5b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( X3b )
);


2x1_mux
x34 ( 
 .A( X4b ),
 .SEL( S1 ),
 .SELb( S1b ),
 .Y( Y4b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( X2b )
);


2x1_mux
x33 ( 
 .A( X3b ),
 .SEL( S1 ),
 .SELb( S1b ),
 .Y( Y3b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( X1b )
);


2x1_mux
x32 ( 
 .A( X2b ),
 .SEL( S1 ),
 .SELb( S1b ),
 .Y( Y2b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( X0b )
);


2x1_mux
x31 ( 
 .A( X1b ),
 .SEL( S1 ),
 .SELb( S1b ),
 .Y( Y1b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( VDD )
);


2x1_mux
x30 ( 
 .A( X0b ),
 .SEL( S1 ),
 .SELb( S1b ),
 .Y( Y0b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( VDD )
);


2x1_mux
x1015 ( 
 .A( Y15b ),
 .SEL( S2 ),
 .SELb( S2b ),
 .Y( Z15b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( Y11b )
);


2x1_mux
x1014 ( 
 .A( Y14b ),
 .SEL( S2 ),
 .SELb( S2b ),
 .Y( Z14b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( Y10b )
);


2x1_mux
x1013 ( 
 .A( Y13b ),
 .SEL( S2 ),
 .SELb( S2b ),
 .Y( Z13b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( Y9b )
);


2x1_mux
x1012 ( 
 .A( Y12b ),
 .SEL( S2 ),
 .SELb( S2b ),
 .Y( Z12b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( Y8b )
);


2x1_mux
x1011 ( 
 .A( Y11b ),
 .SEL( S2 ),
 .SELb( S2b ),
 .Y( Z11b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( Y7b )
);


2x1_mux
x1010 ( 
 .A( Y10b ),
 .SEL( S2 ),
 .SELb( S2b ),
 .Y( Z10b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( Y6b )
);


2x1_mux
x109 ( 
 .A( Y9b ),
 .SEL( S2 ),
 .SELb( S2b ),
 .Y( Z9b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( Y5b )
);


2x1_mux
x108 ( 
 .A( Y8b ),
 .SEL( S2 ),
 .SELb( S2b ),
 .Y( Z8b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( Y4b )
);


2x1_mux
x107 ( 
 .A( Y7b ),
 .SEL( S2 ),
 .SELb( S2b ),
 .Y( Z7b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( Y3b )
);


2x1_mux
x106 ( 
 .A( Y6b ),
 .SEL( S2 ),
 .SELb( S2b ),
 .Y( Z6b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( Y2b )
);


2x1_mux
x105 ( 
 .A( Y5b ),
 .SEL( S2 ),
 .SELb( S2b ),
 .Y( Z5b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( Y1b )
);


2x1_mux
x104 ( 
 .A( Y4b ),
 .SEL( S2 ),
 .SELb( S2b ),
 .Y( Z4b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( Y0b )
);


2x1_mux
x103 ( 
 .A( Y3b ),
 .SEL( S2 ),
 .SELb( S2b ),
 .Y( Z3b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( VDD )
);


2x1_mux
x102 ( 
 .A( Y2b ),
 .SEL( S2 ),
 .SELb( S2b ),
 .Y( Z2b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( VDD )
);


2x1_mux
x101 ( 
 .A( Y1b ),
 .SEL( S2 ),
 .SELb( S2b ),
 .Y( Z1b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( VDD )
);


2x1_mux
x100 ( 
 .A( Y0b ),
 .SEL( S2 ),
 .SELb( S2b ),
 .Y( Z0b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( VDD )
);


2x1_mux
x415 ( 
 .A( Z15b ),
 .SEL( S3 ),
 .SELb( S3b ),
 .Y( Q15b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( Z7b )
);


2x1_mux
x414 ( 
 .A( Z14b ),
 .SEL( S3 ),
 .SELb( S3b ),
 .Y( Q14b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( Z6b )
);


2x1_mux
x413 ( 
 .A( Z13b ),
 .SEL( S3 ),
 .SELb( S3b ),
 .Y( Q13b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( Z5b )
);


2x1_mux
x412 ( 
 .A( Z12b ),
 .SEL( S3 ),
 .SELb( S3b ),
 .Y( Q12b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( Z4b )
);


2x1_mux
x411 ( 
 .A( Z11b ),
 .SEL( S3 ),
 .SELb( S3b ),
 .Y( Q11b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( Z3b )
);


2x1_mux
x410 ( 
 .A( Z10b ),
 .SEL( S3 ),
 .SELb( S3b ),
 .Y( Q10b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( Z2b )
);


2x1_mux
x49 ( 
 .A( Z9b ),
 .SEL( S3 ),
 .SELb( S3b ),
 .Y( Q9b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( Z1b )
);


2x1_mux
x48 ( 
 .A( Z8b ),
 .SEL( S3 ),
 .SELb( S3b ),
 .Y( Q8b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( Z0b )
);


2x1_mux
x47 ( 
 .A( Z7b ),
 .SEL( S3 ),
 .SELb( S3b ),
 .Y( Q7b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( VDD )
);


2x1_mux
x46 ( 
 .A( Z6b ),
 .SEL( S3 ),
 .SELb( S3b ),
 .Y( Q6b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( VDD )
);


2x1_mux
x45 ( 
 .A( Z5b ),
 .SEL( S3 ),
 .SELb( S3b ),
 .Y( Q5b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( VDD )
);


2x1_mux
x44 ( 
 .A( Z4b ),
 .SEL( S3 ),
 .SELb( S3b ),
 .Y( Q4b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( VDD )
);


2x1_mux
x43 ( 
 .A( Z3b ),
 .SEL( S3 ),
 .SELb( S3b ),
 .Y( Q3b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( VDD )
);


2x1_mux
x42 ( 
 .A( Z2b ),
 .SEL( S3 ),
 .SELb( S3b ),
 .Y( Q2b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( VDD )
);


2x1_mux
x41 ( 
 .A( Z1b ),
 .SEL( S3 ),
 .SELb( S3b ),
 .Y( Q1b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( VDD )
);


2x1_mux
x40 ( 
 .A( Z0b ),
 .SEL( S3 ),
 .SELb( S3b ),
 .Y( Q0b ),
 .VDD( VDD ),
 .VSS( VSS ),
 .B( VDD )
);


unit_inv
x515 ( 
 .VDD( VDD ),
 .IN( Q15b ),
 .OUT( Q15 ),
 .VSS( VSS )
);


unit_inv
x514 ( 
 .VDD( VDD ),
 .IN( Q14b ),
 .OUT( Q14 ),
 .VSS( VSS )
);


unit_inv
x513 ( 
 .VDD( VDD ),
 .IN( Q13b ),
 .OUT( Q13 ),
 .VSS( VSS )
);


unit_inv
x512 ( 
 .VDD( VDD ),
 .IN( Q12b ),
 .OUT( Q12 ),
 .VSS( VSS )
);


unit_inv
x511 ( 
 .VDD( VDD ),
 .IN( Q11b ),
 .OUT( Q11 ),
 .VSS( VSS )
);


unit_inv
x510 ( 
 .VDD( VDD ),
 .IN( Q10b ),
 .OUT( Q10 ),
 .VSS( VSS )
);


unit_inv
x59 ( 
 .VDD( VDD ),
 .IN( Q9b ),
 .OUT( Q9 ),
 .VSS( VSS )
);


unit_inv
x58 ( 
 .VDD( VDD ),
 .IN( Q8b ),
 .OUT( Q8 ),
 .VSS( VSS )
);


unit_inv
x57 ( 
 .VDD( VDD ),
 .IN( Q7b ),
 .OUT( Q7 ),
 .VSS( VSS )
);


unit_inv
x56 ( 
 .VDD( VDD ),
 .IN( Q6b ),
 .OUT( Q6 ),
 .VSS( VSS )
);


unit_inv
x55 ( 
 .VDD( VDD ),
 .IN( Q5b ),
 .OUT( Q5 ),
 .VSS( VSS )
);


unit_inv
x54 ( 
 .VDD( VDD ),
 .IN( Q4b ),
 .OUT( Q4 ),
 .VSS( VSS )
);


unit_inv
x53 ( 
 .VDD( VDD ),
 .IN( Q3b ),
 .OUT( Q3 ),
 .VSS( VSS )
);


unit_inv
x52 ( 
 .VDD( VDD ),
 .IN( Q2b ),
 .OUT( Q2 ),
 .VSS( VSS )
);


unit_inv
x51 ( 
 .VDD( VDD ),
 .IN( Q1b ),
 .OUT( Q1 ),
 .VSS( VSS )
);


unit_inv
x50 ( 
 .VDD( VDD ),
 .IN( Q0b ),
 .OUT( Q0 ),
 .VSS( VSS )
);


unit_inv
x915 ( 
 .VDD( VDD ),
 .IN( D15 ),
 .OUT( D15b ),
 .VSS( VSS )
);


unit_inv
x914 ( 
 .VDD( VDD ),
 .IN( D14 ),
 .OUT( D14b ),
 .VSS( VSS )
);


unit_inv
x913 ( 
 .VDD( VDD ),
 .IN( D13 ),
 .OUT( D13b ),
 .VSS( VSS )
);


unit_inv
x912 ( 
 .VDD( VDD ),
 .IN( D12 ),
 .OUT( D12b ),
 .VSS( VSS )
);


unit_inv
x911 ( 
 .VDD( VDD ),
 .IN( D11 ),
 .OUT( D11b ),
 .VSS( VSS )
);


unit_inv
x910 ( 
 .VDD( VDD ),
 .IN( D10 ),
 .OUT( D10b ),
 .VSS( VSS )
);


unit_inv
x99 ( 
 .VDD( VDD ),
 .IN( D9 ),
 .OUT( D9b ),
 .VSS( VSS )
);


unit_inv
x98 ( 
 .VDD( VDD ),
 .IN( D8 ),
 .OUT( D8b ),
 .VSS( VSS )
);


unit_inv
x97 ( 
 .VDD( VDD ),
 .IN( D7 ),
 .OUT( D7b ),
 .VSS( VSS )
);


unit_inv
x96 ( 
 .VDD( VDD ),
 .IN( D6 ),
 .OUT( D6b ),
 .VSS( VSS )
);


unit_inv
x95 ( 
 .VDD( VDD ),
 .IN( D5 ),
 .OUT( D5b ),
 .VSS( VSS )
);


unit_inv
x94 ( 
 .VDD( VDD ),
 .IN( D4 ),
 .OUT( D4b ),
 .VSS( VSS )
);


unit_inv
x93 ( 
 .VDD( VDD ),
 .IN( D3 ),
 .OUT( D3b ),
 .VSS( VSS )
);


unit_inv
x92 ( 
 .VDD( VDD ),
 .IN( D2 ),
 .OUT( D2b ),
 .VSS( VSS )
);


unit_inv
x91 ( 
 .VDD( VDD ),
 .IN( D1 ),
 .OUT( D1b ),
 .VSS( VSS )
);


unit_inv
x90 ( 
 .VDD( VDD ),
 .IN( D0 ),
 .OUT( D0b ),
 .VSS( VSS )
);


.param kI=6.958333
.param kYb=6.958333
.param kY=7.25
.param kSELb=6

endmodule

// expanding   symbol:  engn1600-team1/CAD4/4x1_mux.sym # of pins=10
// sym_path: /foss/designs/engn1600-team1/CAD4/4x1_mux.sym
// sch_path: /foss/designs/engn1600-team1/CAD4/4x1_mux.sch
module 4x1_mux
(
  input wire SA,
  input wire A,
  input wire SB,
  input wire B,
  inout wire VSS,
  output wire Y,
  input wire SC,
  input wire C,
  input wire SD,
  input wire D
);

nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M1 ( 
 .D( Y ),
 .G( SA ),
 .S( A ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M2 ( 
 .D( Y ),
 .G( SB ),
 .S( B ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M3 ( 
 .D( Y ),
 .G( SC ),
 .S( C ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M4 ( 
 .D( Y ),
 .G( SD ),
 .S( D ),
 .B( VSS )
);

endmodule

// expanding   symbol:  engn1600-team1/CAD7/inv.sym # of pins=4
// sym_path: /foss/designs/engn1600-team1/CAD7/inv.sym
// sch_path: /foss/designs/engn1600-team1/CAD7/inv.sch
module inv
#(
  parameter kINV = 1
)
(
  inout wire VDD,
  input wire IN,
  output wire OUT,
  inout wire VSS
);

pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( "'kINV*0.72u'" ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M1 ( 
 .D( OUT ),
 .G( IN ),
 .S( VDD ),
 .B( VDD )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( "'kINV*0.36u'" ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M2 ( 
 .D( OUT ),
 .G( IN ),
 .S( VSS ),
 .B( VSS )
);


.param kINV=1

endmodule

// expanding   symbol:  engn1600-team1/CAD7/2x1_mux.sym # of pins=7
// sym_path: /foss/designs/engn1600-team1/CAD7/2x1_mux.sym
// sch_path: /foss/designs/engn1600-team1/CAD7/2x1_mux.sch
module 2x1_mux
(
  input wire A,
  input wire SEL,
  input wire SELb,
  output wire Y,
  inout wire VDD,
  inout wire VSS,
  input wire B
);

nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M1 ( 
 .D( Y ),
 .G( SEL ),
 .S( B ),
 .B( VSS )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M2 ( 
 .D( Y ),
 .G( SELb ),
 .S( B ),
 .B( VDD )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M3 ( 
 .D( Y ),
 .G( SELb ),
 .S( A ),
 .B( VSS )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M4 ( 
 .D( Y ),
 .G( SEL ),
 .S( A ),
 .B( VDD )
);

endmodule

// expanding   symbol:  engn1600-team1/CAD7/2x1_mux_pass.sym # of pins=6
// sym_path: /foss/designs/engn1600-team1/CAD7/2x1_mux_pass.sym
// sch_path: /foss/designs/engn1600-team1/CAD7/2x1_mux_pass.sch
module 2x1_mux_pass
(
  input wire A,
  input wire SEL,
  output wire Y,
  inout wire VDD,
  inout wire VSS,
  input wire B
);
wire SELb ;


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M1 ( 
 .D( Y ),
 .G( SEL ),
 .S( B ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M3 ( 
 .D( Y ),
 .G( SELb ),
 .S( A ),
 .B( VSS )
);


inv
#(
.kINV ( 1 )
)
x1 ( 
 .VDD( VDD ),
 .IN( SEL ),
 .OUT( SELb ),
 .VSS( VSS )
);

endmodule

// expanding   symbol:  engn1600-team1/CAD7/dff.sym # of pins=7
// sym_path: /foss/designs/engn1600-team1/CAD7/dff.sym
// sch_path: /foss/designs/engn1600-team1/CAD7/dff.sch
module dff
(
  input wire CLKb,
  input wire D,
  output wire Q,
  input wire RSTn,
  input wire CLK,
  inout wire VDD,
  inout wire VSS
);
wire net10 ;
wire net11 ;
wire net1 ;
wire net2 ;
wire net3 ;
wire net4 ;
wire net5 ;
wire net6 ;
wire net7 ;
wire net8 ;
wire net9 ;


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M7 ( 
 .D( net2 ),
 .G( CLK ),
 .S( VDD ),
 .B( VDD )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M8 ( 
 .D( net1 ),
 .G( D ),
 .S( net2 ),
 .B( VDD )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M9 ( 
 .D( net1 ),
 .G( D ),
 .S( net3 ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M10 ( 
 .D( net3 ),
 .G( CLKb ),
 .S( VSS ),
 .B( VSS )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M13 ( 
 .D( net4 ),
 .G( net1 ),
 .S( VDD ),
 .B( VDD )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M14 ( 
 .D( net4 ),
 .G( net1 ),
 .S( VSS ),
 .B( VSS )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M15 ( 
 .D( net1 ),
 .G( CLKb ),
 .S( net5 ),
 .B( VDD )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M16 ( 
 .D( net1 ),
 .G( CLK ),
 .S( net5 ),
 .B( VSS )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M25 ( 
 .D( net5 ),
 .G( RSTn ),
 .S( VDD ),
 .B( VDD )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M26 ( 
 .D( net5 ),
 .G( net4 ),
 .S( VDD ),
 .B( VDD )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M27 ( 
 .D( net6 ),
 .G( net4 ),
 .S( VSS ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M28 ( 
 .D( net5 ),
 .G( RSTn ),
 .S( net6 ),
 .B( VSS )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M29 ( 
 .D( net4 ),
 .G( CLKb ),
 .S( net7 ),
 .B( VDD )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M30 ( 
 .D( net4 ),
 .G( CLK ),
 .S( net7 ),
 .B( VSS )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M31 ( 
 .D( net8 ),
 .G( net7 ),
 .S( VDD ),
 .B( VDD )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M32 ( 
 .D( net8 ),
 .G( RSTn ),
 .S( VDD ),
 .B( VDD )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M33 ( 
 .D( net9 ),
 .G( RSTn ),
 .S( VSS ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M34 ( 
 .D( net8 ),
 .G( net7 ),
 .S( net9 ),
 .B( VSS )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M35 ( 
 .D( net10 ),
 .G( CLK ),
 .S( VDD ),
 .B( VDD )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M36 ( 
 .D( net7 ),
 .G( net8 ),
 .S( net10 ),
 .B( VDD )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M37 ( 
 .D( net7 ),
 .G( net8 ),
 .S( net11 ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M38 ( 
 .D( net11 ),
 .G( CLKb ),
 .S( VSS ),
 .B( VSS )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 7.2e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M43 ( 
 .D( Q ),
 .G( net8 ),
 .S( VDD ),
 .B( VDD )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M44 ( 
 .D( Q ),
 .G( net8 ),
 .S( VSS ),
 .B( VSS )
);

endmodule

// expanding   symbol:  engn1600-team1/CAD7/sign_zero_extender.sym # of pins=5
// sym_path: /foss/designs/engn1600-team1/CAD7/sign_zero_extender.sym
// sch_path: /foss/designs/engn1600-team1/CAD7/sign_zero_extender.sch
module sign_zero_extender
(
  input wire EXTEND,
  output wire OUT,
  input wire IN,
  inout wire VDD,
  inout wire VSS
);
wire net1 ;
wire net2 ;
wire net3 ;


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( "'3*0.72u'" ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M1 ( 
 .D( net1 ),
 .G( net2 ),
 .S( VDD ),
 .B( VDD )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( "'3*0.36u'" ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M2 ( 
 .D( net1 ),
 .G( net2 ),
 .S( VSS ),
 .B( VSS )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( "'9*0.72u'" ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M3 ( 
 .D( OUT ),
 .G( net1 ),
 .S( VDD ),
 .B( VDD )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( "'9*0.36u'" ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M4 ( 
 .D( OUT ),
 .G( net1 ),
 .S( VSS ),
 .B( VSS )
);


inv
#(
.kINV ( 1 )
)
x1 ( 
 .VDD( VDD ),
 .IN( net3 ),
 .OUT( net2 ),
 .VSS( VSS )
);

endmodule

// expanding   symbol:  engn1600-team1/CAD4/full_adder.sym # of pins=7
// sym_path: /foss/designs/engn1600-team1/CAD4/full_adder.sym
// sch_path: /foss/designs/engn1600-team1/CAD4/full_adder.sch
module full_adder
#(
  parameter kSUMb = 1,
  parameter kTS = 1
)
(
  inout wire VDD,
  inout wire VSS,
  input wire A,
  input wire B,
  input wire CIN,
  output wire SUMb,
  output wire COUT
);
wire net10 ;
wire net11 ;
wire net1 ;
wire net2 ;
wire net3 ;
wire net4 ;
wire net5 ;
wire net6 ;
wire net7 ;
wire net8 ;
wire net9 ;


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 7.2e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M1 ( 
 .D( net1 ),
 .G( B ),
 .S( VDD ),
 .B( VDD )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 7.2e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M2 ( 
 .D( net4 ),
 .G( A ),
 .S( net1 ),
 .B( VDD )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 7.2e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M3 ( 
 .D( net3 ),
 .G( A ),
 .S( VDD ),
 .B( VDD )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 7.2e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M4 ( 
 .D( net3 ),
 .G( B ),
 .S( VDD ),
 .B( VDD )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 7.2e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M5 ( 
 .D( net4 ),
 .G( CIN ),
 .S( net3 ),
 .B( VDD )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M6 ( 
 .D( net4 ),
 .G( CIN ),
 .S( net5 ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M7 ( 
 .D( net2 ),
 .G( B ),
 .S( VSS ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M8 ( 
 .D( net4 ),
 .G( A ),
 .S( net2 ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M9 ( 
 .D( net5 ),
 .G( A ),
 .S( VSS ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M10 ( 
 .D( net5 ),
 .G( B ),
 .S( VSS ),
 .B( VSS )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( "'kSUMb*0.72u'" ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M11 ( 
 .D( SUMb ),
 .G( net4 ),
 .S( net7 ),
 .B( VDD )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 7.2e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M12 ( 
 .D( net7 ),
 .G( A ),
 .S( VDD ),
 .B( VDD )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 7.2e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M13 ( 
 .D( net7 ),
 .G( CIN ),
 .S( VDD ),
 .B( VDD )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 7.2e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M14 ( 
 .D( net7 ),
 .G( B ),
 .S( VDD ),
 .B( VDD )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 7.2e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M15 ( 
 .D( net8 ),
 .G( A ),
 .S( net9 ),
 .B( VDD )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( "'kTS*0.72u'" ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M16 ( 
 .D( SUMb ),
 .G( CIN ),
 .S( net8 ),
 .B( VDD )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 7.2e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M17 ( 
 .D( net9 ),
 .G( B ),
 .S( VDD ),
 .B( VDD )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( "'kSUMb*0.36u'" ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M18 ( 
 .D( SUMb ),
 .G( net4 ),
 .S( net6 ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M19 ( 
 .D( net6 ),
 .G( B ),
 .S( VSS ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M20 ( 
 .D( net6 ),
 .G( A ),
 .S( VSS ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M21 ( 
 .D( net6 ),
 .G( CIN ),
 .S( VSS ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( "'kTS*0.36u'" ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M22 ( 
 .D( SUMb ),
 .G( CIN ),
 .S( net11 ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M23 ( 
 .D( net11 ),
 .G( A ),
 .S( net10 ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M24 ( 
 .D( net10 ),
 .G( B ),
 .S( VSS ),
 .B( VSS )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 7.2e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M25 ( 
 .D( COUT ),
 .G( net4 ),
 .S( VDD ),
 .B( VDD )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M26 ( 
 .D( COUT ),
 .G( net4 ),
 .S( VSS ),
 .B( VSS )
);


.param kSUMb=1
.param kTS=1

endmodule

// expanding   symbol:  engn1600-team1/CAD4/logic.sym # of pins=8
// sym_path: /foss/designs/engn1600-team1/CAD4/logic.sym
// sch_path: /foss/designs/engn1600-team1/CAD4/logic.sch
module logic
(
  output wire NOR,
  inout wire VDD,
  inout wire VSS,
  output wire XNOR,
  input wire A,
  input wire B,
  output wire NAND,
  output wire XOR
);
wire net1 ;


nand2
x1 ( 
 .VDD( VDD ),
 .OUT( NAND ),
 .IN0( A ),
 .IN1( B ),
 .VSS( VSS )
);


inv
x3 ( 
 .VDD( VDD ),
 .IN( NOR ),
 .OUT( net1 ),
 .VSS( VSS )
);


nor2
x2 ( 
 .VDD( VDD ),
 .OUT( NOR ),
 .IN0( A ),
 .IN1( B ),
 .VSS( VSS )
);


nand2
x4 ( 
 .VDD( VDD ),
 .OUT( XNOR ),
 .IN0( NAND ),
 .IN1( net1 ),
 .VSS( VSS )
);


inv
x6 ( 
 .VDD( VDD ),
 .IN( XNOR ),
 .OUT( XOR ),
 .VSS( VSS )
);

endmodule

// expanding   symbol:  engn1600-team1/CAD4/logic_extended.sym # of pins=10
// sym_path: /foss/designs/engn1600-team1/CAD4/logic_extended.sym
// sch_path: /foss/designs/engn1600-team1/CAD4/logic_extended.sch
module logic_extended
(
  output wire AND,
  output wire XOR,
  output wire OR,
  output wire NOR,
  inout wire VDD,
  inout wire VSS,
  output wire XNOR,
  input wire A,
  input wire B,
  output wire NAND
);

nand2
x1 ( 
 .VDD( VDD ),
 .OUT( NAND ),
 .IN0( A ),
 .IN1( B ),
 .VSS( VSS )
);


inv
x3 ( 
 .VDD( VDD ),
 .IN( NOR ),
 .OUT( OR ),
 .VSS( VSS )
);


nor2
x2 ( 
 .VDD( VDD ),
 .OUT( NOR ),
 .IN0( A ),
 .IN1( B ),
 .VSS( VSS )
);


nand2
x4 ( 
 .VDD( VDD ),
 .OUT( XNOR ),
 .IN0( NAND ),
 .IN1( OR ),
 .VSS( VSS )
);


inv
x5 ( 
 .VDD( VDD ),
 .IN( NAND ),
 .OUT( AND ),
 .VSS( VSS )
);


inv
x6 ( 
 .VDD( VDD ),
 .IN( XNOR ),
 .OUT( XOR ),
 .VSS( VSS )
);

endmodule

// expanding   symbol:  engn1600-team1/CAD4/2x1_mux_cmos.sym # of pins=8
// sym_path: /foss/designs/engn1600-team1/CAD4/2x1_mux_cmos.sym
// sch_path: /foss/designs/engn1600-team1/CAD4/2x1_mux_cmos.sch
module 2x1_mux_cmos
#(
  parameter kI = 1,
  parameter kYb = 1,
  parameter kY = 1
)
(
  input wire A,
  input wire SEL,
  input wire SELb,
  output wire Y,
  inout wire VDD,
  inout wire VSS,
  input wire B,
  output wire Yb
);
wire net1 ;
wire net2 ;
wire net3 ;
wire net4 ;


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( "'kI*0.36u'" ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M1 ( 
 .D( VSS ),
 .G( B ),
 .S( net1 ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( "'kYb*0.36u'" ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M2 ( 
 .D( net1 ),
 .G( SEL ),
 .S( Yb ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( "'kYb*0.36u'" ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M3 ( 
 .D( Yb ),
 .G( SELb ),
 .S( net2 ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( "'kI*0.36u'" ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M4 ( 
 .D( net2 ),
 .G( A ),
 .S( VSS ),
 .B( VSS )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( "'kYb*0.72u'" ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M5 ( 
 .D( net3 ),
 .G( SELb ),
 .S( Yb ),
 .B( VDD )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( "'kI*0.72u'" ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M6 ( 
 .D( VDD ),
 .G( B ),
 .S( net3 ),
 .B( VDD )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( "'kI*0.72u'" ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M7 ( 
 .D( net4 ),
 .G( A ),
 .S( VDD ),
 .B( VDD )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( "'kYb*0.72u'" ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M8 ( 
 .D( Yb ),
 .G( SEL ),
 .S( net4 ),
 .B( VDD )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( "'kY*0.36u'" ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M9 ( 
 .D( VSS ),
 .G( Yb ),
 .S( Y ),
 .B( VSS )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( "'kY*0.72u'" ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M10 ( 
 .D( VDD ),
 .G( Yb ),
 .S( Y ),
 .B( VDD )
);


.param kI=2.5
.param kYb=1.875
.param kY=0.775/0.36

endmodule

// expanding   symbol:  engn1600-team1/CAD4/2x4_decoder.sym # of pins=8
// sym_path: /foss/designs/engn1600-team1/CAD4/2x4_decoder.sym
// sch_path: /foss/designs/engn1600-team1/CAD4/2x4_decoder.sch
module 2x4_decoder
(
  inout wire VDD,
  inout wire VSS,
  input wire S0,
  input wire S1,
  output wire SA,
  output wire SB,
  output wire SC,
  output wire SD
);
wire S1bar ;


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M1 ( 
 .D( S1bar ),
 .G( S1 ),
 .S( VSS ),
 .B( VSS )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 7.2e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M2 ( 
 .D( S1bar ),
 .G( S1 ),
 .S( VDD ),
 .B( VDD )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M3 ( 
 .D( SA ),
 .G( S0 ),
 .S( VSS ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M4 ( 
 .D( SA ),
 .G( S1 ),
 .S( VSS ),
 .B( VSS )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M5 ( 
 .D( SA ),
 .G( S0 ),
 .S( S1bar ),
 .B( VDD )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M9 ( 
 .D( S0 ),
 .G( S1 ),
 .S( SB ),
 .B( VDD )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M10 ( 
 .D( S0 ),
 .G( S1bar ),
 .S( SB ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M11 ( 
 .D( VSS ),
 .G( S1 ),
 .S( SB ),
 .B( VSS )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M12 ( 
 .D( S0 ),
 .G( S1bar ),
 .S( SD ),
 .B( VDD )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M13 ( 
 .D( S0 ),
 .G( S1 ),
 .S( SD ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M14 ( 
 .D( VSS ),
 .G( S1bar ),
 .S( SD ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M6 ( 
 .D( SC ),
 .G( S0 ),
 .S( VSS ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M7 ( 
 .D( SC ),
 .G( S1bar ),
 .S( VSS ),
 .B( VSS )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M8 ( 
 .D( SC ),
 .G( S0 ),
 .S( S1 ),
 .B( VDD )
);

endmodule

// expanding   symbol:  engn1600-team1/CAD4/and16.sym # of pins=4
// sym_path: /foss/designs/engn1600-team1/CAD4/and16.sym
// sch_path: /foss/designs/engn1600-team1/CAD4/and16.sch
module and16
(
  input wire [15..0] IN,
  inout wire VDD,
  output wire OUT,
  inout wire VSS
);
wire net1 ;
wire net2 ;
wire net3 ;
wire net4 ;


nand4
x1 ( 
 .OUT( net4 ),
 .VSS( VSS ),
 .VDD( VDD ),
 .IN0( IN0 ),
 .IN1( IN1 ),
 .IN2( IN2 ),
 .IN3( IN3 )
);


nand4
x2 ( 
 .OUT( net1 ),
 .VSS( VSS ),
 .VDD( VDD ),
 .IN0( IN4 ),
 .IN1( IN5 ),
 .IN2( IN6 ),
 .IN3( IN7 )
);


nand4
x3 ( 
 .OUT( net2 ),
 .VSS( VSS ),
 .VDD( VDD ),
 .IN0( IN8 ),
 .IN1( IN9 ),
 .IN2( IN10 ),
 .IN3( IN11 )
);


nand4
x4 ( 
 .OUT( net3 ),
 .VSS( VSS ),
 .VDD( VDD ),
 .IN0( IN12 ),
 .IN1( IN13 ),
 .IN2( IN14 ),
 .IN3( IN15 )
);


nor4
x5 ( 
 .OUT( OUT ),
 .VSS( VSS ),
 .VDD( VDD ),
 .IN0( net4 ),
 .IN1( net1 ),
 .IN2( net2 ),
 .IN3( net3 )
);

endmodule

// expanding   symbol:  engn1600-team1/CAD4/xor2.sym # of pins=5
// sym_path: /foss/designs/engn1600-team1/CAD4/xor2.sym
// sch_path: /foss/designs/engn1600-team1/CAD4/xor2.sch
module xor2
(
  inout wire VDD,
  output wire OUT,
  input wire IN0,
  input wire IN1,
  inout wire VSS
);
wire net1 ;
wire net2 ;
wire net3 ;
wire net4 ;


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 1.44e-06 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M1 ( 
 .D( net3 ),
 .G( IN1 ),
 .S( VDD ),
 .B( VDD )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 1.44e-06 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M2 ( 
 .D( net2 ),
 .G( IN0 ),
 .S( net3 ),
 .B( VDD )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 7.2e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M3 ( 
 .D( net2 ),
 .G( IN0 ),
 .S( VSS ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 7.2e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M5 ( 
 .D( OUT ),
 .G( net2 ),
 .S( VSS ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 7.2e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M6 ( 
 .D( net2 ),
 .G( IN1 ),
 .S( VSS ),
 .B( VSS )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 1.44e-06 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M7 ( 
 .D( OUT ),
 .G( IN0 ),
 .S( net1 ),
 .B( VDD )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 1.44e-06 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M8 ( 
 .D( OUT ),
 .G( IN1 ),
 .S( net1 ),
 .B( VDD )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 1.44e-06 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M9 ( 
 .D( net1 ),
 .G( net2 ),
 .S( VDD ),
 .B( VDD )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 7.2e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M10 ( 
 .D( OUT ),
 .G( IN1 ),
 .S( net4 ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 7.2e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M11 ( 
 .D( net4 ),
 .G( IN0 ),
 .S( VSS ),
 .B( VSS )
);

endmodule

// expanding   symbol:  engn1600-team1/CAD3/slave_latch.sym # of pins=9
// sym_path: /foss/designs/engn1600-team1/CAD3/slave_latch.sym
// sch_path: /foss/designs/engn1600-team1/CAD3/slave_latch.sch
module slave_latch
#(
  parameter kQ = 1
)
(
  inout wire VDD,
  inout wire VSS,
  output wire QA,
  input wire WECLK,
  input wire WECLKb,
  input wire RA,
  input wire RB,
  output wire QB,
  input wire D
);
wire net1 ;
wire net2 ;
wire net3 ;
wire net4 ;
wire net5 ;
wire net6 ;
wire net7 ;
wire net8 ;


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M1 ( 
 .D( net1 ),
 .G( WECLKb ),
 .S( net2 ),
 .B( VDD )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 7.2e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M2 ( 
 .D( net1 ),
 .G( D ),
 .S( VDD ),
 .B( VDD )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 7.2e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M3 ( 
 .D( net3 ),
 .G( net2 ),
 .S( VDD ),
 .B( VDD )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M4 ( 
 .D( net4 ),
 .G( net2 ),
 .S( VDD ),
 .B( VDD )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M5 ( 
 .D( VDD ),
 .G( WECLK ),
 .S( net8 ),
 .B( VDD )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M6 ( 
 .D( net8 ),
 .G( net4 ),
 .S( net2 ),
 .B( VDD )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M7 ( 
 .D( net1 ),
 .G( D ),
 .S( VSS ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M8 ( 
 .D( net1 ),
 .G( WECLK ),
 .S( net2 ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M9 ( 
 .D( net3 ),
 .G( net2 ),
 .S( VSS ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M10 ( 
 .D( net4 ),
 .G( net2 ),
 .S( VSS ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M11 ( 
 .D( net7 ),
 .G( net4 ),
 .S( net2 ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M12 ( 
 .D( VSS ),
 .G( WECLKb ),
 .S( net7 ),
 .B( VSS )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( "'kQ*0.36u'" ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M13 ( 
 .D( net3 ),
 .G( net5 ),
 .S( QB ),
 .B( VDD )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( "'kQ*0.36u'" ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M14 ( 
 .D( net3 ),
 .G( RB ),
 .S( QB ),
 .B( VSS )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 7.2e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M15 ( 
 .D( net5 ),
 .G( RB ),
 .S( VDD ),
 .B( VDD )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M16 ( 
 .D( net5 ),
 .G( RB ),
 .S( VSS ),
 .B( VSS )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( "'kQ*0.36u'" ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M21 ( 
 .D( net3 ),
 .G( net6 ),
 .S( QA ),
 .B( VDD )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( "'kQ*0.36u'" ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M22 ( 
 .D( net3 ),
 .G( RA ),
 .S( QA ),
 .B( VSS )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 7.2e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M23 ( 
 .D( net6 ),
 .G( RA ),
 .S( VDD ),
 .B( VDD )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M24 ( 
 .D( net6 ),
 .G( RA ),
 .S( VSS ),
 .B( VSS )
);


.param kQ=1

endmodule

// expanding   symbol:  engn1600-team1/CAD3/master_latch.sym # of pins=6
// sym_path: /foss/designs/engn1600-team1/CAD3/master_latch.sym
// sch_path: /foss/designs/engn1600-team1/CAD3/master_latch.sch
module master_latch
#(
  parameter kN = 1
)
(
  inout wire VDD,
  inout wire VSS,
  output wire Q,
  input wire WEM,
  input wire WEMb,
  input wire D
);
wire net1 ;
wire net2 ;
wire net3 ;
wire net4 ;
wire net5 ;


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M3 ( 
 .D( net1 ),
 .G( WEMb ),
 .S( net2 ),
 .B( VDD )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 7.2e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M7 ( 
 .D( net1 ),
 .G( D ),
 .S( VDD ),
 .B( VDD )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( "'kN*0.72u'" ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M8 ( 
 .D( Q ),
 .G( net2 ),
 .S( VDD ),
 .B( VDD )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M9 ( 
 .D( net3 ),
 .G( net2 ),
 .S( VDD ),
 .B( VDD )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M10 ( 
 .D( VDD ),
 .G( WEM ),
 .S( net5 ),
 .B( VDD )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M12 ( 
 .D( net5 ),
 .G( net3 ),
 .S( net2 ),
 .B( VDD )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M19 ( 
 .D( net1 ),
 .G( D ),
 .S( VSS ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M20 ( 
 .D( net1 ),
 .G( WEM ),
 .S( net2 ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( "'kN*0.36u'" ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M21 ( 
 .D( Q ),
 .G( net2 ),
 .S( VSS ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M22 ( 
 .D( net3 ),
 .G( net2 ),
 .S( VSS ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M23 ( 
 .D( net4 ),
 .G( net3 ),
 .S( net2 ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M24 ( 
 .D( VSS ),
 .G( WEMb ),
 .S( net4 ),
 .B( VSS )
);


.param kN=1

endmodule

// expanding   symbol:  engn1600-team1/CAD3/driver_cell.sym # of pins=6
// sym_path: /foss/designs/engn1600-team1/CAD3/driver_cell.sym
// sch_path: /foss/designs/engn1600-team1/CAD3/driver_cell.sch
module driver_cell
#(
  parameter kWECLK = 1,
  parameter kWECLKb = 1
)
(
  input wire CLK,
  input wire WE,
  output wire WECLKb,
  inout wire VDD,
  inout wire VSS,
  output wire WECLK
);
wire net1 ;
wire net2 ;


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( "'kWECLK*0.72u'" ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M13 ( 
 .D( WECLK ),
 .G( net1 ),
 .S( VDD ),
 .B( VDD )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( "'kWECLK*0.36u'" ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M14 ( 
 .D( WECLK ),
 .G( net1 ),
 .S( VSS ),
 .B( VSS )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( "'kWECLKb*0.72u'" ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M1 ( 
 .D( WECLKb ),
 .G( WECLK ),
 .S( VDD ),
 .B( VDD )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( "'kWECLKb*0.36u'" ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M2 ( 
 .D( WECLKb ),
 .G( WECLK ),
 .S( VSS ),
 .B( VSS )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 7.2e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M3 ( 
 .D( net1 ),
 .G( CLK ),
 .S( VDD ),
 .B( VDD )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 7.2e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M4 ( 
 .D( net1 ),
 .G( WE ),
 .S( VDD ),
 .B( VDD )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 7.2e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M5 ( 
 .D( net2 ),
 .G( WE ),
 .S( VSS ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 7.2e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M6 ( 
 .D( net1 ),
 .G( CLK ),
 .S( net2 ),
 .B( VSS )
);


.param kWECLKb=1
.param kWECLK=1

endmodule

// expanding   symbol:  engn1600-team1/CAD3/output_inverter.sym # of pins=6
// sym_path: /foss/designs/engn1600-team1/CAD3/output_inverter.sym
// sch_path: /foss/designs/engn1600-team1/CAD3/output_inverter.sch
module output_inverter
(
  inout wire VDD,
  inout wire VSS,
  output wire QAb,
  input wire QA,
  input wire QB,
  output wire QBb
);

pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 7.2e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M3 ( 
 .D( QBb ),
 .G( QB ),
 .S( VDD ),
 .B( VDD )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M4 ( 
 .D( QBb ),
 .G( QB ),
 .S( VSS ),
 .B( VSS )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 7.2e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M35 ( 
 .D( QAb ),
 .G( QA ),
 .S( VDD ),
 .B( VDD )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M36 ( 
 .D( QAb ),
 .G( QA ),
 .S( VSS ),
 .B( VSS )
);

endmodule

// expanding   symbol:  engn1600-team1/CAD3/wem_inverter.sym # of pins=4
// sym_path: /foss/designs/engn1600-team1/CAD3/wem_inverter.sym
// sch_path: /foss/designs/engn1600-team1/CAD3/wem_inverter.sch
module wem_inverter
#(
  parameter kWEMb = 1
)
(
  inout wire VDD,
  input wire WEM,
  output wire WEMb,
  inout wire VSS
);

pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( "'kWEMb*0.72u'" ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M1 ( 
 .D( WEMb ),
 .G( WEM ),
 .S( VDD ),
 .B( VDD )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( "'kWEMb*0.36u'" ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M2 ( 
 .D( WEMb ),
 .G( WEM ),
 .S( VSS ),
 .B( VSS )
);


.param kWEMb=1

endmodule

// expanding   symbol:  engn1600-team1/CAD6/sign_extend.sym # of pins=4
// sym_path: /foss/designs/engn1600-team1/CAD6/sign_extend.sym
// sch_path: /foss/designs/engn1600-team1/CAD6/sign_extend.sch
module sign_extend
(
  inout wire VDD,
  inout wire VSS,
  output wire OUT,
  input wire IN
);
wire net1 ;


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( "'3*0.72u'" ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M1 ( 
 .D( net1 ),
 .G( IN ),
 .S( VDD ),
 .B( VDD )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( "'3*0.36u'" ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M2 ( 
 .D( net1 ),
 .G( IN ),
 .S( VSS ),
 .B( VSS )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( "'9*0.72u'" ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M3 ( 
 .D( OUT ),
 .G( net1 ),
 .S( VDD ),
 .B( VDD )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( "'9*0.36u'" ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M4 ( 
 .D( OUT ),
 .G( net1 ),
 .S( VSS ),
 .B( VSS )
);

endmodule

// expanding   symbol:  engn1600-team1/CAD5/unit_inv.sym # of pins=4
// sym_path: /foss/designs/engn1600-team1/CAD5/unit_inv.sym
// sch_path: /foss/designs/engn1600-team1/CAD5/unit_inv.sch
module unit_inv
(
  inout wire VDD,
  input wire IN,
  output wire OUT,
  inout wire VSS
);

pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 7.2e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M1 ( 
 .D( OUT ),
 .G( IN ),
 .S( VDD ),
 .B( VDD )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M2 ( 
 .D( OUT ),
 .G( IN ),
 .S( VSS ),
 .B( VSS )
);

endmodule

// expanding   symbol:  engn1600-team1/CAD7/nand2.sym # of pins=5
// sym_path: /foss/designs/engn1600-team1/CAD7/nand2.sym
// sch_path: /foss/designs/engn1600-team1/CAD7/nand2.sch
module nand2
(
  inout wire VDD,
  output wire OUT,
  input wire IN0,
  input wire IN1,
  inout wire VSS
);
wire net1 ;


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M1 ( 
 .D( net1 ),
 .G( IN1 ),
 .S( VSS ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M2 ( 
 .D( OUT ),
 .G( IN0 ),
 .S( net1 ),
 .B( VSS )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M3 ( 
 .D( OUT ),
 .G( IN1 ),
 .S( VDD ),
 .B( VDD )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M4 ( 
 .D( OUT ),
 .G( IN0 ),
 .S( VDD ),
 .B( VDD )
);

endmodule

// expanding   symbol:  engn1600-team1/CAD4/nor2.sym # of pins=5
// sym_path: /foss/designs/engn1600-team1/CAD4/nor2.sym
// sch_path: /foss/designs/engn1600-team1/CAD4/nor2.sch
module nor2
(
  inout wire VDD,
  output wire OUT,
  input wire IN0,
  input wire IN1,
  inout wire VSS
);
wire net1 ;


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M1 ( 
 .D( OUT ),
 .G( IN0 ),
 .S( VSS ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M2 ( 
 .D( OUT ),
 .G( IN1 ),
 .S( VSS ),
 .B( VSS )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 1.44e-06 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M3 ( 
 .D( net1 ),
 .G( IN1 ),
 .S( VDD ),
 .B( VDD )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 1.44e-06 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M4 ( 
 .D( OUT ),
 .G( IN0 ),
 .S( net1 ),
 .B( VDD )
);

endmodule

// expanding   symbol:  engn1600-team1/CAD4/nand4.sym # of pins=7
// sym_path: /foss/designs/engn1600-team1/CAD4/nand4.sym
// sch_path: /foss/designs/engn1600-team1/CAD4/nand4.sch
module nand4
(
  output wire OUT,
  inout wire VSS,
  inout wire VDD,
  input wire IN0,
  input wire IN1,
  input wire IN2,
  input wire IN3
);
wire net1 ;
wire net2 ;
wire net3 ;


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 1.44e-06 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M1 ( 
 .D( net1 ),
 .G( IN2 ),
 .S( net2 ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 1.44e-06 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M2 ( 
 .D( OUT ),
 .G( IN3 ),
 .S( net1 ),
 .B( VSS )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 7.2e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M3 ( 
 .D( OUT ),
 .G( IN1 ),
 .S( VDD ),
 .B( VDD )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 7.2e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M4 ( 
 .D( OUT ),
 .G( IN2 ),
 .S( VDD ),
 .B( VDD )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 7.2e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M5 ( 
 .D( OUT ),
 .G( IN0 ),
 .S( VDD ),
 .B( VDD )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 7.2e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M6 ( 
 .D( OUT ),
 .G( IN3 ),
 .S( VDD ),
 .B( VDD )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 1.44e-06 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M7 ( 
 .D( net3 ),
 .G( IN0 ),
 .S( VSS ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 1.44e-06 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M8 ( 
 .D( net2 ),
 .G( IN1 ),
 .S( net3 ),
 .B( VSS )
);

endmodule

// expanding   symbol:  engn1600-team1/CAD4/nor4.sym # of pins=7
// sym_path: /foss/designs/engn1600-team1/CAD4/nor4.sym
// sch_path: /foss/designs/engn1600-team1/CAD4/nor4.sch
module nor4
(
  output wire OUT,
  inout wire VSS,
  inout wire VDD,
  input wire IN0,
  input wire IN1,
  input wire IN2,
  input wire IN3
);
wire net1 ;
wire net2 ;
wire net3 ;


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 2.88e-06 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M1 ( 
 .D( net1 ),
 .G( IN1 ),
 .S( net2 ),
 .B( VDD )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 2.88e-06 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M2 ( 
 .D( net2 ),
 .G( IN0 ),
 .S( VDD ),
 .B( VDD )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M3 ( 
 .D( OUT ),
 .G( IN1 ),
 .S( VSS ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M4 ( 
 .D( OUT ),
 .G( IN2 ),
 .S( VSS ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M5 ( 
 .D( OUT ),
 .G( IN0 ),
 .S( VSS ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_03v3 ) ,
.spiceprefix ( X )
)
M6 ( 
 .D( OUT ),
 .G( IN3 ),
 .S( VSS ),
 .B( VSS )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 2.88e-06 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M7 ( 
 .D( OUT ),
 .G( IN3 ),
 .S( net3 ),
 .B( VDD )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 2.88e-06 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.18u ) ,
.nrs ( "'0.18u ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_03v3 ) ,
.spiceprefix ( X )
)
M8 ( 
 .D( net3 ),
 .G( IN2 ),
 .S( net1 ),
 .B( VDD )
);

endmodule
