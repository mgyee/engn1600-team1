module imem #(
    parameter DEPTH   = 65536,
    parameter MEMFILE = ""
) (
    input  wire        clk,
    input  wire [15:0] pc,
    output reg  [15:0] imem_q = 16'h5555
);
  reg [15:0] mem[0:DEPTH-1];

  // NOTE: ngspice/XSPICE's d_cosim calls into the Verilated model only when a
  // digital input changes. In the full processor sim, PC can sit at 0 for a
  // while after reset, which can prevent a first evaluation at t=0.
  // Adding CLK as an input ensures the IMEM model is evaluated early.

  // Addressing is byte-based; instructions are 16-bit (2 bytes) wide.
  // Word index = byte_address >> 1.
  // Zero-extend to 16 bits to match the array index width for DEPTH=65536.
  wire [15:0] word_addr = {1'b0, pc[15:1]};

  initial begin
    integer i;
    for (i = 0; i < DEPTH; i = i + 1) mem[i] = 16'h1234;
    if (MEMFILE != "") $readmemh(MEMFILE, mem);
  end

  always @(negedge clk) imem_q <= mem[word_addr];
endmodule
