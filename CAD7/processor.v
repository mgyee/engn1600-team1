module processor (
    input CLK
);
  wire alu_f;             // Datapath: ALU_F,
  wire alu_z;             // Datapath: ALU_Z,
  wire alu_n;             // Datapath: ALU_N,
  wire [15..0] rdst;      // Datapath: [15..0] RDST,
  wire [15..0] dmem_addr; // Datapath: [15..0] DMEM_ADDR,
  wire [15..0] pc;        // Datapath: [15..0] PC,
  wire [15..0] instr;     // Datapath: [15..0] INSTR,
  wire vss;               // Datapath: VSS,
  wire vdd;               // Datapath: VDD,
  wire [15..0] ra;        // Datapath: [15..0] RA,
  wire [15..0] rb;        // Datapath: [15..0] RB,
  wire mem_rf;            // Datapath: MEM_RF,
  wire alu_rf;            // Datapath: ALU_RF,
  wire shifter_rf;        // Datapath: SHIFTER_RF,
  wire pc_rf;             // Datapath: PC_RF,
  wire [15..0] dmem_q;    // Datapath: [15..0] DMEM_Q,
  wire [15..0] we;        // Datapath: [15..0] WE,
  wire [15..0] imem_q;    // Datapath: [15..0] IMEM_Q,
  wire alu_src_b;         // Datapath: ALU_SRC_B,
  wire alu_src_a;         // Datapath: ALU_SRC_A,
  wire is_lui;            // Datapath: IS_LUI,
  wire shift_val_src;     // Datapath: SHIFT_VAL_SRC,
  wire [1..0] alu_sel;    // Datapath: [1..0] ALU_SEL,
  wire reg_write;         // Datapath: REG_WRITE,
  wire alu_cin;           // Datapath: ALU_CIN,
  wire pc_br;             // Datapath: PC_BR,
  wire pc_jmp;            // Datapath: PC_JMP,
  wire clk;               // Datapath: CLK,
  wire rstn;              // Datapath: RSTn,
  wire extend;            // Datapath: EXTEND,
  wire shift_amt_src;     // Datapath: SHIFT_AMT_SRC,
  wire si;                // Datapath: SI,
  wire s;                 // Datapath: SE

  datapath path(
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
    .MEM_RF(mem_rf),
    .ALU_RF(alu_rf),
    .SHIFTER_RF(shifter_rf),
    .PC_RF(pc_rf),
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
    .RSTn(rstn),
    .EXTEND(extend),
    .SHIFT_AMT_SRC(shift_amt_src)
  )

  dmem ram(
    .clk(CLK),
    .we(mem_write),
    .addr(dmem_addr),
    .wdata(rdst),
    .rdata(dmem_q)
  )

  // TODO: CLK?
  imem rom(
    .addr(pc),
    .data(imem_q)
  )

  control ctrl(
    .instr(instr),
    .psr_z(alu_z),
    .psr_n(alu_n),
    .psr_f(alu_f),
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
    // .data_out(data_out), --- TODO ---
    // .pc_write(pc_write), --- TODO ---
    .pc_br(pc_br),
    .pc_jmp(pc_jmp),
  )

endmodule