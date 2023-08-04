`timescale 1ps/1ps
`include "D_filp_flop.v"

module D_filp_flop_tb;

    reg data_input;
    reg hold_input;
    wire Q;
    wire Q_hat;

    D_filp_flop Dff_test(
        .data_input(data_input),
        .hold_input(hold_input),
        .Q(Q),
        .Q_hat(Q_hat)
    );

    initial begin
        $dumpfile("tb_D_flip_flop.vcd");
        $dumpvars(0, D_filp_flop_tb);
    end

    initial begin
        #5
        assign data_input = 0;
        assign hold_input = 0;
        #5
        assign data_input = 1;
        #5
        assign hold_input = 1;
        #5
        assign data_input = 1;
        #5
        assign data_input = 0;
        #5
        assign data_input = 1;
        #5;
    end

endmodule