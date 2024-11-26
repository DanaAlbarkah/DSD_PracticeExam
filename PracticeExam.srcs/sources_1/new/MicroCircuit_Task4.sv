module MicroCircuit_Task4 (
    input  [3:0] A,
    input  [3:0] B,
    output [7:0] P
);

    logic [3:0] pp0, pp1, pp2, pp3;
    logic [3:0] sum1, sum2, sum3;
    logic carry1, carry2, carry3;

    assign pp0 = A & {4{B[0]}};
    assign pp1 = A & {4{B[1]}};
    assign pp2 = A & {4{B[2]}};
    assign pp3 = A & {4{B[3]}};

    Adder_4bit adder1 (
        .A(pp0),
        .B({1'b0, pp1[3:1]}),
        .cin(0),
        .sum(sum1),
        .carry(carry1)
    );

    Adder_4bit adder2 (
        .A(sum1),
        .B({2'b00, pp2[3:2]}),
        .cin(carry1),
        .sum(sum2),
        .carry(carry2)
    );

    Adder_4bit adder3 (
        .A(sum2),
        .B({3'b000, pp3[3]}),
        .cin(carry2),
        .sum(sum3),
        .carry(carry3)
    );

    assign P = {carry3, sum3};

endmodule
