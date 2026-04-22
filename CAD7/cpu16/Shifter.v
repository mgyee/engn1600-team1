// ENGN1600 Baseline RISC Processor
// Anhang Li (anhangli@umich.edu)
// -----

module shifter (
    input  wire [15:0] data_in,
    input  wire [3:0]  shamt,     // shift amount: 0 to 15
    output wire [15:0] data_out
);

    // Logarithmic shifter stages:
    // stage 0: optional shift by 1
    // stage 1: optional shift by 2
    // stage 2: optional shift by 4
    // stage 3: optional shift by 8

    wire [15:0] s1, s2, s4;

    assign s1 = shamt[0] ? {data_in[14:0], 1'b0}       : data_in;
    assign s2 = shamt[1] ? {s1[13:0],      2'b00}      : s1;
    assign s4 = shamt[2] ? {s2[11:0],      4'b0000}    : s2;
    assign data_out = shamt[3] ? {s4[7:0], 8'b00000000} : s4;

endmodule
