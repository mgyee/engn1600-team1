module control (
    input [15:0] instr,
    input alu_z,
    input alu_n,
    input alu_f,
    input clk,

    // Register File
    output reg        reg_write,
    output     [15:0] ra,
    output     [15:0] rb,
    output     [15:0] we,

    // ALU
    output reg [1:0] alu_sel,    // 00: ADD, 01: AND, 10: OR, 11: XOR
    output reg       alu_src_b,  // 0: Reg, 1: Immediate
    output reg       alu_src_a,  // 0: Reg, 1: Imm 0 (used for MOV)
    output reg       alu_cin,    // 1 for sub/cmp, 0 otherwise

    // Imm Gen
    output reg extend,  // 0: zero extend, 1: sign extend

    // Shift
    output reg shift_val_src,  // 0: reg, 1: imm
    output reg is_lui,         // 0: shift amt 8, 1: shift amt imm
    output reg shift_amt_src,  // 0: reg, 1: imm

    // Memory Signals
    output reg mem_write,
    output reg [3:0] data_out,  // 0001: Mem, 0010: ALU, 0100: Shifter, 1000: PC

    // Outputs to PC
    output reg pc_br,  // For Branch
    output reg pc_jmp  // For Jump
);

  // --- SPICE Initialization ---
  initial begin
    reg_write     = 0;
    alu_sel       = 2'b00;
    alu_src_b     = 0;
    alu_src_a     = 0;
    alu_cin       = 0;
    extend        = 0;
    shift_val_src = 0;
    is_lui        = 0;
    shift_amt_src = 0;
    mem_write     = 0;
    data_out      = 4'b0010;
    pc_br         = 0;
    pc_jmp        = 0;
  end

  wire [3:0] opcode = instr[15:12];
  wire [3:0] rdest = instr[11:8];
  wire [3:0] cond = instr[11:8];
  wire [3:0] ext = instr[7:4];
  wire [3:0] rsrc = instr[3:0];

  // ==========================================
  // 1. INSTRUCTION DECODING
  // ==========================================
  // Register-Register
  wire       is_add = (opcode == 4'b0000 && ext == 4'b0101);
  wire       is_sub = (opcode == 4'b0000 && ext == 4'b1001);
  wire       is_cmp = (opcode == 4'b0000 && ext == 4'b1011);
  wire       is_and = (opcode == 4'b0000 && ext == 4'b0001);
  wire       is_or = (opcode == 4'b0000 && ext == 4'b0010);
  wire       is_xor = (opcode == 4'b0000 && ext == 4'b0011);
  wire       is_mov = (opcode == 4'b0000 && ext == 4'b1101);

  // Immediates
  wire       is_addi = (opcode == 4'b0101);
  wire       is_subi = (opcode == 4'b1001);
  wire       is_cmpi = (opcode == 4'b1011);
  wire       is_andi = (opcode == 4'b0001);
  wire       is_ori = (opcode == 4'b0010);
  wire       is_xori = (opcode == 4'b0011);
  wire       is_movi = (opcode == 4'b1101);

  // Shifts & LUI
  wire       is_lsh = (opcode == 4'b1000 && ext == 4'b0100);
  wire       is_lshi_zext = (opcode == 4'b1000 && ext == 4'b0000);
  wire       is_lshi_sext = (opcode == 4'b1000 && ext == 4'b0001);
  wire       is_lui_op = (opcode == 4'b1111);

  // Memory & Control
  wire       is_load = (opcode == 4'b0100 && ext == 4'b0000);
  wire       is_stor = (opcode == 4'b0100 && ext == 4'b0100);
  wire       is_jcond = (opcode == 4'b0100 && ext == 4'b1100);
  wire       is_jal = (opcode == 4'b0100 && ext == 4'b1000);
  wire       is_bcond = (opcode == 4'b1100);

  // ==========================================
  // 2. PSR (Program Status Register) LOGIC
  // ==========================================
  reg        psr_z_internal = 0;
  reg        psr_n_internal = 0;
  reg        psr_f_internal = 0;
  reg psr_z_next, psr_n_next, psr_f_next;

  always @(*) begin
    if (is_cmp || is_cmpi) begin
      psr_z_next = alu_z;
      psr_n_next = alu_n;
      psr_f_next = alu_f;
    end else begin
      psr_z_next = psr_z_internal;
      psr_n_next = psr_n_internal;
      psr_f_next = psr_f_internal;
    end
  end

  always @(posedge clk) begin
    psr_z_internal <= psr_z_next;
    psr_n_internal <= psr_n_next;
    psr_f_internal <= psr_f_next;
  end

  // ==========================================
  // 3. CONDITION EVALUATION
  // ==========================================
  reg cond_met;
  always @(*) begin
    case (cond)
      4'b0000: cond_met = psr_z_internal;  // EQ
      4'b0001: cond_met = !psr_z_internal;  // NE
      4'b1101: cond_met = (psr_n_internal || psr_z_internal);  // GE
      4'b0110: cond_met = psr_n_internal;  // GT
      4'b0111: cond_met = !psr_n_internal;  // LE
      4'b1000: cond_met = psr_f_internal;  // FS
      4'b1001: cond_met = !psr_f_internal;  // FC
      4'b1100: cond_met = (!psr_n_internal && !psr_z_internal);  // LT
      4'b1110: cond_met = 1'b1;  // UC
      4'b1111: cond_met = 1'b0;  // Never Jump
      default: cond_met = 1'b0;
    endcase
  end

  // ==========================================
  // 4. REGISTER FILE ADDRESSING
  // ==========================================
  assign ra = 1 << rsrc;
  assign rb = 1 << rdest;
  assign we = (reg_write) ? (1 << rdest) : 16'h0000;

  reg flush;

  always @(posedge clk) begin
    flush <= (pc_br | pc_jmp);
  end

  // ==========================================
  // 5. MAIN CONTROL LOGIC
  // ==========================================
  always @(*) begin
    case (1'b1)
      is_add: begin
        reg_write     = 1;
        alu_sel       = 2'b00;
        alu_src_b     = 0;
        alu_src_a     = 0;
        alu_cin       = 0;
        extend        = 0;
        mem_write     = 0;
        data_out      = 4'b0010;
        pc_br         = 0;
        pc_jmp        = 0;
        shift_val_src = 0;
        is_lui        = 0;
        shift_amt_src = 0;
      end
      is_sub: begin
        reg_write     = 1;
        alu_sel       = 2'b00;
        alu_src_b     = 0;
        alu_src_a     = 0;
        alu_cin       = 1;
        extend        = 0;
        mem_write     = 0;
        data_out      = 4'b0010;
        pc_br         = 0;
        pc_jmp        = 0;
        shift_val_src = 0;
        is_lui        = 0;
        shift_amt_src = 0;
      end
      is_cmp: begin
        reg_write     = 0;
        alu_sel       = 2'b00;
        alu_src_b     = 0;
        alu_src_a     = 0;
        alu_cin       = 1;
        extend        = 0;
        mem_write     = 0;
        data_out      = 4'b0010;
        pc_br         = 0;
        pc_jmp        = 0;
        shift_val_src = 0;
        is_lui        = 0;
        shift_amt_src = 0;
      end
      is_and: begin
        reg_write     = 1;
        alu_sel       = 2'b01;
        alu_src_b     = 0;
        alu_src_a     = 0;
        alu_cin       = 0;
        extend        = 0;
        mem_write     = 0;
        data_out      = 4'b0010;
        pc_br         = 0;
        pc_jmp        = 0;
        shift_val_src = 0;
        is_lui        = 0;
        shift_amt_src = 0;
      end
      is_or: begin
        reg_write     = 1;
        alu_sel       = 2'b10;
        alu_src_b     = 0;
        alu_src_a     = 0;
        alu_cin       = 0;
        extend        = 0;
        mem_write     = 0;
        data_out      = 4'b0010;
        pc_br         = 0;
        pc_jmp        = 0;
        shift_val_src = 0;
        is_lui        = 0;
        shift_amt_src = 0;
      end
      is_xor: begin
        reg_write     = 1;
        alu_sel       = 2'b11;
        alu_src_b     = 0;
        alu_src_a     = 0;
        alu_cin       = 0;
        extend        = 0;
        mem_write     = 0;
        data_out      = 4'b0010;
        pc_br         = 0;
        pc_jmp        = 0;
        shift_val_src = 0;
        is_lui        = 0;
        shift_amt_src = 0;
      end
      is_mov: begin
        reg_write     = 1;
        alu_sel       = 2'b00;
        alu_src_b     = 0;
        alu_src_a     = 1;
        alu_cin       = 0;
        extend        = 0;
        mem_write     = 0;
        data_out      = 4'b0010;
        pc_br         = 0;
        pc_jmp        = 0;
        shift_val_src = 0;
        is_lui        = 0;
        shift_amt_src = 0;
      end

      is_addi: begin
        reg_write     = 1;
        alu_sel       = 2'b00;
        alu_src_b     = 1;
        alu_src_a     = 0;
        alu_cin       = 0;
        extend        = 1;
        mem_write     = 0;
        data_out      = 4'b0010;
        pc_br         = 0;
        pc_jmp        = 0;
        shift_val_src = 0;
        is_lui        = 0;
        shift_amt_src = 0;
      end
      is_subi: begin
        reg_write     = 1;
        alu_sel       = 2'b00;
        alu_src_b     = 1;
        alu_src_a     = 0;
        alu_cin       = 1;
        extend        = 1;
        mem_write     = 0;
        data_out      = 4'b0010;
        pc_br         = 0;
        pc_jmp        = 0;
        shift_val_src = 0;
        is_lui        = 0;
        shift_amt_src = 0;
      end
      is_cmpi: begin
        reg_write     = 0;
        alu_sel       = 2'b00;
        alu_src_b     = 1;
        alu_src_a     = 0;
        alu_cin       = 1;
        extend        = 1;
        mem_write     = 0;
        data_out      = 4'b0010;
        pc_br         = 0;
        pc_jmp        = 0;
        shift_val_src = 0;
        is_lui        = 0;
        shift_amt_src = 0;
      end
      is_andi: begin
        reg_write     = 1;
        alu_sel       = 2'b01;
        alu_src_b     = 1;
        alu_src_a     = 0;
        alu_cin       = 0;
        extend        = 0;
        mem_write     = 0;
        data_out      = 4'b0010;
        pc_br         = 0;
        pc_jmp        = 0;
        shift_val_src = 0;
        is_lui        = 0;
        shift_amt_src = 0;
      end
      is_ori: begin
        reg_write     = 1;
        alu_sel       = 2'b10;
        alu_src_b     = 1;
        alu_src_a     = 0;
        alu_cin       = 0;
        extend        = 0;
        mem_write     = 0;
        data_out      = 4'b0010;
        pc_br         = 0;
        pc_jmp        = 0;
        shift_val_src = 0;
        is_lui        = 0;
        shift_amt_src = 0;
      end
      is_xori: begin
        reg_write     = 1;
        alu_sel       = 2'b11;
        alu_src_b     = 1;
        alu_src_a     = 0;
        alu_cin       = 0;
        extend        = 0;
        mem_write     = 0;
        data_out      = 4'b0010;
        pc_br         = 0;
        pc_jmp        = 0;
        shift_val_src = 0;
        is_lui        = 0;
        shift_amt_src = 0;
      end
      is_movi: begin
        reg_write     = 1;
        alu_sel       = 2'b00;
        alu_src_b     = 1;
        alu_src_a     = 1;
        alu_cin       = 0;
        extend        = 0;
        mem_write     = 0;
        data_out      = 4'b0010;
        pc_br         = 0;
        pc_jmp        = 0;
        shift_val_src = 0;
        is_lui        = 0;
        shift_amt_src = 0;
      end

      is_lsh: begin
        reg_write     = 1;
        alu_sel       = 2'b00;
        alu_src_b     = 0;
        alu_src_a     = 0;
        alu_cin       = 0;
        extend        = 0;
        mem_write     = 0;
        data_out      = 4'b0100;
        pc_br         = 0;
        pc_jmp        = 0;
        shift_val_src = 0;
        is_lui        = 0;
        shift_amt_src = 0;
      end
      is_lshi_zext: begin
        reg_write     = 1;
        alu_sel       = 2'b00;
        alu_src_b     = 0;
        alu_src_a     = 0;
        alu_cin       = 0;
        extend        = 0;
        mem_write     = 0;
        data_out      = 4'b0100;
        pc_br         = 0;
        pc_jmp        = 0;
        shift_val_src = 0;
        is_lui        = 0;
        shift_amt_src = 1;
      end
      is_lshi_sext: begin
        reg_write     = 1;
        alu_sel       = 2'b00;
        alu_src_b     = 0;
        alu_src_a     = 0;
        alu_cin       = 0;
        extend        = 1;
        mem_write     = 0;
        data_out      = 4'b0100;
        pc_br         = 0;
        pc_jmp        = 0;
        shift_val_src = 0;
        is_lui        = 0;
        shift_amt_src = 1;
      end

      is_lui_op: begin
        reg_write     = 1;
        alu_sel       = 2'b00;
        alu_src_b     = 0;
        alu_src_a     = 0;
        alu_cin       = 0;
        extend        = 0;
        mem_write     = 0;
        data_out      = 4'b0100;
        pc_br         = 0;
        pc_jmp        = 0;
        shift_val_src = 1;
        is_lui        = 1;
        shift_amt_src = 1;
      end

      is_load: begin
        reg_write     = 1;
        alu_sel       = 2'b00;
        alu_src_b     = 0;
        alu_src_a     = 0;
        alu_cin       = 0;
        extend        = 0;
        mem_write     = 0;
        data_out      = 4'b0001;
        pc_br         = 0;
        pc_jmp        = 0;
        shift_val_src = 0;
        is_lui        = 0;
        shift_amt_src = 0;
      end
      is_stor: begin
        reg_write     = 0;
        alu_sel       = 2'b00;
        alu_src_b     = 0;
        alu_src_a     = 0;
        alu_cin       = 0;
        extend        = 0;
        mem_write     = 1;
        data_out      = 4'b0010;
        pc_br         = 0;
        pc_jmp        = 0;
        shift_val_src = 0;
        is_lui        = 0;
        shift_amt_src = 0;
      end

      is_jcond: begin
        reg_write     = 0;
        alu_sel       = 2'b00;
        alu_src_b     = 0;
        alu_src_a     = 0;
        alu_cin       = 0;
        extend        = 0;
        mem_write     = 0;
        data_out      = 4'b0010;
        pc_br         = 0;
        pc_jmp        = cond_met;
        shift_val_src = 0;
        is_lui        = 0;
        shift_amt_src = 0;
      end
      is_jal: begin
        reg_write     = 1;
        alu_sel       = 2'b00;
        alu_src_b     = 0;
        alu_src_a     = 0;
        alu_cin       = 0;
        extend        = 0;
        mem_write     = 0;
        data_out      = 4'b1000;
        pc_br         = 0;
        pc_jmp        = 1;
        shift_val_src = 0;
        is_lui        = 0;
        shift_amt_src = 0;
      end
      is_bcond: begin
        reg_write     = 0;
        alu_sel       = 2'b00;
        alu_src_b     = 0;
        alu_src_a     = 0;
        alu_cin       = 0;
        extend        = 0;
        mem_write     = 0;
        data_out      = 4'b0010;
        pc_br         = cond_met;
        pc_jmp        = 0;
        shift_val_src = 0;
        is_lui        = 0;
        shift_amt_src = 0;
      end

      default: begin
        reg_write     = 0;
        alu_sel       = 2'b00;
        alu_src_b     = 0;
        alu_src_a     = 0;
        alu_cin       = 0;
        extend        = 0;
        mem_write     = 0;
        data_out      = 4'b0010;
        pc_br         = 0;
        pc_jmp        = 0;
        shift_val_src = 0;
        is_lui        = 0;
        shift_amt_src = 0;
      end
    endcase

    if (flush) begin
      reg_write = 0;
      mem_write = 0;
      pc_br     = 0;
      pc_jmp    = 0;
    end
  end
endmodule
