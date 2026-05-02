module dmem #(
    parameter DEPTH   = 65536,
    parameter MEMFILE = ""
) (
    input  wire        clk,
    input  wire        mem_write,
    input  wire [15:0] dmem_addr,
    input  wire [15:0] rdst,
    output wire [15:0] dmem_q
);
  reg [15:0] mem[0:DEPTH-1];

  initial begin
    integer i;
    for (i = 0; i < DEPTH; i = i + 1) mem[i] = 16'h1234;
    if (MEMFILE != "") $readmemh(MEMFILE, mem);
  end

  always @(negedge clk) begin
    if (mem_write) mem[dmem_addr] <= rdst;
  end

  assign dmem_q = mem[dmem_addr];
endmodule
