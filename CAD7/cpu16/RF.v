// ENGN1600 Baseline RISC Processor
// Anhang Li (anhangli@umich.edu)
// -----

module rf_16x16_1w2r_ms (
    input  wire        clk,
    input  wire        we_master,
    input  wire [15:0] d,
    input  wire [15:0] we_word,   // one-hot write select for 16 words
    input  wire [15:0] read_a,    // one-hot read select
    input  wire [15:0] read_b,    // one-hot read select
    output reg  [15:0] qa,
    output reg  [15:0] qb
);
    reg [15:0] mem [0:15];
    integer i;

    initial begin
        for (i = 0; i < 16; i = i + 1)
            mem[i] = 16'h0000;
    end

    always @(posedge clk) begin
        if (we_master) begin
            for (i = 0; i < 16; i = i + 1)
                if (we_word[i])
                    mem[i] <= d;
        end
    end

    always @* begin
        qa = 16'h0000;
        for (i = 0; i < 16; i = i + 1)
            if (read_a[i])
                qa = mem[i];
    end

    always @* begin
        qb = 16'h0000;
        for (i = 0; i < 16; i = i + 1)
            if (read_b[i])
                qb = mem[i];
    end
endmodule
