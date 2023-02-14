
module Alu_testbench;

    // Inputs
    reg [7:0] A;
    reg [7:0] M;
    reg [2:0] ALU_OP; 

    // Outputs
    wire [7:0] X;

    // Instantiate the Unit Under Test (UUT)
     Alu uut ( 
        .A(A), 
        .M(B), 
        .ALU_OP(Op), 
        .X(R)
    );
    
    initial begin
        
    end
      
endmodule


