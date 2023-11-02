module miniproject_tb;

  reg clk;        
  reg reset,reset2;       
  wire [8:0] result1;
  wire [12:0] result2; 

  speed M1(clk,reset,result1);
  distance M2(clk,reset2,result2);
  // Assuming hall effect sensor as a clock with 100Hz frequency
  always begin
    #5 clk = ~clk;
  end
  initial begin
    #5 reset2=~reset2;
    #5 reset2=~reset2;
    #5 reset=~reset;
    #5 reset=~reset;
  end
  // Reset value (1 Hz)
  always begin
    #500 reset = ~reset;
    #5 reset= ~reset;
  end
  
  initial begin
    $display("Time,Speed,Distance");
    $monitor("%d, %b %b", $time,result1,result2);
    #10000 $finish;
  end

  initial begin
    clk = 0;
    reset = 0;
    reset2=0;
  end

endmodule
