`timescale 1ns / 1ps

module tb_MiniCircuits_Task2;

    logic clk, reset, serial_in;
    logic [4:0] pattern;
    logic detected;

    MiniCircuits_Task2 uut (
        .clk(clk),
        .reset(reset),
        .serial_in(serial_in),
        .pattern(pattern),
        .detected(detected)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $display("Time | serial_in | shift_reg | detected");
        $monitor("%4t | %b         | %b         | %b", $time, serial_in, uut.shift_reg, detected);

        reset = 1;
        serial_in = 0;
        pattern = 5'b10110;
        #10 reset = 0;

        serial_in = 1; #10;
        serial_in = 0; #10;
        serial_in = 1; #10;
        serial_in = 1; #10;
        serial_in = 0; #10;

        serial_in = 0; #10;
        serial_in = 1; #10;
        serial_in = 1; #10;
        serial_in = 1; #10;
        serial_in = 0; #10;

        $finish;
    end
endmodule
