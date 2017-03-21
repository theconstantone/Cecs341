`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:18:32 02/14/2017
// Design Name:   Control
// Module Name:   C:/Users/clner/Documents/CECS225/CECS341_lab3/test.v
// Project Name:  CECS341_lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Control
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg [5:0] Op;

	// Outputs
	wire RegDst;
	wire ALUSrc;
	wire MemtoREg;
	wire RegWrite;
	wire MemRead;
	wire MemWrite;
	wire Branch;
	wire [1:0] ALUOp;
	wire Jump;

	// Instantiate the Unit Under Test (UUT)
	Control uut (
		.Op(Op), 
		.RegDst(RegDst), 
		.ALUSrc(ALUSrc), 
		.MemtoREg(MemtoREg), 
		.RegWrite(RegWrite), 
		.MemRead(MemRead), 
		.MemWrite(MemWrite), 
		.Branch(Branch), 
		.ALUOp(ALUOp), 
		.Jump(Jump)
	);

	initial begin
		// Initialize Inputs
		Op = 0;

		//test case #1
		Op = 32'h000000;
		#10
		//test case #2
		Op = 32'h000023;
		#10
		//test case #3
		Op = 32'h 00002B;
		#10
		//test case #4
		Op = 32'h000004;
		#10
		//testcase #5
		Op = 32'h000002;
		#10
		//testcase #6
		Op = 32'h011111;
		#10
      $stop;
		// Add stimulus here

	end
      
endmodule

