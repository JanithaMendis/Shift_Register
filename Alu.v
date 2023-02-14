//Verilog module for an ALU
module Alu(A,M,ALU_Op,X);
    
    //inputs,outputs and internal variables declared here
    input [7:0] A,M;
    input [2:0] ALU_Op;
    output [7:0] X;
    wire [7:0] Reg1,Reg2; 
    reg [7:0] Reg3;
    
    //Assign A and B to internal variables for doing operations
    assign Reg1 = A;
    assign Reg2 = M;
    //Assign the output 
    assign X = Reg3;

    //Always block with inputs in the sensitivity list.
    always @(ALU_Op or Reg1 or Reg2)
    begin
        case (ALU_Op)
         0 : Reg3 = Reg1 ;  
         1 : Reg3 = Reg1 + Reg2; //addition
         2 : Reg3 = Reg1 - Reg2 ;//subtraction
         3 : Reg3 = Reg2 - Reg1; 
         4 : Reg3 = -(Reg1 + Reg2); //NOR gate               
         5 : Reg3 = Reg1 & Reg2;  //AND gate
         6 : Reg3 = Reg1 | Reg2;  //OR gate    
         7 : Reg3 = Reg1 ^ Reg2; //XOR gate  
        endcase 
    end
    
endmodule
