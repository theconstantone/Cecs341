`timescale 1ns / 1ps

module ALU(ALU_Ctl, A, B, Output, Zero_Flag);
	input [3:0] ALU_Ctl;
	input [31:0] A, B;
	output reg [31:0] Output;
	output  Zero_Flag;

	
	always @(ALU_Ctl, A, B) begin
		case(ALU_Ctl)
		4'b0000: Output = A & B;	//AND
		4'b0001: Output =  A | B;	//OR
		4'b0010: Output = A + B;	//Add
		4'b0110: Output = A - B; 	//Subtract
		4'b0111: Output = ( A < B ) ? 32'b1 : 32'b0; //Set on less than
		4'b1100: Output = ~( A | B ); //NOR
		default : Output = 32'hX;
					 
					 
		
		
		endcase
		
		// assign Zero_Flag = (Output) ? 1'b0 : 1'b1;
		
	end
	 
	assign Zero_Flag = (Output) ? 1'b0 : 1'b1;
	
	


endmodule