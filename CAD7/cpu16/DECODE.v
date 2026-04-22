// ENGN1600 Baseline RISC Processor
// Anhang Li (anhangli@umich.edu)
// -----

module decode16 (
    input  wire [15:0] instr,
    output reg         valid,
    output reg         use_imm,
    output reg         imm_zero_ext,
    output reg         rf_we,
    output reg         flag_we,
    output reg         is_load,
    output reg         is_store,
    output reg         is_branch,
    output reg         is_jump,
    output reg         is_jal,
    output reg         is_shift,
    output reg         shift_is_imm,
    output reg         shift_is_right,
    output reg         is_lui,
    output reg         is_mov,
    output reg         is_sub,
    output reg         is_cmp,
    output reg  [1:0]  alu_sel,
    output wire [3:0]  rd_idx,
    output wire [3:0]  rs_idx,
    output wire [3:0]  cond,
    output wire [7:0]  imm8
);

    wire [3:0] op   = instr[15:12];
    wire [3:0] mid  = instr[11:8];
    wire [3:0] sub  = instr[7:4];
    wire [3:0] low  = instr[3:0];

    assign rd_idx = mid;
    assign rs_idx = low;
    assign cond   = mid;
    assign imm8   = instr[7:0];

    always @* begin
        valid          = 1'b1;
        use_imm        = 1'b0;
        imm_zero_ext   = 1'b0;
        rf_we          = 1'b0;
        flag_we        = 1'b0;
        is_load        = 1'b0;
        is_store       = 1'b0;
        is_branch      = 1'b0;
        is_jump        = 1'b0;
        is_jal         = 1'b0;
        is_shift       = 1'b0;
        shift_is_imm   = 1'b0;
        shift_is_right = 1'b0;
        is_lui         = 1'b0;
        is_mov         = 1'b0;
        is_sub         = 1'b0;
        is_cmp         = 1'b0;
        alu_sel        = 2'b10; // OR, gives NOP for OR R0,R0

        case (op)
            4'h0: begin
                case (sub)
                    4'h1: begin rf_we = 1'b1; alu_sel = 2'b01; end // AND
                    4'h2: begin rf_we = 1'b1; alu_sel = 2'b10; end // OR
                    4'h3: begin rf_we = 1'b1; alu_sel = 2'b11; end // XOR
                    4'h5: begin rf_we = 1'b1; flag_we = 1'b1; alu_sel = 2'b00; end // ADD
                    4'h9: begin rf_we = 1'b1; flag_we = 1'b1; is_sub = 1'b1; end   // SUB (2-cycle)
                    4'hB: begin flag_we = 1'b1; is_cmp = 1'b1; end                  // CMP (2-cycle)
                    4'hD: begin rf_we = 1'b1; is_mov = 1'b1; end                    // MOV
                    default: valid = 1'b0;
                endcase
            end

            4'h1: begin rf_we = 1'b1; use_imm = 1'b1; imm_zero_ext = 1'b1; alu_sel = 2'b01; end // ANDI
            4'h2: begin rf_we = 1'b1; use_imm = 1'b1; imm_zero_ext = 1'b1; alu_sel = 2'b10; end // ORI
            4'h3: begin rf_we = 1'b1; use_imm = 1'b1; imm_zero_ext = 1'b1; alu_sel = 2'b11; end // XORI
            4'h4: begin
                case (sub)
                    4'h0: begin rf_we = 1'b1; is_load  = 1'b1; end
                    4'h4: begin           is_store = 1'b1; end
                    4'h8: begin rf_we = 1'b1; is_jump  = 1'b1; is_jal = 1'b1; end
                    4'hC: begin           is_jump  = 1'b1; end
                    default: valid = 1'b0;
                endcase
            end
            4'h5: begin rf_we = 1'b1; flag_we = 1'b1; use_imm = 1'b1; alu_sel = 2'b00; end // ADDI
            4'h8: begin
                rf_we = 1'b1;
                is_shift = 1'b1;
                if (sub == 4'h4) begin
                    shift_is_imm = 1'b0; // LSH reg
                end else if (sub[3:1] == 3'b000) begin
                    shift_is_imm   = 1'b1; // LSHI
                    shift_is_right = sub[0];
                end else begin
                    valid = 1'b0;
                end
            end
            4'h9: begin rf_we = 1'b1; flag_we = 1'b1; use_imm = 1'b1; is_sub = 1'b1; end // SUBI
            4'hB: begin flag_we = 1'b1; use_imm = 1'b1; is_cmp = 1'b1; end                  // CMPI
            4'hC: begin is_branch = 1'b1; end
            4'hD: begin rf_we = 1'b1; use_imm = 1'b1; imm_zero_ext = 1'b1; is_mov = 1'b1; end // MOVI
            4'hF: begin rf_we = 1'b1; is_lui = 1'b1; end
            default: valid = 1'b0;
        endcase
    end
endmodule
