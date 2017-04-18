`timescale 1ns / 1ps

module Mux2to1_32bit(Input0, Input1, Sel, Output_Mux);
	input [31:0]Input0;
	input [31:0]Input1;
	input Sel;
	output reg[31:0]Output_Mux;
	
	// assign Output_Mux = (Sel == 0) ? Input0 : Input1;
	
	always @(Input0, Input1, Sel)
	begin 
		case(Sel)
			1'b0: Output_Mux = Input0;
			1'b1: Output_Mux = Input1;
			default : Output_Mux = 32'bX;
			endcase
		end


endmodule