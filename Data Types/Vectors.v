// Code your design here
module vectors;
  // in verilog vectors are used to represent multi bit variables
  reg [7:0] a,b,c; // 8 Bit Vectors a, b, c.
  reg [7:0] address;
  
  // Bit Select, and Parts Select Operations
  
  initial begin 	// Initial begin end is needed for Blocking procedural
  address [0] = 1; // this is known as Bit select Vectors operation.
  address [7] = 1;
  address [4] = 0;
  end
  
  reg [31:0] addr;
  
  initial begin
  addr [23:16] = 8'h63; // this is known as Parts Select operation
  addr [16:0] =  8'h15;
  end
  
endmodule