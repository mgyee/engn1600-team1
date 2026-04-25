module processor #(
    parameter IMEM_FILE = "",
    parameter DMEM_FILE = ""
) (
    input CLK,
    input RSTn,
    input SI,
    input SE
);
  wire        alu_f;  // Datapath: ALU_F
  wire        alu_z;  // Datapath: ALU_Z
  wire        alu_n;  // Datapath: ALU_N
  wire [15:0] rdst;  // Datapath: [15:0] RDST
  wire [15:0] dmem_addr;  // Datapath: [15:0] DMEM_ADDR
  wire [15:0] pc;  // Datapath: [15:0] PC
  wire [15:0] instr;  // Datapath: [15:0] INSTR
  wire        vss = 0;  // Datapath: VSS
  wire        vdd = 1;  // Datapath: VDD
  wire [15:0] ra;  // Datapath: [15:0] RA
  wire [15:0] rb;  // Datapath: [15:0] RB
  wire [15:0] dmem_q;  // Datapath: [15:0] DMEM_Q
  wire [15:0] we;  // Datapath: [15:0] WE
  wire [15:0] imem_q;  // Datapath: [15:0] IMEM_Q
  wire        alu_src_b;  // Datapath: ALU_SRC_B
  wire        alu_src_a;  // Datapath: ALU_SRC_A
  wire        is_lui;  // Datapath: IS_LUI
  wire        shift_val_src;  // Datapath: SHIFT_VAL_SRC
  wire [ 1:0] alu_sel;  // Datapath: [1:0] ALU_SEL
  wire        reg_write;  // Datapath: REG_WRITE
  wire        alu_cin;  // Datapath: ALU_CIN
  wire        pc_br;  // Datapath: PC_BR
  wire        pc_jmp;  // Datapath: PC_JMP
  // Datapath: CLK
  // Datapath: RSTn
  wire        extend;  // Datapath: EXTEND
  wire        shift_amt_src;  // Datapath: SHIFT_AMT_SRC
  // Datapath: SI
  // Datapath: SE
  wire [ 3:0] data_out;  // Datapath: [3:0] DATA_OUT

  wire        mem_write;  // Datapath: N/A

  datapath u_datapath (
      // Single-bit outputs
      .ALU_F(alu_f),
      .ALU_Z(alu_z),
      .ALU_N(alu_n),

      // RDST [15:0]
      .RDST15(rdst[15]),
      .RDST14(rdst[14]),
      .RDST13(rdst[13]),
      .RDST12(rdst[12]),
      .RDST11(rdst[11]),
      .RDST10(rdst[10]),
      .RDST9 (rdst[9]),
      .RDST8 (rdst[8]),
      .RDST7 (rdst[7]),
      .RDST6 (rdst[6]),
      .RDST5 (rdst[5]),
      .RDST4 (rdst[4]),
      .RDST3 (rdst[3]),
      .RDST2 (rdst[2]),
      .RDST1 (rdst[1]),
      .RDST0 (rdst[0]),

      // DMEM_ADDR [15:0]
      .DMEM_ADDR15(dmem_addr[15]),
      .DMEM_ADDR14(dmem_addr[14]),
      .DMEM_ADDR13(dmem_addr[13]),
      .DMEM_ADDR12(dmem_addr[12]),
      .DMEM_ADDR11(dmem_addr[11]),
      .DMEM_ADDR10(dmem_addr[10]),
      .DMEM_ADDR9 (dmem_addr[9]),
      .DMEM_ADDR8 (dmem_addr[8]),
      .DMEM_ADDR7 (dmem_addr[7]),
      .DMEM_ADDR6 (dmem_addr[6]),
      .DMEM_ADDR5 (dmem_addr[5]),
      .DMEM_ADDR4 (dmem_addr[4]),
      .DMEM_ADDR3 (dmem_addr[3]),
      .DMEM_ADDR2 (dmem_addr[2]),
      .DMEM_ADDR1 (dmem_addr[1]),
      .DMEM_ADDR0 (dmem_addr[0]),

      // PC [15:0]
      .PC15(pc[15]),
      .PC14(pc[14]),
      .PC13(pc[13]),
      .PC12(pc[12]),
      .PC11(pc[11]),
      .PC10(pc[10]),
      .PC9 (pc[9]),
      .PC8 (pc[8]),
      .PC7 (pc[7]),
      .PC6 (pc[6]),
      .PC5 (pc[5]),
      .PC4 (pc[4]),
      .PC3 (pc[3]),
      .PC2 (pc[2]),
      .PC1 (pc[1]),
      .PC0 (pc[0]),

      // INSTR [15:0]
      .INSTR15(instr[15]),
      .INSTR14(instr[14]),
      .INSTR13(instr[13]),
      .INSTR12(instr[12]),
      .INSTR11(instr[11]),
      .INSTR10(instr[10]),
      .INSTR9 (instr[9]),
      .INSTR8 (instr[8]),
      .INSTR7 (instr[7]),
      .INSTR6 (instr[6]),
      .INSTR5 (instr[5]),
      .INSTR4 (instr[4]),
      .INSTR3 (instr[3]),
      .INSTR2 (instr[2]),
      .INSTR1 (instr[1]),
      .INSTR0 (instr[0]),

      // Power
      .VSS(vss),
      .VDD(vdd),

      // RA [15:0]
      .RA15(ra[15]),
      .RA14(ra[14]),
      .RA13(ra[13]),
      .RA12(ra[12]),
      .RA11(ra[11]),
      .RA10(ra[10]),
      .RA9 (ra[9]),
      .RA8 (ra[8]),
      .RA7 (ra[7]),
      .RA6 (ra[6]),
      .RA5 (ra[5]),
      .RA4 (ra[4]),
      .RA3 (ra[3]),
      .RA2 (ra[2]),
      .RA1 (ra[1]),
      .RA0 (ra[0]),

      // RB [15:0]
      .RB15(rb[15]),
      .RB14(rb[14]),
      .RB13(rb[13]),
      .RB12(rb[12]),
      .RB11(rb[11]),
      .RB10(rb[10]),
      .RB9 (rb[9]),
      .RB8 (rb[8]),
      .RB7 (rb[7]),
      .RB6 (rb[6]),
      .RB5 (rb[5]),
      .RB4 (rb[4]),
      .RB3 (rb[3]),
      .RB2 (rb[2]),
      .RB1 (rb[1]),
      .RB0 (rb[0]),

      // DMEM_Q [15:0]
      .DMEM_Q15(dmem_q[15]),
      .DMEM_Q14(dmem_q[14]),
      .DMEM_Q13(dmem_q[13]),
      .DMEM_Q12(dmem_q[12]),
      .DMEM_Q11(dmem_q[11]),
      .DMEM_Q10(dmem_q[10]),
      .DMEM_Q9 (dmem_q[9]),
      .DMEM_Q8 (dmem_q[8]),
      .DMEM_Q7 (dmem_q[7]),
      .DMEM_Q6 (dmem_q[6]),
      .DMEM_Q5 (dmem_q[5]),
      .DMEM_Q4 (dmem_q[4]),
      .DMEM_Q3 (dmem_q[3]),
      .DMEM_Q2 (dmem_q[2]),
      .DMEM_Q1 (dmem_q[1]),
      .DMEM_Q0 (dmem_q[0]),

      // WE [15:0]
      .WE15(we[15]),
      .WE14(we[14]),
      .WE13(we[13]),
      .WE12(we[12]),
      .WE11(we[11]),
      .WE10(we[10]),
      .WE9 (we[9]),
      .WE8 (we[8]),
      .WE7 (we[7]),
      .WE6 (we[6]),
      .WE5 (we[5]),
      .WE4 (we[4]),
      .WE3 (we[3]),
      .WE2 (we[2]),
      .WE1 (we[1]),
      .WE0 (we[0]),

      // IMEM_Q [15:0]
      .IMEM_Q15(imem_q[15]),
      .IMEM_Q14(imem_q[14]),
      .IMEM_Q13(imem_q[13]),
      .IMEM_Q12(imem_q[12]),
      .IMEM_Q11(imem_q[11]),
      .IMEM_Q10(imem_q[10]),
      .IMEM_Q9 (imem_q[9]),
      .IMEM_Q8 (imem_q[8]),
      .IMEM_Q7 (imem_q[7]),
      .IMEM_Q6 (imem_q[6]),
      .IMEM_Q5 (imem_q[5]),
      .IMEM_Q4 (imem_q[4]),
      .IMEM_Q3 (imem_q[3]),
      .IMEM_Q2 (imem_q[2]),
      .IMEM_Q1 (imem_q[1]),
      .IMEM_Q0 (imem_q[0]),

      // ALU_SEL [1:0]
      .ALU_SEL1(alu_sel[1]),
      .ALU_SEL0(alu_sel[0]),

      // DATA_OUT [3:0]
      .DATA_OUT3(data_out[3]),
      .DATA_OUT2(data_out[2]),
      .DATA_OUT1(data_out[1]),
      .DATA_OUT0(data_out[0]),

      // Single-bit control/signals
      .ALU_SRC_B(alu_src_b),
      .ALU_SRC_A(alu_src_a),
      .IS_LUI(is_lui),
      .SHIFT_VAL_SRC(shift_val_src),
      .REG_WRITE(reg_write),
      .ALU_CIN(alu_cin),
      .PC_BR(pc_br),
      .PC_JMP(pc_jmp),
      .CLK(CLK),
      .RSTn(RSTn),
      .EXTEND(extend),
      .SHIFT_AMT_SRC(shift_amt_src),
      .SI(SI),
      .SE(SE)
  );
  dmem #(
      .MEMFILE(DMEM_FILE)
  ) u_dmem (
      .clk(CLK),
      .we(mem_write),
      .addr(dmem_addr),
      .wdata(rdst),
      .rdata(dmem_q)
  );

  imem #(
      .MEMFILE(IMEM_FILE)
  ) u_imem (
      .addr(pc),
      .data(imem_q)
  );

  control u_control (
      .instr(instr),
      .psr_z(alu_z),
      .psr_n(alu_n),
      .psr_f(alu_f),
      .clk(CLK),
      .reg_write(reg_write),
      .ra(ra),
      .rb(rb),
      .we(we),
      .alu_sel(alu_sel),
      .alu_src_b(alu_src_b),
      .alu_src_a(alu_src_a),
      .cin(alu_cin),
      .extend(extend),
      .shift_val_src(shift_val_src),
      .is_lui(is_lui),
      .shift_amt_src(shift_amt_src),
      .mem_write(mem_write),
      .data_out(data_out),
      .pc_br(pc_br),
      .pc_jmp(pc_jmp)
  );
endmodule

