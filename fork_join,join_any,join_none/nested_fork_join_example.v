module tb;
  initial begin
    $display ("[%0t] Main Thread: Fork join is going to start", $time);
    fork 
      begin
        fork
          print (20, "Thread1_0");
          print (30, "Thread1_1");
        join_none
        $display("[%0t] Nested fork has finished", $time);
        end
      print (10, "Thread2");
    join_none
    $display("[%0t] Main Thread: Fork join has finished", $time);
  end
  
  task automatic print (int _time, string t_name); //why's this an automatic task? memory allocation and dletion for the variables in this task happens automatically, but then why's it needed in this task??
    #(_time) $display ("[%0t]%s", $time, t_name); // what sort of syntax's this used for?
  endtask
endmodule