module CircuitsDesign_Task2 (
    input  logic clk,
    input  logic reset_n,
    input  logic load,
    input  logic start,
    input  logic [4:0] A_in,
    input  logic [4:0] B_in,
    output logic [4:0] Sum,
    output logic Done
);

    logic [4:0] shift_reg_A, shift_reg_B, shift_reg_O;
    logic [1:0] count;
    logic shift_en, count_en, comparator_out, Cin;
    logic Cout, Sum_bit;

    ShiftRegister_5bit shift_reg_A_inst (
        .clk(clk),
        .CLR_N(reset_n),
        .serial_in(A_in[0]),
        .Q(shift_reg_A)
    );

    ShiftRegister_5bit shift_reg_B_inst (
        .clk(clk),
        .CLR_N(reset_n),
        .serial_in(B_in[0]),
        .Q(shift_reg_B)
    );

    FA full_adder_inst (
        .A(shift_reg_A[0]),
        .B(shift_reg_B[0]),
        .Cin(Cin),
        .Sum(Sum_bit),
        .Cout(Cout)
    );

    DFF dff_inst (
        .clk(clk),
        .D(Cout),  
        .CLR_N(reset_n),
        .Q(Cin),
        .Qbar()
    );

    ShiftRegister_5bit shift_reg_O_inst (
        .clk(clk),
        .CLR_N(reset_n),
        .serial_in(Sum_bit), 
        .Q(shift_reg_O)
    );

    counter count_inst (
        .clk(clk),
        .CLR_N(reset_n),
        .count_en(count_en),
        .count(count)
    );

    assign comparator_out = (count == 2'b11);
    assign Done = comparator_out;
    assign count_en =  ~comparator_out;
    assign shift_en =  ~comparator_out;
    assign Sum = shift_reg_O;

endmodule
