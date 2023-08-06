module D_filp_flop(
    input data_input,
    input clk,
    output Q,
    output Q_hat);

    wire reset;
    wire d_and_c;
    wire r_and_c;
    wire Q;
    wire Q_hat;

    always @(posedge clk) begin
        
    end

    assign reset = ~ data_input;
    assign d_and_c = data_input & clk;
    assign r_and_c = reset & clk;
    assign Q = ~(r_and_c | Q_hat);
    assign Q_hat = ~(d_and_c | Q);

endmodule