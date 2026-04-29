module imem #(
    parameter DEPTH   = 65536,
    parameter MEMFILE = ""
) (
    input  wire [15:0] pc,
    output wire [15:0] instr
);
  reg [15:0] mem[0:DEPTH-1];

  initial begin
    integer i;
    for (i = 0; i < DEPTH; i = i + 1) mem[i] = 16'h0000;
    if (MEMFILE != "") $readmemh(MEMFILE, mem);
  end

  assign instr = mem[pc];
endmodule
