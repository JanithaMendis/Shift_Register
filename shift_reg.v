module shift_reg (  input reg[7:0]X ,                      // Declare input for data to the first flop in the shift register
                    input clk,                    // Declare input for clock to all flops in the shift register
                 //   input en,                     // Declare input for enable to switch the shift register on/off
                    input [0:1]dir,                    // Declare input to shift in either left or right direction
                    //input rstn,                   // Declare input to reset the register to a default value
                    output reg [7:0] S);    // Declare output to read out the current value of all flops in this register
		

	//reg [7:0] d=8'b00001100;
        

   // This always block will "always" be triggered on the rising edge of clock
   // Once it enters the block, it will first check to see if reset is 0 and if yes then reset register
   // If no, then check to see if the shift register is enabled
   // If no => maintain previous output. If yes, then shift based on the requested direction
   always @ (posedge clk)
//      if (!rstn)
//         out <= 0;  
//      else 

   begin
         //if (en)
            case (dir)
               00 :  S <= X;
               01 :  S <= X<<1;
	       10 :  S<= X<<2;
               11 :  S<= X<<3;
            endcase
         //else
            S <= S;
      end
endmodule

        