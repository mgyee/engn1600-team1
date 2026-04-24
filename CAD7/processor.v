module processor #(
    parameter IMEM_FILE = "",
    parameter DMEM_FILE = ""
) (
    input CLK,
    input RSTn,
    input SI,
    input SE
);
  wire alu_f;             // Datapath: ALU_F
  wire alu_z;             // Datapath: ALU_Z
  wire alu_n;             // Datapath: ALU_N
  wire [15:0] rdst;       // Datapath: [15:0] RDST
  wire [15:0] dmem_addr;  // Datapath: [15:0] DMEM_ADDR
  wire [15:0] pc;         // Datapath: [15:0] PC
  wire [15:0] instr;      // Datapath: [15:0] INSTR
  wire vss = 0;           // Datapath: VSS
  wire vdd = 1;           // Datapath: VDD
  wire [15:0] ra;         // Datapath: [15:0] RA
  wire [15:0] rb;         // Datapath: [15:0] RB
  wire [15:0] dmem_q;     // Datapath: [15:0] DMEM_Q
  wire [15:0] we;         // Datapath: [15:0] WE
  wire [15:0] imem_q;     // Datapath: [15:0] IMEM_Q
  wire alu_src_b;         // Datapath: ALU_SRC_B
  wire alu_src_a;         // Datapath: ALU_SRC_A
  wire is_lui;            // Datapath: IS_LUI
  wire shift_val_src;     // Datapath: SHIFT_VAL_SRC
  wire [1:0] alu_sel;     // Datapath: [1:0] ALU_SEL
  wire reg_write;         // Datapath: REG_WRITE
  wire alu_cin;           // Datapath: ALU_CIN
  wire pc_br;             // Datapath: PC_BR
  wire pc_jmp;            // Datapath: PC_JMP
  // Datapath: CLK
  // Datapath: RSTn
  wire extend;            // Datapath: EXTEND
  wire shift_amt_src;     // Datapath: SHIFT_AMT_SRC
  // Datapath: SI
  // Datapath: SE
  wire [3:0] data_out;   // Datapath: [3:0] DATA_OUT
  
  datapath u_datapath (
    .ALU_F(alu_f),
    .ALU_Z(alu_z),
    .ALU_N(alu_n),
    .RDST(rdst),
    .DMEM_ADDR(dmem_addr),
    .PC(pc),
    .INSTR(instr),
    .VSS(vss),
    .VDD(vdd),
    .RA(ra),
    .RB(rb),
    .DMEM_Q(dmem_q),
    .WE(we),
    .IMEM_Q(imem_q),
    .ALU_SRC_B(alu_src_b),
    .ALU_SRC_A(alu_src_a),
    .IS_LUI(is_lui),
    .SHIFT_VAL_SRC(shift_val_src),
    .ALU_SEL(alu_sel),
    .REG_WRITE(reg_write),
    .ALU_CIN(alu_cin),
    .PC_BR(pc_br),
    .PC_JMP(pc_jmp),
    .CLK(CLK),
    .RSTn(RSTn),
    .EXTEND(extend),
    .SHIFT_AMT_SRC(shift_amt_src),
    .SI(SI),
    .SE(SE),
    .DATA_OUT(data_out)
  );

  dmem #(.MEMFILE(DMEM_FILE)) u_dmem (
    .clk(CLK),
    .we(mem_write),
    .addr(dmem_addr),
    .wdata(rdst),
    .rdata(dmem_q)
  );

  imem #(.MEMFILE(IMEM_FILE)) u_imem (
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