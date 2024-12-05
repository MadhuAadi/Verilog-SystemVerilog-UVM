
// Code your design here
module ha(a,b,s,c);
  
  input  a,b;
  output  s,c;
  
  assign s = a ^ b; //SUM = XOR OF 2 INPUTS , ASSIGN KEYWORD -> CONT. ASSIGNMENT STATEMENTS 
  assign c = a*b; //CARRY = A AND B
  
endmodule  


// Code your testbench here
module tb;
   reg a,b;
   wire s,c;
  
  ha dut(a,b,s,c); // INSTANTIATION OF DESIGN IN TB 
  
  initial begin  // INITIAL -> EXECUTED ONLY USE AND STARTS AT TIME 0 
    $monitor("a = %d b = %d , sum = %d , carry = %d, %t",a,b,s,c, $time); // $MONITOR- SIGNALS ARE PRINTED EACH TIME ONE OF THEIR VALUE CHANGES 
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
    $dumpfile("tb.vcd");      // CREATING A DUMPFILE TO STORE SIMULATED DATA, MAINLY FOR WAVEFORM VIEW 
    $dumpvars();              // DEFINES THE SIGNALS TO BE ADDED TO THE DUMPFILE
  end
endmodule


OUTPUT:
a = x b = x , sum = x , carry = x,                    0
a = 0 b = 0 , sum = 0 , carry = 0,                    5
a = 0 b = 1 , sum = 1 , carry = 0,                   10
a = 1 b = 0 , sum = 1 , carry = 0,                   15
a = 1 b = 1 , sum = 0 , carry = 1,                   20
a = 0 b = 0 , sum = 0 , carry = 0,                   30
