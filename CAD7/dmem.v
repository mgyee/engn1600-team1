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

  // Addressing is byte-based; this data memory stores 16-bit (2-byte) words.
  // Word index = byte_address >> 1.
  // Zero-extend to 16 bits to match the array index width for DEPTH=65536.
  wire [15:0] word_addr = {1'b0, dmem_addr[15:1]};

  initial begin
    integer i;
    for (i = 0; i < DEPTH; i = i + 1) mem[i] = 16'h1234;
    if (MEMFILE != "") $readmemh(MEMFILE, mem);
  end

  always @(posedge clk) begin
    if (mem_write) mem[word_addr] <= rdst;
  end

  assign dmem_q = mem[word_addr];
endmodule
