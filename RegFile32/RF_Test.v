`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:20:01 03/02/2017
// Design Name:   RegFile32
// Module Name:   C:/Users/clner/Documents/CECS225/RegFile32/RF_Test.v
// Project Name:  RegFile32
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RegFile32
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RF_Test;

	// Inputs
	reg [4:0] Read1;
	reg [4:0] Read2;
	reg [4:0] WriteReg;
	reg [31:0] WriteData;
	reg clock;
	reg RegWrite;

	// Outputs
	wire [31:0] Data1;
	wire [31:0] Data2;

	// Instantiate the Unit Under Test (UUT)
	RegFile32 uut (
		.Read1(Read1),
		.Read2(Read2), 
		.WriteReg(WriteReg), 
		.WriteData(WriteData), 
		.clock(clock), 
		.RegWrite(RegWrite), 
		.Data1(Data1), 
		.Data2(Data2)
	);
	
	integer i;
	
	always #5 clock = ~clock;;

	initial begin
		// Initialize Inputs
		Read1 = 0;
		Read2 = 0;
		WriteReg = 0;
		WriteData = 0;
		clock = 0;
		RegWrite = 1;
		#10;
				
	$display("Writing to Registers");
	$display("--------------------");
		
	//register intialization loop
		
	for(i =0; i< 32; i = i+1)
	begin
		@(posedge clock)
		begin 
			WriteData = $random;
			WriteReg = i;
		end
		@(negedge clock)
			#0 $display("$%d <- 0x%h", WriteReg, WriteData);
	end
	
	#5 RegWrite = 0;
	
	$display(" ");
	$display("Reading from Registers");
	$display("--------------------");
	
	//read loop
	
	for(i = 0; i<32; i = i+2)
	begin
		Read1 = i;
		Read2 = i+1;
		 #0 $display("$%d = 0x%h", Read1, Data1);
		 #0 $display("$%d = 0x%h", Read2, Data2);
	end
	
	$stop;
	
	end
      
endmodule

