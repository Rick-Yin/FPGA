`include "carry_chain_1bit.v"

module carry_chain_4bit(
    input [3:0] a,
    input [3:0] b,
    input  cin,
    output [3:0] sum,
    output cout
);

    wire [4:0] temp;

    assign temp[0] = cin;
    genvar i;
    generate
        for (i = 0; i < 4; i=i+1) begin: loop_1bits
            carry_chain_1bit carry_chain_1bit(
                .a(a[i]),
                .b(b[i]),
                .cin(temp[i]),
                .sum(sum[i]),
                .cout(temp[i+1])
            );
        end
        assign cout = temp[4];
    endgenerate 

endmodule