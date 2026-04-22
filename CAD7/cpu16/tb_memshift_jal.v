// ENGN1600 Baseline RISC Processor
// Anhang Li (anhangli@umich.edu)
// -----

`timescale 1ns/1ps
module tb_memshift_jal;
    reg clk = 0;
    reg rst = 1;
    always #5 clk = ~clk;

    cpu16 #(.IMEM_FILE("bench_memshift_jal.memh")) dut (
        .clk(clk), .rst(rst), .dbg_pc(), .dbg_ir_x(), .dbg_flags()
    );

    initial begin
        #12 rst = 0;
        repeat (60) @(posedge clk);

        if (dut.u_dmem.mem[16'h0000] !== 16'h0010) begin
            $display("FAIL load/shift/store: mem[0] = %h, expected 0010", dut.u_dmem.mem[16'h0000]);
            $fatal;
        end
        if (dut.u_dmem.mem[16'h0001] !== 16'h0009) begin
            $display("FAIL JAL link: mem[1] = %h, expected 0009", dut.u_dmem.mem[16'h0001]);
            $fatal;
        end

        $display("PASS tb_memshift_jal");
        $finish;
    end
endmodule
