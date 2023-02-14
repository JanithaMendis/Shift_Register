module flop (C, D, Q);  
//D[4:0] Data Input
//C Positive-Edge Clock
//CE Clock Enable (active High)
//Q[4:0] Data Output
  input C; 
  input [7:0] D;  
  output [7:0] Q;  
  reg [7:0] Q; 
  reg CE =1'b1;

  always @(posedge C)  
    begin  
       
       if (CE)  
          Q = D;  
    end  
endmodule  
