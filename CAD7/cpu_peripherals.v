module cpu_peripherals (
    input  wire [15:0] instr,

    input  wire        alu_z,
    input  wire        alu_n,
    input  wire        alu_f,
    input  wire        clk,

    // Register File
    output wire        reg_write,
    output wire [15:0] ra,
    output wire [15:0] rb,
    output wire [15:0] we,

    // ALU
    output wire [1:0]  alu_sel,
    output wire        alu_src_b,
    output wire        alu_src_a,
    output wire        alu_cin,

    // Imm Gen
    output wire        extend,

    // Shift
    output wire        shift_val_src,
    output wire        is_lui,
    output wire        shift_amt_src,

    // Memory Signals
    output wire        mem_write,

    output wire [3:0]  data_out,

    // Outputs to PC
    output wire        pc_br,
    output wire        pc_jmp,

    // DMEM
    input  wire [15:0] dmem_addr,
    input  wire [15:0] rdst,
    output wire [15:0] dmem_q,

    // IMEM
    input  wire [15:0] pc,
    output wire [15:0] imem_q
);

  control u_control (
      .instr(instr),
      .alu_z(alu_z),
      .alu_n(alu_n),
      .alu_f(alu_f),
      .clk(clk),
      .reg_write(reg_write),
      .ra(ra),
      .rb(rb),
      .we(we),
      .alu_sel(alu_sel),
      .alu_src_b(alu_src_b),
      .alu_src_a(alu_src_a),
      .alu_cin(alu_cin),
      .extend(extend),
      .shift_val_src(shift_val_src),
      .is_lui(is_lui),
      .shift_amt_src(shift_amt_src),
      .mem_write(mem_write),
      .data_out(data_out),
      .pc_br(pc_br),
      .pc_jmp(pc_jmp)
  );

  dmem u_dmem (
      .clk(clk),
      .mem_write(mem_write),
      .dmem_addr(dmem_addr),
      .rdst(rdst),
      .dmem_q(dmem_q)
  );

  imem u_imem (
      .clk(clk),
      .pc(pc),
      .imem_q(imem_q)
  );

endmodule

`include "control.v"
`include "dmem.v"
`include "imem.v"
