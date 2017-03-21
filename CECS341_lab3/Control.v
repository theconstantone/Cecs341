`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module Control ( Op, RegDst, ALUSrc,MemtoREg,RegWrite,MemRead,MemWrite,Branch,ALUOp,Jump);
	input [5:0] Op;

	output reg RegDst, ALUSrc, MemtoREg, RegWrite, MemRead,MemWrite, Branch, Jump;
	output reg [1:0] ALUOp;

	always @(Op) begin
		case(Op)
		6'h0 : {RegDst, ALUSrc, MemtoREg, RegWrite, MemRead,MemWrite, Branch,ALUOp, Jump} = 10'b1001000100 ;
		6'h23: {RegDst, ALUSrc, MemtoREg, RegWrite, MemRead,MemWrite, Branch,ALUOp, Jump} = 10'b0111100000 ;
		6'h2B : {RegDst, ALUSrc, MemtoREg, RegWrite, MemRead,MemWrite, Branch,ALUOp, Jump} = 10'b010001000 ;
		6'h4: {RegDst, ALUSrc, MemtoREg, RegWrite, MemRead,MemWrite, Branch,ALUOp, Jump} = 10'b0000001010 ;
		6'h2:{RegDst, ALUSrc, MemtoREg, RegWrite, MemRead,MemWrite, Branch,ALUOp, Jump} = 10'b0000000001 ;
		default : {RegDst, ALUSrc, MemtoREg, RegWrite, MemRead, MemWrite, Branch, ALUOp, Jump} = 10'bX;
		endcase
	end
endmodule
