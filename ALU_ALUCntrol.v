`timescale 1ns / 1ps

module ALU_ALUCntrol(
input   [5:0] FuncCode,
	input   [1:0] ALU_op,
	input  [31:0] A, B,
	output  [31:0] Output,
	output 		  Zero_Flag
    );


		wire [3:0] ALU_Ctl;
						
		ALU_Control	a1( FuncCode , ALU_op, ALU_Ctl);
						
		ALU alu1 ( ALU_Ctl, A, B, Output, Zero_Flag);

endmodule