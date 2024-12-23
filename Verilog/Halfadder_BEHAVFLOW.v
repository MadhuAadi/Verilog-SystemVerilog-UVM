
//DESIGN 
module ha(a,b,s,c);
  
  input  a,b;
  output  reg s,c;
  
  always@(*) begin // ALWAYS - COMBINATIONAL CIRCUIT - NO NEED OF CLKs or RESET ; SENSITIVITY LIST WILL ONLY BE THE SIGNALS, * IN SENSITIVITY LIST INCLUDES ALL SIGNALS 
   s = a ^ b;
   c = a*b;
  end
  
endmodule  

//TESTBENCH

module tb;
   reg a,b;
   wire s,c;
  
  ha dut(a,b,s,c);
  
  initial begin
    
    $monitor("a = %d b = %d , sum = %d , carry = %d, %t",a,b,s,c, $time);
    #5;
    a =  0; b=0;
    #5;
    a = 0; b = 1;
    #5;
    a= 1; b = 0;
    #5;
    a = 1; b = 1;
    #5;    
  end
  
  initial begin  
     $dumpfile("tb.vcd");
     $dumpvars();
  end
endmodule

OUTPUT:
a = x b = x , sum = x , carry = x,                    0
a = 0 b = 0 , sum = 0 , carry = 0,                    5
a = 0 b = 1 , sum = 1 , carry = 0,                   10
a = 1 b = 0 , sum = 1 , carry = 0,                   15
a = 1 b = 1 , sum = 0 , carry = 1,                   20
