`timescale 1ps/1ps
`include "carry_chain_4bit.v"

module tb_carry_chain_4bit;
reg [3:0] a;
reg [3:0] b;
reg cin;
wire cout;
wire [3:0] sum;

carry_chain_4bit carry_chain_4bit
(
    .a (a),
    .b (b),
    .cin (cin),
    .sum (sum),
    .cout (cout)
);


initial begin
    $dumpfile("tb_carry_chain_4bit.vcd");
    $dumpvars(0, tb_carry_chain_4bit);
end

initial begin
    #5
    assign a = 4'b0000;
    assign b = 4'b0000;
    assign cin = 1'b0;

    #5
    assign a = 4'b0001;
    assign b = 4'b0000;
    assign cin = 1'b1;

    #5
    assign a = 4'b0010;
    assign b = 4'b0001;
    assign cin = 1'b0;

    #5
    assign a = 4'b0100;
    assign b = 4'b0000;
    assign cin = 1'b1;

    #5
    assign a = 4'b1000;
    assign b = 4'b1010;
    assign cin = 1'b0;

    #5
    $finish(2);
end

endmodule
`default_nettype wire