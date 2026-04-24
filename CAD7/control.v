module control (
    input [15:0] instr,


    input reg psr_z,
    input reg psr_n,
    input reg psr_f,

    // Register File
    output reg        reg_write,
    output     [15:0] ra,
    output     [15:0] rb,
    output     [15:0] we,

    // ALU
    output reg [1:0] alu_sel,    // 00: ADD, 01: AND, 10: OR, 11: XOR
    output reg       alu_src_b,  // 0: Reg, 1: Immediate
    output reg       alu_src_a,  // 0: Reg, 1: Imm 0 (used for MOV)
    output reg       cin,        // 1 for sub/cmp, 0 otherwise

    // Imm Gen
    output reg extend,  // 0: zero extend, 1: sign extend

    // Shift
    output reg shift_val_src,  // 0: reg, 1: imm
    output reg is_lui,  // 0: shift amt 8, 1: shift amt imm
    output reg shift_amt_src,  // 0: reg, 1: imm

    // Memory Signals
    output reg mem_write,

    output reg [3:0] data_out,  // 0001: Mem, 0010: ALU, 0100: Shifter, 1000: PC


    // Outputs to PC
    output reg pc_br,  // For Branch
    output reg pc_jmp  // For Jump
);

  wire [3:0] opcode = instr[15:12];
  wire [3:0] rdest = instr[11:8];
  wire [3:0] ext = instr[7:4];
  wire [3:0] rsrc = instr[3:0];


  assign ra   = 1 << rsrc;
  assign rb   = 1 << rdest;
  assign we   = (1 & reg_write) << rdest;

  reg cond_met;
  always @(*) begin
    case (cond)
      4'b0000: cond_met = psr_z;  // EQ
      4'b0001: cond_met = !psr_z;  // NE
      4'b1101: cond_met = (psr_n || psr_z);  // GE
      4'b0010: cond_met = psr_c;  // CS
      4'b0011: cond_met = !psr_c;  // CC
      // 4'b0100: cond_met = psr_l;  // HI
      // 4'b0101: cond_met = !psr_l;  // LS
      // 4'b1010: cond_met = (!psr_l && !psr_z);  // LO
      // 4'b1011: cond_met = (psr_l || psr_z);  // HS
      4'b0110: cond_met = psr_n;  // GT
      4'b0111: cond_met = !psr_n;  // LE
      4'b1000: cond_met = psr_f;  // FS
      4'b1001: cond_met = !psr_f;  // FC
      4'b1100: cond_met = (!psr_n && !psr_z);  // LT
      4'b1110: cond_met = 1'b1;  // UC
      4'b1111: cond_met = 1'b0;  // Never Jump
      default: cond_met = 1'b0;
    endcase
  end

  always @(*) begin
    reg_write = 0;
    alu_sel = 2'b00;
    alu_src_b = 0;
    alu_src_a = 0;
    cin = 0;
    extend = 0;
    mem_write = 0;
    data_out = 4'b0010;
    pc_br = 0;
    pc_jmp = 0;
    shift_val_src = 0;
    shift_amt_src = 0;

    case (opcode)
      4'b0000: begin  // Register
        reg_write = 1;
        alu_src_b = 0;
        alu_src_a = 0;
        cin = 0;
        extend = 0;
        mem_write = 0;
        data_out = 4'b0010;

        case (ext)
          4'b0101: alu_sel = 2'b00;  // ADD
          4'b1001: begin
            alu_sel = 2'b00;  // SUB
            cin = 1;
          end
          4'b1011: begin  // CMP (Subtract but no writeback)
            reg_write = 0;
            alu_sel = 2'b00;
            cin = 1;
          end
          4'b0001: alu_sel = 2'b01;  // AND
          4'b0010: alu_sel = 2'b10;  // OR
          4'b0011: alu_sel = 2'b11;  // XOR
          4'b1101: begin
            alu_sel   = 2'b00;  // MOV
            alu_src_a = 1;
          end
        endcase
      end

      4'b0101: begin  // ADDI
        reg_write = 1;
        alu_src_b = 1;
        alu_src_a = 0;
        alu_sel = 2'b00;
        cin = 0;
        extend = 1;
        mem_write = 0;
        data_out = 4'b0010;
      end

      4'b1001: begin  // SUBI
        reg_write = 1;
        alu_src_b = 1;
        alu_src_a = 0;
        alu_sel = 2'b00;
        cin = 1;
        extend = 1;
        mem_write = 0;
        data_out = 4'b0010;
      end

      4'b1101: begin  // CMPI
        reg_write = 0;
        alu_src_b = 1;
        alu_src_a = 0;
        alu_sel = 2'b00;
        cin = 1;
        extend = 1;
        mem_write = 0;
        data_out = 4'b0010;
      end

      4'b0001: begin  // ANDI
        reg_write = 1;
        alu_src_b = 1;
        alu_src_a = 0;
        alu_sel = 2'b01;
        cin = 0;
        extend = 0;
        mem_write = 0;
        data_out = 4'b0010;
      end

      4'b0010: begin  // ORI
        reg_write = 1;
        alu_src_b = 1;
        alu_src_a = 0;
        alu_sel = 2'b10;
        cin = 0;
        extend = 0;
        mem_write = 0;
        data_out = 4'b0010;
      end

      4'b0011: begin  // XORI
        reg_write = 1;
        alu_src_b = 1;
        alu_src_a = 0;
        alu_sel = 2'b11;
        cin = 0;
        extend = 0;
        mem_write = 0;
        data_out = 4'b0010;
      end

      4'b1011: begin  // MOVI
        reg_write = 1;
        alu_src_b = 1;
        alu_src_a = 1;
        alu_sel = 2'b00;
        cin = 0;
        extend = 0;
        mem_write = 0;
        data_out = 4'b0010;
      end

      4'b1000: begin  // SHIFT
        reg_write = 1;
        mem_write = 0;
        data_out  = 4'b0100;
        case (ext)
          4'b0100: begin  // LSH
            shift_val_src = 0;
            is_lui = 0;
            shift_amt_src = 0;
          end
          4'b0000: begin  // LSHI 0 extend?
            extend = 0;
            shift_val_src = 0;
            is_lui = 0;
            shift_amt_src = 1;
          end
          4'b0001: begin  // LSHI 2s comp extend
            extend = 1;
            shift_val_src = 0;
            is_lui = 0;
            shift_amt_src = 1;
          end
        endcase
      end

      4'b1111: begin  // LUI
        reg_write = 1;
        mem_write = 0;
        data_out = 4'b0100;
        extend = 0;
        shift_val_src = 1;
        is_lui = 1;
        shift_amt_src = 1;
      end


      4'b0100: begin
        case (ext)
          4'b0000: begin  // LOAD
            reg_write = 1;
            data_out  = 4'b0001;
          end
          4'b0100: begin  // STOR
            reg_write = 0;
            mem_write = 1;
          end
          4'b1100: begin  // JCOND
            if (cond_met) pc_jmp = 1;
          end
          4'b1000: begin
            pc_jmp = 1;  // JAL
            reg_write = 1;
            data_out = 4'b1000;
          end
        endcase
      end

      4'b1100: begin  // Bcond
        if (cond_met) pc_br = 1;
      end

    endcase
  end
endmodule
