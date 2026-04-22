// ENGN1600 Baseline RISC Processor
// Anhang Li (anhangli@umich.edu)
// -----

module pc (
    input  wire        clk,
    input  wire        rst,

    // Control
    input  wire        stall,
    input  wire        branch_en,
    input  wire        jump_en,

    // Data inputs
    input  wire [15:0] jump_target,
    input  wire [7:0]  disp,

    // Output
    output reg  [15:0] pc
);

    // Fixed reset address (change if needed)
    localparam [15:0] RESET_PC = 16'h0000;

    // PC + 1
    wire [15:0] pc_plus_1 = pc + 16'd1;

    // Sign-extend displacement
    wire [15:0] disp_sext = {{8{disp[7]}}, disp};

    // Branch target: (PC + 1) + disp
    wire [15:0] branch_target = pc_plus_1 + disp_sext;

    // Next PC logic (priority encoded)
    wire [15:0] pc_next =
        stall      ? pc :
        jump_en    ? jump_target :
        branch_en  ? branch_target :
                     pc_plus_1;

    always @(posedge clk) begin
        if (rst)
            pc <= RESET_PC;
        else
            pc <= pc_next;
    end

endmodule
