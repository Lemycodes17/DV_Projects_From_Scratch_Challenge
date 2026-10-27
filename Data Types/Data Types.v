module testbench;
  integer int_a; // Integer Variable
  real real_b;   // Real Variable
  time time_c;  // Time Variable
  
  initial begin
    int_a = 32'hcafe_1234;
    real_b = 3.14159265358; 
    
    #20
    
    time_c = $time;

    $display("int_a = 0x%0h", int_a);
    $display ("real_b = %0.5f", real_b);
    $display ("time_c = %0t", time_c);
    
  end
endmodule
    