`timescale 1ns / 1ps

module Control(Op, RegDst, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, 
					ALUOp, Jump);
					
	input [5:0] Op; //6 bit Opcode
					
	//control signal outputs are below
	
	output reg RegDst, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, Jump;
	output reg[1:0] ALUOp;
	
	always @(Op) begin
		case(Op)
		6'h000000 : {RegDst, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, ALUOp, Jump} = 10'b1001000100; //R - type
		6'h23 : {RegDst, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, ALUOp, Jump} = 10'b0111100000; //lw
		6'h2B : {RegDst, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, ALUOp, Jump} = 10'b0100010000;  //sw
		6'h4 : {RegDst, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, ALUOp, Jump} = 10'b0000001010; //beq
		6'h02 : {RegDst, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, ALUOp, Jump} = 10'b0000000001; //jump
		default: {RegDst, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, ALUOp, Jump} = 10'bX;
		endcase
	end

endmodule
