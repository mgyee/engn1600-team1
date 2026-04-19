module Control (
    input [15:0] instr,  // Full 16-bit instruction word
    input        psr_z,  // Zero flag from PSR
    input        psr_n,  // Negative flag from PSR
    input        psr_f,  // Lower than flag from PSR

    // Outputs to Register File
    output reg       reg_write,
    output     [3:0] rd,         // For your WE[15..0] decoder
    output     [3:0] ra,         // Port A (RA)
    output     [3:0] rb,         // Port B (RB)

    // Outputs to ALU & Shifter
    output reg [1:0] alu_sel,  // Map to your 2-bit SEL
    output reg       alu_src,  // 0: Reg, 1: Immediate
    output reg       shf_en,
    output     [7:0] imm,

    // Memory Signals
    output reg mem_read,
    output reg mem_write,
    output reg mem_to_reg,

    // Outputs to PC
    output reg pc_br,  // For Branch
    output reg pc_jmp  // For Jump
);

  wire [3:0] opcode = instr[15:12];
  wire [3:0] rdest = instr[11:8];
  wire [3:0] ext = instr[7:4];
  wire [3:0] rsrc = instr[3:0];


  assign rd  = rdest;
  assign ra  = rdest;
  assign rb  = rsrc;
  assign imm = instr[7:0];

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
    alu_src = 0;
    shf_en = 0;
    mem_read = 0;
    mem_write = 0;
    mem_to_reg = 0;
    pc_br = 0;
    pc_jmp = 0;

    case (opcode)
      4'b0000: begin  // Register
        reg_write = 1;
        alu_src   = 0;
        case (ext)
          4'b0101: alu_sel = 2'b00;  // ADD
          4'b1001: alu_sel = 2'b00;  // SUB
          4'b1011: begin  // CMP (Subtract but no writeback)
            reg_write = 0;
            alu_sel   = 2'b01;
          end
          4'b0001: alu_sel = 2'b10;  // AND
          4'b0010: alu_sel = 2'b11;  // OR
          4'b0011: ;  // XOR
          4'b1101: ;  // MOV
        endcase
      end

      4'b0101: begin  // ADDI
        reg_write = 1;
        alu_src   = 1;
        alu_sel   = 2'b00;
      end

      4'b1001: begin  // SUBI
        reg_write = 1;
        alu_src   = 1;
        alu_sel   = 2'b01;
      end

      4'b1101: begin  // CMPI
      end

      4'b0001: begin  // ANDI
        // Zero extend imm
      end

      4'b0010: begin  // ORI
        // Zero extend imm
      end

      4'b0011: begin  // XORI
        // Zero extend imm
      end

      4'b1011: begin  // MOVI
        // Zero extend imm
      end

      4'b1000: begin  // SHIFT
        case (ext)
          4'b0100: ;  // LSH
          4'b0000: ;  // LSHI 0 extend?
          4'b0001: ;  // LSHI 2s comp extend
        endcase
      end

      4'b1111: ;  // LUI


      4'b0100: begin
        case (ext)
          4'b0000: begin  // LOAD
            reg_write  = 1;
            mem_read   = 1;
            mem_to_reg = 1;
          end
          4'b0100: begin  // STOR
            mem_write = 1;
          end
          4'b1100: begin  // JCOND
            if (cond_met) pc_jmp = 1;
          end
          4'b1000: pc_jmp = 1;  // JAL
        endcase
      end

      4'b1100: begin  // Bcond
        if (cond_met) pc_br = 1;
      end

    endcase
  end
endmodule
