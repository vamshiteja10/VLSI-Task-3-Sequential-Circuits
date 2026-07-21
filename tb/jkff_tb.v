`timescale 1ns/1ps

module jkff_tb;
reg clk;
reg j;
reg k;
wire q;
jkff uut (
    .clk(clk),
    .j(j),
    .k(k),
    .q(q)
);
always #5 clk = ~clk;
initial
begin
    clk = 0;
    j = 0;
    k = 0;
    $dumpfile("waveforms/jkff.vcd");
    $dumpvars(0, jkff_tb);
    #10 j = 0; k = 0;   
    #10 j = 0; k = 1;   
    #10 j = 1; k = 0;   
    #10 j = 1; k = 1;   
    #20;
    $finish;
end
endmodule