`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:16:28 02/14/2017
// Design Name:   Control
// Module Name:   C:/Users/clner/Documents/CECS225/CECS341_lab3/tester.v
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

module tester;

	// Inputs
	reg [5:0] Op;
	reg MEmRead;

	// Outputs
	wire RegDst;
	wire ALUSrc;
	wire MemtoREg;
	wire RegWrite;
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
		.MEmRead(MEmRead), 
		.MemWrite(MemWrite), 
		.Branch(Branch), 
		.ALUOp(ALUOp), 
		.Jump(Jump)
	);

	initial begin
		// Initialize Inputs
		Op = 0;
		MEmRead = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

