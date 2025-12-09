
// Code your testbench here
// or browse Examples
// Code your testbench here
module tb;
  reg clk,rst;
  reg [5:0]in;
  wire out;
  vending_machine dut(.*);
  initial begin

    $display("CHOCOLATE VENDING MACHINE");
    $display("CHOCOLATE COST=20 RUPEES");
    $display("Accepts: 5 Rupee or 10 Rupee or 20 Rupee");

  end
  initial begin
    clk=0;
    forever #5 clk=~clk;
  end
  
  initial begin 
    $monitor("$time=%0t | clk=%b | rst=%b | in=%b | out=%b ",$time,clk,rst,in,out);
  end
  
  initial begin
    rst = 0; in = 2'b00; #10;  
    rst = 1; #10; 
    
  // Apply inputs
    in = 6'b000101; $display("\ntime=%0t: Inserted input = %b (5 Rupee)",$time,in);#10;  
    in = 6'b001010; $display("\ntime=%0t: Inserted input = %b (10 Rupee)",$time,in);#10;  
    in = 6'b000101; $display("\ntime=%0t: Inserted input = %b (5 Rupee)",$time,in);#10;  
    in = 6'b010100; $display("\ntime=%0t: Inserted input = %b (20 Rupee)",$time,in);#10;  
   
     $finish;
  end
  
  
  
  // Tracking & Printing Info
  integer total = 0;
  always @(in) 
    begin
      if (!rst) 
        begin
         total = 0;
        end 
      else
        begin
          if (in == 6'b000101) total = total + 5;
          else if (in == 6'b001010) total = total + 10;
          else if (in == 6'b010100) total = 20;
        end
      if (total < 20) 
         begin
          if (total == 5) 
            $display("\ntime=%0t: Inserted 5 Rupees to Need 15 Rupees more", $time);
          else if (total == 10) 
            $display("\ntime=%0t: Inserted 10 Rupees to Need 10 Rupees more", $time);
          else if (total == 15)
            $display("\ntime=%0t: Inserted 15 Rupees to Need 5 Rupees more", $time);
          else
            $display("\nNo Coin's Added ");
         end 
      else if (total == 20)
         begin
           $display("\ntime=%0t: Inserted total 20 Rupees, Take Your CHOCOLATE Have a Nice Day", $time);
         // total=0;
         end
       else if (total > 20)
         begin
           $display("\ntime=%0t: Inserted more than 20 Rupees it's Invalid", $time);
           total = 0; // reset after dispensing
         end
       else 
         begin
           total = 0; 
         end
   end
  initial begin
    //$dumpfile("wave.vcd");
    //$dumpvars;
  end
endmodule