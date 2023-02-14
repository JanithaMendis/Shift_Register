module register (C, D, CE, Q);  
//D[4:0] Data Input
//C Positive-Edge Clock
//CE Clock Enable (active High)
//Q[4:0] Data Output
  input C, CE ; 
  input [7:0] D;  
  output [7:0] Q;  
  reg [7:0] Q;  
 
  always @(posedge C)  
    begin  
      //if (PRE)  
     //   Q = 8'b1111;
     // else  
       if (CE)  
          Q = D;  
    end  
endmodule 
 