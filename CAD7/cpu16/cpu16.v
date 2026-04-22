// ENGN1600 Baseline RISC Processor
// Anhang Li (anhangli@umich.edu)
// -----

module cpu16 #(
    parameter IMEM_FILE = "",
    parameter DMEM_FILE = ""
) (
    input  wire        clk,
    input  wire        rst,
    output wire [15:0] dbg_pc,
    output wire [15:0] dbg_ir_x,
    output wire [4:0]  dbg_flags
);
    localparam [15:0] NOP = 16'h0020; // OR R0,R0

    function automatic [15:0] idx_to_1hot;
        input [3:0] idx;
        begin
            idx_to_1hot = 16'h0001 << idx;
        end
    endfunction

    function automatic [15:0] bit_reverse16;
        input [15:0] x;
        integer i;
        begin
            for (i = 0; i < 16; i = i + 1)
                bit_reverse16[i] = x[15-i];
        end
    endfunction

    function automatic [20:0] alu_eval;
        input [15:0] A;
        input [15:0] B;
        input [1:0]  sel;
        input        cin;
        reg [15:0] Y;
        reg [16:0] tmp;
        reg        c15;
        reg        c16;
        reg        F;
        reg        N;
        reg        raw_less;
        reg        L;
        reg        Z;
        begin
            Y   = 16'h0000;
            tmp = 17'h00000;
            c15 = 1'b0;
            c16 = 1'b0;
            raw_less = 1'b0;
            L = 1'b0;

            case (sel)
                2'b00: begin
                    tmp = {1'b0, A} + {1'b0, B} + cin;
                    Y   = tmp[15:0];
                    c15 = ({1'b0, A[14:0]} + {1'b0, B[14:0]} + cin) >> 15;
                    c16 = tmp[16];
                end
                2'b01: Y = A & B;
                2'b10: Y = A | B;
                2'b11: Y = A ^ B;
            endcase

            F = (sel == 2'b00) ? (c15 ^ c16) : 1'b0;
            Z = (Y == 16'h0000);
            raw_less = (sel == 2'b00) ? (Y[15] ^ c16 ^ c15) : 1'b0;
            N = (sel == 2'b00) ? (~raw_less & ~Z) : 1'b0;
            L = (sel == 2'b00) ? (c16 & ~Z) : 1'b0;
            alu_eval = {F, N, L, c15, Z, Y};
        end
    endfunction

    function automatic cond_true;
        input [3:0] cond;
        input       F;
        input       N;
        input       L;
        input       C;
        input       Z;
        begin
            case (cond)
                4'h0: cond_true =  Z;
                4'h1: cond_true = ~Z;
                4'h2: cond_true =  C;
                4'h3: cond_true = ~C;
                4'h4: cond_true =  L;
                4'h5: cond_true = ~L;
                4'h6: cond_true =  N;
                4'h7: cond_true = ~N;
                4'h8: cond_true =  F;
                4'h9: cond_true = ~F;
                4'hA: cond_true = ~L & ~Z;
                4'hB: cond_true =  L |  Z;
                4'hC: cond_true = ~N & ~Z;
                4'hD: cond_true =  N |  Z;
                4'hE: cond_true = 1'b1;
                default: cond_true = 1'b0;
            endcase
        end
    endfunction

    // -----------------------------------------------------------------
    // FETCH stage
    // -----------------------------------------------------------------
    wire [15:0] pc_f;
    wire [15:0] imem_data;
    reg         pc_stall;
    reg         branch_taken;
    reg         jump_taken;
    reg  [15:0] jump_target;

    pc u_pc (
        .clk        (clk),
        .rst        (rst),
        .stall      (pc_stall),
        .branch_en  (branch_taken),
        .jump_en    (jump_taken),
        .jump_target(jump_target),
        .disp       (8'h00),
        .pc         (pc_f)
    );

    imem16 #(.MEMFILE(IMEM_FILE)) u_imem (
        .addr(pc_f),
        .data(imem_data)
    );

    reg [15:0] ir_x;
    reg [15:0] pc_x;
    reg [15:0] pc_x_plus1;

    // -----------------------------------------------------------------
    // DECODE of EX-stage instruction
    // -----------------------------------------------------------------
    wire        dec_valid;
    wire        dec_use_imm;
    wire        dec_imm_zero_ext;
    wire        dec_rf_we;
    wire        dec_flag_we;
    wire        dec_is_load;
    wire        dec_is_store;
    wire        dec_is_branch;
    wire        dec_is_jump;
    wire        dec_is_jal;
    wire        dec_is_shift;
    wire        dec_shift_is_imm;
    wire        dec_shift_is_right;
    wire        dec_is_lui;
    wire        dec_is_mov;
    wire        dec_is_sub;
    wire        dec_is_cmp;
    wire [1:0]  dec_alu_sel;
    wire [3:0]  dec_rd_idx;
    wire [3:0]  dec_rs_idx;
    wire [3:0]  dec_cond;
    wire [7:0]  dec_imm8;

    decode16 u_decode (
        .instr         (ir_x),
        .valid         (dec_valid),
        .use_imm       (dec_use_imm),
        .imm_zero_ext  (dec_imm_zero_ext),
        .rf_we         (dec_rf_we),
        .flag_we       (dec_flag_we),
        .is_load       (dec_is_load),
        .is_store      (dec_is_store),
        .is_branch     (dec_is_branch),
        .is_jump       (dec_is_jump),
        .is_jal        (dec_is_jal),
        .is_shift      (dec_is_shift),
        .shift_is_imm  (dec_shift_is_imm),
        .shift_is_right(dec_shift_is_right),
        .is_lui        (dec_is_lui),
        .is_mov        (dec_is_mov),
        .is_sub        (dec_is_sub),
        .is_cmp        (dec_is_cmp),
        .alu_sel       (dec_alu_sel),
        .rd_idx        (dec_rd_idx),
        .rs_idx        (dec_rs_idx),
        .cond          (dec_cond),
        .imm8          (dec_imm8)
    );

    wire [15:0] imm_ext = dec_imm_zero_ext ? {8'h00, dec_imm8} : {{8{dec_imm8[7]}}, dec_imm8};

    // -----------------------------------------------------------------
    // Register file
    // -----------------------------------------------------------------
    wire [15:0] rf_read_a_oh = idx_to_1hot(dec_rd_idx);
    wire [15:0] rf_read_b_oh = idx_to_1hot(dec_rs_idx);
    wire        wb_we;
    wire [3:0]  wb_rd_idx;
    wire [15:0] wb_data;
    wire [15:0] rf_qa;
    wire [15:0] rf_qb;

    rf_16x16_1w2r_ms u_rf (
        .clk       (clk),
        .we_master (wb_we),
        .d         (wb_data),
        .we_word   (idx_to_1hot(wb_rd_idx) & {16{wb_we}}),
        .read_a    (rf_read_a_oh),
        .read_b    (rf_read_b_oh),
        .qa        (rf_qa),
        .qb        (rf_qb)
    );

    // -----------------------------------------------------------------
    // Datapath helpers
    // -----------------------------------------------------------------
    reg  [15:0] alu_A;
    reg  [15:0] alu_B;
    reg  [1:0]  alu_sel;
    reg         alu_cin;
    wire [15:0] alu_Y;
    wire        alu_F, alu_Z, alu_N, alu_C15, alu_C16;

    alu16 u_alu (
        .A   (alu_A),
        .B   (alu_B),
        .sel (alu_sel),
        .cin (alu_cin),
        .Y   (alu_Y),
        .F   (alu_F),
        .Z   (alu_Z),
        .N   (alu_N),
        .C15 (alu_C15),
        .C16 (alu_C16)
    );

    reg  [3:0]  shamt;
    wire [15:0] sh_left;
    wire [15:0] sh_right;

    shifter u_shl (
        .data_in (rf_qa),
        .shamt   (shamt),
        .data_out(sh_left)
    );

    shifter u_shr (
        .data_in (bit_reverse16(rf_qa)),
        .shamt   (shamt),
        .data_out(sh_right)
    );

    wire [15:0] shift_right_res = bit_reverse16(sh_right);

    reg         dmem_we;
    reg  [15:0] dmem_addr;
    reg  [15:0] dmem_wdata;
    wire [15:0] dmem_rdata;

    dmem16 #(.MEMFILE(DMEM_FILE)) u_dmem (
        .clk  (clk),
        .we   (dmem_we),
        .addr (dmem_addr),
        .wdata(dmem_wdata),
        .rdata(dmem_rdata)
    );

    // -----------------------------------------------------------------
    // Flags {F, N, L, C, Z}
    // N and L are normalized to the ISA condition map for signed/unsigned
    // strict greater-than predicates after ADD/SUB/CMP-style operations.
    // C is taken from C15 because the supplied ALU exposes both C15/C16.
    // -----------------------------------------------------------------
    reg flag_F, flag_N, flag_L, flag_C, flag_Z;
    reg [4:0] next_flags;

    // -----------------------------------------------------------------
    // SUB/CMP extra cycle state
    // -----------------------------------------------------------------
    reg        subcmp_busy;
    reg        subcmp_is_cmp;
    reg [3:0]  subcmp_rd_idx;
    reg [15:0] subcmp_a_saved;
    reg [15:0] subcmp_binv_saved;

    reg [15:0] ex_result;
    reg        ex_rf_we;
    reg [3:0]  ex_rd_idx;
    reg        ex_flag_we;
    reg        ex_valid;

    wire branch_cond_met = cond_true(dec_cond, flag_F, flag_N, flag_L, flag_C, flag_Z);

    always @* begin : comb_execute
        reg        pc_stall_v;
        reg        branch_taken_v;
        reg        jump_taken_v;
        reg [15:0] jump_target_v;
        reg [15:0] alu_A_v;
        reg [15:0] alu_B_v;
        reg [1:0]  alu_sel_v;
        reg        alu_cin_v;
        reg [3:0]  shamt_v;
        reg        dmem_we_v;
        reg [15:0] dmem_addr_v;
        reg [15:0] dmem_wdata_v;
        reg [15:0] ex_result_v;
        reg        ex_rf_we_v;
        reg [3:0]  ex_rd_idx_v;
        reg        ex_flag_we_v;
        reg        ex_valid_v;
        reg [4:0]  next_flags_v;
        reg [20:0] alu_eval_v;

        pc_stall_v     = 1'b0;
        branch_taken_v = 1'b0;
        jump_taken_v   = 1'b0;
        jump_target_v  = 16'h0000;

        alu_A_v        = 16'h0000;
        alu_B_v        = 16'h0000;
        alu_sel_v      = 2'b00;
        alu_cin_v      = 1'b0;
        shamt_v        = 4'h0;

        dmem_we_v      = 1'b0;
        dmem_addr_v    = rf_qb;
        dmem_wdata_v   = rf_qa;

        ex_result_v    = 16'h0000;
        ex_rf_we_v     = 1'b0;
        ex_rd_idx_v    = dec_rd_idx;
        ex_flag_we_v   = 1'b0;
        ex_valid_v     = 1'b0;
        next_flags_v   = {flag_F, flag_N, flag_L, flag_C, flag_Z};
        alu_eval_v     = alu_eval(16'h0000, 16'h0000, 2'b00, 1'b0);

        if (!rst && subcmp_busy) begin
            ex_valid_v   = 1'b1;
            pc_stall_v   = 1'b1;
            alu_A_v      = subcmp_a_saved;
            alu_B_v      = subcmp_binv_saved;
            alu_sel_v    = 2'b00;
            alu_cin_v    = 1'b1;
            alu_eval_v   = alu_eval(alu_A_v, alu_B_v, alu_sel_v, alu_cin_v);
            ex_result_v  = alu_eval_v[15:0];
            ex_rf_we_v   = ~subcmp_is_cmp;
            ex_rd_idx_v  = subcmp_rd_idx;
            ex_flag_we_v = 1'b1;
            next_flags_v = alu_eval_v[20:16];
        end else if (!rst && dec_valid) begin
            ex_valid_v = 1'b1;
            if (dec_is_load) begin
                dmem_addr_v = rf_qb;
                ex_result_v = dmem_rdata;
                ex_rf_we_v  = 1'b1;
            end else if (dec_is_store) begin
                dmem_addr_v  = rf_qb;
                dmem_wdata_v = rf_qa;
                dmem_we_v    = 1'b1;
            end else if (dec_is_lui) begin
                ex_result_v = {dec_imm8, 8'h00};
                ex_rf_we_v  = 1'b1;
            end else if (dec_is_mov) begin
                ex_result_v = dec_use_imm ? {8'h00, dec_imm8} : rf_qb;
                ex_rf_we_v  = 1'b1;
            end else if (dec_is_shift) begin
                if (dec_shift_is_imm) begin
                    shamt_v = dec_imm8[3:0];
                end else if (rf_qb[3]) begin
                    shamt_v = (~rf_qb[3:0]) + 4'd1;
                end else begin
                    shamt_v = rf_qb[3:0];
                end
                ex_result_v = (dec_shift_is_imm ? dec_shift_is_right : rf_qb[3]) ? shift_right_res : sh_left;
                ex_rf_we_v  = 1'b1;
            end else if (dec_is_branch) begin
                if (branch_cond_met) begin
                    jump_taken_v  = 1'b1;
                    jump_target_v = pc_x_plus1 + {{8{dec_imm8[7]}}, dec_imm8};
                end
            end else if (dec_is_jump) begin
                if (dec_is_jal || branch_cond_met) begin
                    jump_taken_v  = 1'b1;
                    jump_target_v = rf_qb;
                    if (dec_is_jal) begin
                        ex_result_v = pc_x_plus1;
                        ex_rf_we_v  = 1'b1;
                    end
                end
            end else if (dec_is_sub || dec_is_cmp) begin
                pc_stall_v  = 1'b1;
                alu_A_v     = dec_use_imm ? imm_ext : rf_qb;
                alu_B_v     = 16'hFFFF;
                alu_sel_v   = 2'b11;
                alu_cin_v   = 1'b0;
                ex_valid_v  = 1'b0;
            end else begin
                alu_A_v      = rf_qa;
                alu_B_v      = dec_use_imm ? imm_ext : rf_qb;
                alu_sel_v    = dec_alu_sel;
                alu_eval_v   = alu_eval(alu_A_v, alu_B_v, alu_sel_v, alu_cin_v);
                ex_result_v  = alu_eval_v[15:0];
                ex_rf_we_v   = dec_rf_we;
                ex_flag_we_v = dec_flag_we;
                if (dec_flag_we)
                    next_flags_v = alu_eval_v[20:16];
            end
        end

        pc_stall     = pc_stall_v;
        branch_taken = branch_taken_v;
        jump_taken   = jump_taken_v;
        jump_target  = jump_target_v;

        alu_A        = alu_A_v;
        alu_B        = alu_B_v;
        alu_sel      = alu_sel_v;
        alu_cin      = alu_cin_v;
        shamt        = shamt_v;

        dmem_we      = dmem_we_v;
        dmem_addr    = dmem_addr_v;
        dmem_wdata   = dmem_wdata_v;

        ex_result    = ex_result_v;
        ex_rf_we     = ex_rf_we_v;
        ex_rd_idx    = ex_rd_idx_v;
        ex_flag_we   = ex_flag_we_v;
        ex_valid     = ex_valid_v;
        next_flags   = next_flags_v;
    end

    assign wb_we     = ex_valid && ex_rf_we;
    assign wb_rd_idx = ex_rd_idx;
    assign wb_data   = ex_result;

    always @(posedge clk) begin
        if (rst) begin
            ir_x             <= NOP;
            pc_x             <= 16'h0000;
            pc_x_plus1       <= 16'h0001;
            subcmp_busy      <= 1'b0;
            subcmp_is_cmp    <= 1'b0;
            subcmp_rd_idx    <= 4'h0;
            subcmp_a_saved   <= 16'h0000;
            subcmp_binv_saved<= 16'h0000;
            flag_F           <= 1'b0;
            flag_N           <= 1'b0;
            flag_L           <= 1'b0;
            flag_C           <= 1'b0;
            flag_Z           <= 1'b0;
        end else begin
            if (ex_valid && ex_flag_we)
                {flag_F, flag_N, flag_L, flag_C, flag_Z} <= next_flags;

            if (subcmp_busy) begin
                subcmp_busy <= 1'b0;
            end else if (dec_valid && (dec_is_sub || dec_is_cmp)) begin
                subcmp_busy       <= 1'b1;
                subcmp_is_cmp     <= dec_is_cmp;
                subcmp_rd_idx     <= dec_rd_idx;
                subcmp_a_saved    <= rf_qa;
                subcmp_binv_saved <= (dec_use_imm ? imm_ext : rf_qb) ^ 16'hFFFF;
            end

            if (subcmp_busy) begin
                ir_x       <= NOP;
                pc_x       <= pc_f;
                pc_x_plus1 <= pc_f + 16'd1;
            end else if (pc_stall) begin
                ir_x       <= ir_x;
                pc_x       <= pc_x;
                pc_x_plus1 <= pc_x_plus1;
            end else if (branch_taken || jump_taken) begin
                ir_x       <= NOP;
                pc_x       <= pc_f;
                pc_x_plus1 <= pc_f + 16'd1;
            end else begin
                ir_x       <= imem_data;
                pc_x       <= pc_f;
                pc_x_plus1 <= pc_f + 16'd1;
            end
        end
    end

    assign dbg_pc    = pc_f;
    assign dbg_ir_x  = ir_x;
    assign dbg_flags = {flag_F, flag_N, flag_L, flag_C, flag_Z};
endmodule
