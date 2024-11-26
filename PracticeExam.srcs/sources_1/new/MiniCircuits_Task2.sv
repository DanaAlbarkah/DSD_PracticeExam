`timescale 1ns / 1ps

module MiniCircuits_Task2 (
    input         clk,
    input         reset,
    input         serial_in,
    input  [4:0]  pattern,
    output logic  detected
);

    logic [4:0] shift_reg;

    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            shift_reg <= 5'b0;
        end else begin
            shift_reg <= {shift_reg[3:0], serial_in};
        end
    end

    always_comb begin
        detected = (shift_reg == pattern);
    end

endmodule
