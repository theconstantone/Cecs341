`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:23:16 02/16/2017 
// Design Name: 
// Module Name:    ALU 
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
module ALU(A,B, ALU_Ctl, Zero_Flag, ALU_Op
    );
	 input A [31:0];
	 input B [31:0];
	 input ALU_Ctl [3:0];
	 
	 output reg [1:0] Zero_Flag;
	 output reg [32:0] ALU_Op;
	 
	 always @(ALU_Ctl) begin
		case(ALU_Ctl)
		
	 


endmodule
