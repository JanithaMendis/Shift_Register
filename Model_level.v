module ModelLevel(
	input [7:0] ctrl_bus , //ctrl_bus = (ALU_OP[2:0], MUX_SEL, SHIFT_OP[5:4] , Q_EN , R_EN)
	input [7:0] A,
	input [7:0] B,
	input clk,

	output[7:0] Q );

wire [2:0]ALU_OP = ctrl_bus[2:0];
wire MUX_SEL = ctrl_bus[3]; 
wire [1:0]SHIFT_OP = ctrl_bus[5:4];
wire Q_EN = ctrl_bus[6]; 
wire R_EN = ctrl_bus[7]; 
wire [7:0] M , X , S , R ;

mux_F  Mux(
	   .B(B[7:0]),
	   .R(R[7:0]), 
	   .select(MUX_SEL), 
	   .y(M[7:0])
           );

Alu  Arithmatic_logic_unit( 
			    .A(A[7:0]), 
			    .M(M[7:0]), 
			    .ALU_Op(ALU_OP[2:0]), 
			    .X(X[7:0]) 
			   );

shift_reg shift(
		.X(X[7:0]), 
		.clk(clk), 
		.dir(SHIFT_OP[1:0]),
		.S(S[7:0])
		);


register R_reg(

		.C(clk),
		.D(S),
		.CE(R_EN),
		.Q(R)	
	       );
		

register Q_reg(

		.C(clk),
		.D(S),
		.CE(Q_EN),
		.Q(Q)	
	       );
		
endmodule



