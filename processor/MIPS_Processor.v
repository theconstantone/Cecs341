`timescale 1ns / 1ps

module MIPS_Processor( clk,Zero_Flag);
	input clk;
	output Zero_Flag;
	
	wire [31:0] Pc_Out,
					PC_Out_plus4,
					PC_Next,
					SEImm32,
					SL2SEImm32,
					JumpAddress,
					BranchTarget,
					BranchMuxOut;
	wire [25:0] I_Offset;
	
	wire			Zero_Flag,
					Branch_Flag,
					Jump_Flag,
					PC0_Branch1;
	
	ProgramCounter PC(.clk(clk),
							.PC_In(PC_Next),
							.PC_Out(Pc_Out)
							);
	
	ALU_32 PCIncrementer(.A(Pc_Out),
								.B(32'h4),
								.ALU_Ctl(4'h2),
								//.Zero(1'b0),
								.Output(PC_Out_plus4)
								);
	MIPS_CORE MC0(.clk(clk),
					  .ReadAddr(Pc_Out),
					  .SEImm(SEImm32),
					  .JumpValue(I_Offset),
					  .Zero(Zero_Flag),
					  .Branch(Branch_Flag),
					  .Jump(Jump_Flag)
					  );
	
	assign JumpAddress = { PC_Out_plus4 [31:28], I_Offset, 2'b00 };
	
	ShiftLeft2_32bit sl2forBranch (.In32(SEImm32),
											 .Out32(SL2SEImm32)
											 );
	
	ALU_32 BranchTargetAdder(.A(PC_Out_plus4),
									 .B(SL2SEImm32),
									 .ALU_Ctl(4'h2),
									 //.Zero(1'b0),
									 .Output(BranchTarget)
									 );
							
	assign PC0_Branch1 = Zero_Flag & Branch_Flag;
	
	Mux2to1_32bit BranchMux(.Input0(PC_Out_plus4),
									.Input1(BranchTarget),
									.Sel(PC0_Branch1),
									.Output_Mux(BranchMuxOut)
									);
									
	Mux2to1_32bit JumpMux (.Input0(BranchMuxOut),
								  .Input1(JumpAddress),
								  .Sel(Jump_Flag),
								  .Output_Mux(PC_Next)
								  );
	

endmodule
