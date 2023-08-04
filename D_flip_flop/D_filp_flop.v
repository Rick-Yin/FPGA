module D_filp_flop(
    input data_input,
    input hold_input,
    output Q,
    output Q_hat);

    wire reset;
    wire d_and_h;
    wire r_and_h;
    wire Q;
    wire Q_hat;


    assign reset = ~ data_input;
    assign d_and_h = data_input & hold_input;
    assign r_and_h = reset & hold_input;
    assign Q = ~(d_and_h | Q_hat);
    assign Q_hat = ~(r_and_h | Q);

endmodule