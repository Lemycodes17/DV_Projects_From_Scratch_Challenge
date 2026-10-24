// identifier

module xyz;
  
  reg ab$23 = 1; // legal use of identifier
  reg ab_12 = 2; // legal use of identifier
  reg _a = 3; // legal use of identifier. identifier can begin with _
  reg 23ec = 4; // illegal use of identifer. identifier should not start with $ or [0-9]
  reg $money = 5; // illegal use of identifer. identifier should not start with $ or [0-9]
  reg 12 = 5; // illegal use of identifer. identifier should not contain only numbers
  reg as@12 = 4; // illegal use of identifer. identifers can only contain [0-9][A-Z][a-z] and _ or $
  reg as 23 = 7;  // illegal use of identifier. identifier cannot contain a whitespace
  reg module = 8; // illegal use of identifier. keywords cannot be used as identifier
 Identifiers are case sensitive. That means half_adder and Half_adder are 2 different identifier.
endmodule

