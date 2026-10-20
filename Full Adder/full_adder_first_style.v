module full_adder (input a,b,c, output carry, sum);
    assign sum = a ^ b ^c; // using logical operators 
    assign carry = (a&b) | (b&c) | (c&a);

endmodule: full_adder


