`timescale 1ns / 1ps

module MIPS_CORE(clk,ReadAddr,SEImm, JumpValue, Zero,Branch, Jump);
	input clk; //system clock
	input [7:0] ReadAddr;
	output [31:0] SEImm;
	output [25:0] JumpValue;
	output Zero, Branch, Jump;
	
	wire [31:0] I,RAM_Address,Data_to_RAM, Data_from_RAM;
	
	wire RegDst,ALUSrc,MemtoReg,RegWrite,MemWrite,Branch,Jump,MemRead;
	
	wire [1:0] ALUOp;
	
	assign JumpValue = I[25:0];
	
	IMEM_128x8 IMEM (.ReadAddress(ReadAddr[7:0]),
						   .Instruction(I[31:0])
							);
	
	Control CU (.Op(I[31:26]),
					.RegDst(RegDst),
					.ALUSrc(ALUSrc),
					.MemtoReg(MemtoReg),
					.RegWrite(RegWrite),
					.MemRead(MemRead),
					.MemWrite(MemWrite),
					.Branch(Branch),
					.ALUOp(ALUOp[1:0]),
					.Jump(Jump)
					);
	CPU_EU eu1(.clk(clk),
				  .RegDst(RegDst),
				  .ALUSrc(ALUSrc),
				  .ALUOp(ALUOp[1:0]),
				  .RegWrite(RegWrite),
				  .MemtoReg(MemtoReg),
				  .Instruction(I[25:0]),
				  .SEImm(SEImm[31:0]),
				  .RAM_Address(RAM_Address[31:0]),
				  .Data_to_RAM(Data_to_RAM[31:0]),
				  .Data_from_RAM(Data_from_RAM[31:0]),
				  .Zero(Zero)
				  );
	DMEM_256x8 DMEM(.clock(clk),
			          .MemWrite(MemWrite),
						 .Address(RAM_Address [7:0]),
						 .WriteData(Data_to_RAM[31:0]),
						 .MemRead(MemRead),
						 .ReadData(Data_from_RAM[31:0])
						 );
endmodule