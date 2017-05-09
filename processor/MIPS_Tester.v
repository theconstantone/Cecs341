`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:43:38 05/09/2017
// Design Name:   MIPS_Processor
// Module Name:   C:/Users/clner/Documents/CECS225/Single_Cycle_Processor/MIPS_Tester.v
// Project Name:  Single_Cycle_Processor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MIPS_Processor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
module MIPS_Tester;

	//inputs
	
	reg clk;

	// Outputs
	wire Zero_Flag;

	// Instantiate the Unit Under Test (UUT)
	MIPS_Processor uut (
		.clk(clk),
		.Zero_Flag(Zero_Flag)
	);
	
	//define symbolic constant for instruction
	
	parameter NOP = 32'h00000020,
					add_$2_$0_$0 = 32'h00001020,
					add_$3_$0_$0 = 32'h00001820,
					slt_$4_$2_$5 = 32'h0045202a,
					beq_$4_$0_exit_loop = 32'h10800004,
							add_$4_$2_$2 = 32'h00422020,
							add_$6_$4_$4 = 32'h00843020,
							lw_$7_DMEM$6 = 32'h8cc70007,
							add_$3_$3_$7 = 32'h00671820,
							add_$2_$2_$1 = 32'h00411020,
							j_0x000C = 32'h08000003,
					sw_$3_DMEM$0 = 32'hac03000B ;

	integer i,j;
	
	always #5 clk = ~clk;
	
	/********************************/
	
	always
	
			#10 if (uut.MC0.IMEM.Instruction == sw_$3_DMEM$0)
				#20$finish;
	/********************************/
	
	always @(posedge clk)
	begin
			$timeformat(-9,1,"ns",0);
			$display("at time %t", $time);
			#1;
			case( uut.MC0.IMEM.Instruction)
			
			NOP: begin
							$display("NOP was executed");
						end
			add_$2_$0_$0 : begin
								$display("add,$1,$1,$2 was executed");
								$display("Register values before");
								$display("\t$1 = %h, $2 =%h",
													uut.MC0.eu1.RF32.RF[0],
													uut.MC0.eu1.RF32.RF[0] );
							   @(negedge clk) #1;
								$display("Destination register content after");
								$display("\t$1 = %h", uut.MC0.eu1.RF32.RF[2]);
							end
			add_$3_$0_$0 : begin
								$display("add,$1,$1,$2 was executed");
								$display("Register values before");
								$display("\t$1 = %h, $2 =%h",
													uut.MC0.eu1.RF32.RF[0],
													uut.MC0.eu1.RF32.RF[0] );
							   @(negedge clk) #1;
								$display("Destination register content after");
								$display("\t$1 = %h", uut.MC0.eu1.RF32.RF[3]);
							end
			slt_$4_$2_$5 : begin
								$display("set $2 less $5");
								$display("\t$1 = %h",uut.MC0.eu1.RF32.RF[4]);
							end
			
			beq_$4_$0_exit_loop : begin
								$display("beq $1, $13, exitloop was executed");
								if(uut.PC0_Branch1)
									$display("Branch was taken");
								else
									$display("Branch was not taken...");
						end
			add_$4_$2_$2: begin
								$display("add,$4,$2,$2 was executed");
								$display("Register values before");
								$display("\t$1 = %h, $2 =%h",
													uut.MC0.eu1.RF32.RF[2],
													uut.MC0.eu1.RF32.RF[2] );
							   @(negedge clk) #1;
								$display("Destination register content after");
								$display("\t$1 = %h", uut.MC0.eu1.RF32.RF[4]);
							end
			add_$6_$4_$4 : begin
								$display("add,$6,$4,$4 was executed");
								$display("Register values before");
								$display("\t$1 = %h, $2 =%h",
													uut.MC0.eu1.RF32.RF[4],
													uut.MC0.eu1.RF32.RF[4] );
							   @(negedge clk) #1;
								$display("Destination register content after");
								$display("\t$1 = %h", uut.MC0.eu1.RF32.RF[6]);
							end
			lw_$7_DMEM$6 : begin
								$display("value being stored is");
								$display("\t$1 = %h", uut.MC0.eu1.RF32.RF[7]);
								end
			
			
			add_$3_$3_$7 : begin
								$display("add,$6,$4,$4 was executed");
								$display("Register values before");
								$display("\t$1 = %h, $2 =%h",
													uut.MC0.eu1.RF32.RF[3],
													uut.MC0.eu1.RF32.RF[7] );
							   @(negedge clk) #1;
								$display("Destination register content after");
								$display("\t$1 = %h", uut.MC0.eu1.RF32.RF[3]);
							end


			add_$2_$2_$1 : begin
								$display("add,$6,$4,$4 was executed");
								$display("Register values before");
								$display("\t$1 = %h, $2 =%h",
													uut.MC0.eu1.RF32.RF[2],
													uut.MC0.eu1.RF32.RF[1] );
							   @(negedge clk) #1;
								$display("Destination register content after");
								$display("\t$1 = %h", uut.MC0.eu1.RF32.RF[2]);
							end

			j_0x000C : begin
						$display("Jump to IMEM 0x0000000c was executed");
					end
			sw_$3_DMEM$0 : begin
							$display("Halt Instruction has been reached");
							case (j)
									0: begin
											j = j +1;
											$display("time to end simulation");
										end
									1: begin
											j = j +1;
											$display("seriously end the simulation");
										end
									2: begin
											j = j +1;
											$display("End Simutlation NOW");
										end
									default : begin
											j = j +1;
											$display("You should not be seeing this message");
										end
							endcase
						end
			default : begin
							$display("Unanticipated instruction has been executed");
						end
					endcase
						$display("");
	end 
	
	/***********************************************/
	
	
			

	initial begin
		// Initialize Inputs
		clk = 0;
		j = 0;

		//
		for (i = 1; i<32; i = i +1)
			uut.MC0.eu1.RF32.RF[i] = i;
			
		// 
		for (i = 0; i<256; i = i+1)
			uut.MC0.DMEM.DM[i] = $random;
			
		uut.PC.PC_Out = 0;
		
		//add $0,$0,$0
		{ uut.MC0.IMEM.IM[0],
		  uut.MC0.IMEM.IM[1],
		  uut.MC0.IMEM.IM[2],
		  uut.MC0.IMEM.IM[3] } = NOP;
		  
		// add $1,$1,$2
		{ uut.MC0.IMEM.IM[4],
		  uut.MC0.IMEM.IM[5],
		  uut.MC0.IMEM.IM[6],
		  uut.MC0.IMEM.IM[7] } = add_$2_$0_$0 ;
		// add $3,$0,$0
		{ uut.MC0.IMEM.IM[8],
		  uut.MC0.IMEM.IM[9],
		  uut.MC0.IMEM.IM[10],
		  uut.MC0.IMEM.IM[11] } = add_$3_$0_$0 ;		  
		// slt
		{ uut.MC0.IMEM.IM[12],
		  uut.MC0.IMEM.IM[13],
		  uut.MC0.IMEM.IM[14],
		  uut.MC0.IMEM.IM[15] }= slt_$4_$2_$5	;
		// beq
		{ uut.MC0.IMEM.IM[16],
		  uut.MC0.IMEM.IM[17],
		  uut.MC0.IMEM.IM[18],
		  uut.MC0.IMEM.IM[19] } = beq_$4_$0_exit_loop;
		  // add $1,$1,$2
		{ uut.MC0.IMEM.IM[20],
		  uut.MC0.IMEM.IM[21],
		  uut.MC0.IMEM.IM[22],
		  uut.MC0.IMEM.IM[23] } = add_$2_$0_$0 ;
		  		// add $1,$1,$2
		{ uut.MC0.IMEM.IM[24],
		  uut.MC0.IMEM.IM[25],
		  uut.MC0.IMEM.IM[26],
		  uut.MC0.IMEM.IM[27] } = add_$2_$0_$0 ;
		//lw
		{ uut.MC0.IMEM.IM[28],
		  uut.MC0.IMEM.IM[29],
        uut.MC0.IMEM.IM[30],
        uut.MC0.IMEM.IM[31]		  } = lw_$7_DMEM$6;
		  		// add $1,$1,$2
		{ uut.MC0.IMEM.IM[32],
		  uut.MC0.IMEM.IM[33],
		  uut.MC0.IMEM.IM[34],
		  uut.MC0.IMEM.IM[35] } = add_$3_$3_$7 ;
		  		// add $1,$1,$2
		{ uut.MC0.IMEM.IM[36],
		  uut.MC0.IMEM.IM[37],
		  uut.MC0.IMEM.IM[38],
		  uut.MC0.IMEM.IM[39] } = add_$2_$2_$1;
		// j0x 00000C
		{ uut.MC0.IMEM.IM[40],
		  uut.MC0.IMEM.IM[41],
		  uut.MC0.IMEM.IM[42],
		  uut.MC0.IMEM.IM[43] } = j_0x000C;
		//j 0x000005
		{ uut.MC0.IMEM.IM[44],
		  uut.MC0.IMEM.IM[45],
		  uut.MC0.IMEM.IM[46],
		  uut.MC0.IMEM.IM[47] } = sw_$3_DMEM$0;
		
	end
      
endmodule

