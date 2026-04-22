// ENGN1600 Baseline RISC Processor
// Anhang Li (anhangli@umich.edu)
// -----

module alu16 (
    input  wire [15:0] A,
    input  wire [15:0] B,

    // primitive ALU operation
    // 00 = ADD
    // 01 = AND
    // 10 = OR
    // 11 = XOR
    input  wire [1:0]  sel,

    // carry-in is used for ADD-based operations
    // normal ADD: cin = 0
    // second cycle of SUB/CMP: cin = 1
    input  wire        cin,

    output reg  [15:0] Y,

    // flags from the current combinational result
    output wire        F,   // overflow
    output wire        Z,   // zero
    output wire        N,   // signed less-than / negative-for-compare
    output wire        C15, // carry out of bit 15 (for signed compare)
    output wire        C16  // carry out of bit 16 (for unsigned compare)
);


/*
# ADD
* sel = 2'b00
* alu_A = srcA
* alu_B = srcB
* cin = 0

# AND
* sel = 2'b01

# OR
* sel = 2'b10

# XOR
* sel = 2'b11

# SUB = A - B
cycle 1: use XOR to compute ~B
* sel = 2'b11
* alu_A = B
* alu_B = 16'hFFFF
store result externally as B_inv
cycle 2: use ADD to compute A + ~B + 1
* sel = 2'b00
* alu_A = A
* alu_B = B_inv
* cin = 1

# CMP = compare A vs B
Same two cycles as SUB, but discard Y and only latch flags from cycle 2.
*/

    reg  [16:0] tmp;
    reg         c15;
    reg         c16;
    assign C15 = c15;
    assign C16 = c16;

    always @* begin
        Y   = 16'h0000;
        tmp = 17'h00000;
        c15 = 1'b0;
        c16 = 1'b0;

        case (sel)
            2'b00: begin
                // ADD path
                tmp = {1'b0, A} + {1'b0, B} + cin;
                Y   = tmp[15:0];

                // carry into MSB:
                c15 = ({1'b0, A[14:0]} + {1'b0, B[14:0]} + cin) >> 15;
                // carry out of MSB:
                c16 = tmp[16];
            end

            2'b01: Y = A & B;
            2'b10: Y = A | B;
            2'b11: Y = A ^ B;
        endcase
    end

    // Overflow flag for ADD/SUB/CMP-style add
    assign F = (sel == 2'b00) ? (c15 ^ c16) : 1'b0;

    // Zero flag; controller decides when to latch it
    assign Z = (Y == 16'h0000);

    // For compare/subtract, appendix gives:
    // N = S[15] ^ Cn_out ^ Cn-1_out
    assign N = (sel == 2'b00) ? (Y[15] ^ c16 ^ c15) : 1'b0;

endmodule
