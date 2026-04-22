// ENGN1600 Baseline RISC Processor
// Anhang Li (anhangli@umich.edu)
// -----

module imem16 #(
    parameter DEPTH = 65536,
    parameter MEMFILE = ""
) (
    input  wire [15:0] addr,
    output wire [15:0] data
);
    reg [15:0] mem [0:DEPTH-1];

    initial begin
        integer i;
        for (i = 0; i < DEPTH; i = i + 1)
            mem[i] = 16'h0000;
        if (MEMFILE != "")
            $readmemh(MEMFILE, mem);
    end

    assign data = mem[addr];
endmodule
