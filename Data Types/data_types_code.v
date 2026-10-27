module testbench;
  integer int_a; // Integer Variable
  real real_b;   // Real Variable
  time time_c;  // Time Variable

initial begin
    int_a = 32'hcafe_1234; 
    real_b = 0.12345; 

    #20; // delay simulation time by 20 time units
    
    time_c = $time; // assign the current time $time to  the time variable time_c

  $display ("a = 0x%h", int_a); // this outputs a = 0xcafe1234
  $display ("b = %0.5f", real_b); // this outputs b = 0.3.141593 it means round up the 5th decimal place of this floating point
  $display ("t = %0t", time_c); // this outputs t = 20. 0 means add 0 spacing before the value of t
  $display("t = %5t", t); // % means insert the data type in the brackets, t, for example in place of this "% symbol". 
end
endmodule
