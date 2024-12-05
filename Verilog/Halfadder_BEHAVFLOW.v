
//DESIGN 
module ha(a,b,s,c);
  
  input  a,b;
  output  reg s,c;
  
  always@(*) begin // ALWAYS - COMBINATIONAL CIRCUIT - NO NEED OF CLKs or RESET ; SENSITIVITY LIST WILL ONLY BE THE SIGNALS, * IN SENSITIVITY LIST INCLUDES ALL SIGNALS 
   s = a ^ b;
   c = a*b;
  end
  
endmodule  
