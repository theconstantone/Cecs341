`timescale 1ns / 1ps

module SignExtend_16to32(SE_In, SE_Out);
	input [15:0] SE_In;
	output [31:0] SE_Out;
	
	//replicated MSB 16 positions to the left
	
	assign SE_Out = { {16{SE_In[15]}},SE_In};


endmodule