`timescale 1ns/1ps

module dff_tb;
reg clk;
reg d;
wire q;
dff uut(
    .clk(clk),
    .d(d),
    .q(q)
);
always #5 clk = ~clk;
initial
begin
    clk = 0;
    d = 0;
    $dumpfile("waveforms/dff.vcd");
    $dumpvars(0,dff_tb);
    #10 d = 1;
    #10 d = 0;
    #10 d = 1;
    #10 d = 0;
    #20;
    $finish;
end
endmodule