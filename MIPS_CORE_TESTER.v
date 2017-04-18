`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:17:24 04/13/2017
// Design Name:   MIPS_CORE
// Module Name:   C:/Users/clner/Documents/CECS225/MIPS_CORE/MIPS_CORE_TESTER.v
// Project Name:  MIPS_CORE
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MIPS_CORE
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MIPS_CORE_TESTER;

	// Inputs
	reg clk;
	reg [7:0] ReadAddr;

	// Outputs
	wire [31:0] SEImm;
	wire [25:0] JumpValue;
	wire Zero;
	wire Branch;
	wire Jump;

	// Instantiate the Unit Under Test (UUT)
	MIPS_CORE uut (
		.clk(clk), 
		.ReadAddr(ReadAddr), 
		.SEImm(SEImm), 
		.JumpValue(JumpValue), 
		.Zero(Zero), 
		.Branch(Branch), 
		.Jump(Jump)
	);
	
	integer i;

	always #5 clk = ~clk;
	initial begin
	
		// Initialize Inputs
		clk = 0;
		ReadAddr = 0;
	
		//
		
		for (i =1;i<32; i = i+1)
			uut.eu1.RF32.RF[i] = i;
			
		for (i=0; i<256; i = i+1)
			uut.DMEM.DM[i] = $random;
			
		//instruction 0; and $31, $22, $13
		{uut.IMEM.IM[0],uut.IMEM.IM[1], uut.IMEM.IM[2],uut.IMEM.IM[3]} = 32'h02cdf824;

				//instruction 1; slt $1, $2, $3
		{uut.IMEM.IM[4],uut.IMEM.IM[5], uut.IMEM.IM[6],uut.IMEM.IM[7]} = 32'h0043082a;
				//instruction 2; lw $12, 20($20)
		{uut.IMEM.IM[8],uut.IMEM.IM[9], uut.IMEM.IM[10],uut.IMEM.IM[11]} = 32'h8e8c0014;
				//instruction 3; sw $4, 0($0)
		{uut.IMEM.IM[12],uut.IMEM.IM[13], uut.IMEM.IM[14],uut.IMEM.IM[15]} = 32'hac040000;
				//instruction 4; beq $5, $6, 0xffffffff
		{uut.IMEM.IM[16],uut.IMEM.IM[17], uut.IMEM.IM[18],uut.IMEM.IM[19]} = 32'h10a6ffff;
				//instruction 5; sub $7, $8, $9;
		{uut.IMEM.IM[20],uut.IMEM.IM[21], uut.IMEM.IM[22],uut.IMEM.IM[23]} = 32'h01093822;
				//instruction 6; j 0x00400010
		{uut.IMEM.IM[24],uut.IMEM.IM[25], uut.IMEM.IM[26],uut.IMEM.IM[27]} = 32'h08100004;
		
		
		//
		
		for(i=0;i<7;i = i+1)
			@(posedge clk) begin
				ReadAddr = i*4;
				#6;
				case(i)
				0:begin 
					$display("Test case 1: and $31, $22,$13");
					$display("expected result: $31 = 0x%h", uut.eu1.RF32.RF[22] & uut.eu1.RF32.RF[13]);
					$display("actual result: $31 = 0x%h", uut.eu1.RF32.RF[31]);
					end
				1:begin
					$display("Test case 1: slt $1, $2,$3");
					$display("expected result: $1 = 0x%h",{31'h0,( uut.eu1.RF32.RF[2] < uut.eu1.RF32.RF[3])});
					$display("actual result: $1 = 0x%h", uut.eu1.RF32.RF[1]);
					$display("--------------------------------------------------------------------------");
					end
				2:begin
					$display("test case 3 : lw $12,20($20)");
					$display("expected result: $12 = 0x%h",
									{uut.DMEM.DM[40],
									 uut.DMEM.DM[41],
									 uut.DMEM.DM[42],
									 uut.DMEM.DM[43]} );
					$display("actual result : $12 = 0x%h", uut.eu1.RF32.RF[12]);
					$display("--------------------------------------------------------------------------");
					end
				3:begin
					$display("test case 4: sw$4, 0($0)");
					$display("expected result : DMEM[0] = 0x%h", uut.eu1.RF32.RF[4]);
					#5;
					$display("actual result: DMEM[0] = 0x%h",
						{ uut.DMEM.DM[0],
						  uut.DMEM.DM[1],
						  uut.DMEM.DM[2],
						  uut.DMEM.DM[3]} );
					$display("---------------------------------------------------------------------------");
					end
				4:begin
					$display("test case 5: beq $5,$6,0xffffffff");
					$display("exepcted results");
					$display(" Zero = 0");
					$display("branch = 1");
					$display("SEImm = 0xffffffff");
					$display("actaul results");
					$display("zero = %b", Zero);
					$display("branch = %b", Branch);
					$display("SEImm = ox%h",SEImm);
					$display("---------------------------------------------------------------------------");
					end
				5:begin
					$display("test case 6 : sub $7,$8,$9");
					$display("expected result $7=0x%h", uut.eu1.RF32.RF[8] - uut.eu1.RF32.RF[9]);
					$display("actual result: $7 = 0x%h", uut.eu1.RF32.RF[7]);
					$display("---------------------------------------------------------------------");
					end
				6:begin
					$display("test case 7 ; jump to imem address 0x0040010");
					$display("expected result: JumpValue = 0x0100004");
					$display("actual result : JumpValue = 0x%h", JumpValue);
					$display("--------------------------------------------------------------------------------");
					end
				default: begin
					$display("Invalid test case");
					end
		endcase
		end
	#20 $stop;

	end
      
endmodule

