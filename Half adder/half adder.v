module half_adder (a,b,sum,carry); // a half adder is an electronic circuit that adds two input bits (a,b) and produces two output bits (sum, carry)

    input wire a,b;
    output reg sum, carry;

    assign sum = a ^ b;
    assign carry = a & b;
endmodule



