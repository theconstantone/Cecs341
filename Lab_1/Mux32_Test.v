`timescale 1ns / 1ps

module Mux32_Test;

	//inputs
	reg [31:0] In0;
	reg [31:0] In1;
	reg Sel;
	// Outputs
	wire [31:0] Out ;

	// Instantiate the Unit Under Test (UUT)
	twoto1_32mux uut (
		.In0(In0),
		.In1(In1),
		.Sel(Sel),
		.Out(Out)
	);

	initial begin
		// Initialize Inputs
		In0 = 32'h12345678;
		In1 = 32'hFEDCBA98;
		Sel = 1'b0;
		#10
		//testcase 1
	   In0 = 32'h12345678;
		In1 = 32'hFEDCBA98;
		Sel = 1'b1;
		#10
		//testcase2
	   In0 = 32'h00000000;
		In1 = 32'h11111111;
		Sel = 1'b0;
		#10
		//testcase3
	   In0 = 32'h00000000;
		In1 = 32'h11111111;
		Sel = 1'b1;
		#10
		//testcase4
	   In0 = 32'h12345678;
		In1 = 32'hFEDCBA98;
		Sel = 1'bX;
		#10
		$stop;
		


	end
      
endmodule

