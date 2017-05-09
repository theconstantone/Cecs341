`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:41:32 05/08/2017 
// Design Name: 
// Module Name:    ShiftLeft2_32bit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ShiftLeft2_32bit(In32, Out32);
	input [31:0] In32;
	output [31:0] Out32;
	
	assign Out32 = { In32[29:0], 2'b00} ;


endmodule
