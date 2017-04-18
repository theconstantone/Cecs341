`timescale 1ns / 1ps

module IMEM_128x8( ReadAddress, Instruction );
	input [7:0] ReadAddress;
	output [31:0] Instruction;
	reg [7:0] IM[127:0];
	
	assign Instruction = { IM[ReadAddress+0],
									IM[ReadAddress+1],
									IM[ReadAddress+2],
									IM[ReadAddress+3]
								};
	
	

endmodule