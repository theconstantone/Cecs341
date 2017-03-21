`timescale 1ns / 1ps

module twoto1_32mux(In0,In1,Sel,Out);
	input [31:0] In0,In1;
	input Sel;
	output reg [31:0] Out;
	
	always @(In0,In1,Sel)
	begin
		case(Sel)
			1'b0		: Out	= In0;
			1'b1		: Out = In1;
			default : Out = 32'bX;
		endcase
	end

endmodule
