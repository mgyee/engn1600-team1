module dmem #(
    parameter DEPTH   = 65536,
    parameter MEMFILE = ""
) (
    input  wire        clk,
    input  wire        we,
    input  wire [15:0] addr,
    input  wire [15:0] wdata,
    output wire [15:0] rdata
);
  reg [15:0] mem[0:DEPTH-1];

  initial begin
    integer i;
    for (i = 0; i < DEPTH; i = i + 1) mem[i] = 16'h0000;
    if (MEMFILE != "") $readmemh(MEMFILE, mem);
  end

  always @(posedge clk) begin
    if (we) mem[addr] <= wdata;
  end

  assign rdata = mem[addr];
endmodule
