module Counter_5bit (
    input  logic clk,
    input  logic CLR_N,
    output logic [4:0] Q
);
    logic [4:0] count;

    always_ff @(posedge clk or negedge CLR_N) begin
        if (~CLR_N)
            count <= 5'b00000;
        else
            count <= count + 1'b1;
    end

    assign Q = count;
endmodule
