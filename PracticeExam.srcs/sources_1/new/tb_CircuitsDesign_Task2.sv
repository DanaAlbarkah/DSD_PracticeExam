module tb_CircuitsDesign_Task2;

    reg clk;
    reg reset_n;
    reg load;
    reg start;
    reg [4:0] A_in, B_in;
    wire [4:0] Sum;
    wire Done;

    CircuitsDesign_Task2 uut (
        .clk(clk),
        .reset_n(reset_n),
        .load(load),
        .start(start),
        .A_in(A_in),
        .B_in(B_in),
        .Sum(Sum),
        .Done(Done)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        reset_n = 0;
        load = 0;
        start = 0;
        A_in = 5'b00000;
        B_in = 5'b00000;

        #10 reset_n = 1;

        A_in = 5'b10101;
        B_in = 5'b01011;
        load = 1;
        #10 load = 0;

        start = 1;
        #10 start = 0;

        wait (Done);

        $display("Sum = %b", Sum);
        $display("Done = %b", Done);

        #20 $finish;
    end

endmodule
