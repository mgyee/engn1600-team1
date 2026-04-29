module imem #(
    parameter DEPTH   = 65536,
    parameter MEMFILE = ""
) (
    input  wire [15:0] pc,
    output wire [15:0] imem_q
);
  reg [15:0] mem[0:DEPTH-1];

  // Addressing is byte-based; instructions are 16-bit (2 bytes) wide.
  // Word index = byte_address >> 1.
  // Zero-extend to 16 bits to match the array index width for DEPTH=65536.
  wire [15:0] word_addr = {1'b0, pc[15:1]};

  initial begin
    integer i;
    for (i = 0; i < DEPTH; i = i + 1) mem[i] = 16'h00;
    if (MEMFILE != "") $readmemh(MEMFILE, mem);
  end

  assign imem_q = mem[word_addr];
endmodule
