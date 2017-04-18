`timescale 1ns / 1ps

module Mux2to1_5bit(Input0, Input1, Sel, Output_Mux );
	input [4:0]Input0;
	input [4:0]Input1;
	input Sel;
	output reg[4:0]Output_Mux;
	
	// assign Output_Mux = (Sel == 0) ? Input0 : Input1;
	always @(Input0, Input1, Sel)
	begin 
		case(Sel)
			1'b0: Output_Mux = Input0;
			1'b1: Output_Mux = Input1;
			default : Output_Mux = 5'bX;
			endcase
		end
	


endmodule