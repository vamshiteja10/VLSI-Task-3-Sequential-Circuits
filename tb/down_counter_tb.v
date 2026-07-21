`timescale 1ns/1ps

module down_counter_tb;
reg clk;
reg reset;
wire [3:0] count;
down_counter uut (
    .clk(clk),
    .reset(reset),
    .count(count)
);
always #5 clk = ~clk;
initial
begin
    clk = 0;
    reset = 1;
    $dumpfile("waveforms/down_counter.vcd");
    $dumpvars(0, down_counter_tb);
    #10 reset = 0;
    #100;
    $finish;
end
endmodule