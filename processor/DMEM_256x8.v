`timescale 1ns / 1ps

module DMEM_256x8( clock, MemWrite, Address, WriteData, 
						MemRead, ReadData);
						
						input clock, MemWrite, MemRead;
						input [7:0] Address;
						input [31:0] WriteData;
						output reg [31:0] ReadData;
						
						reg [7:0] DM [0:255];
						
						always @(posedge clock)
						begin
							if(MemWrite == 1)
							begin
								DM[Address+0] <= WriteData[31:24];
								DM[Address+1] <= WriteData[23:16];
								DM[Address+2] <= WriteData[15:8];
								DM[Address+3] <= WriteData[7:0];
							end
						end
						
						always @(MemRead,Address,DM)
						begin 
							if(MemRead == 1)
							begin 
								ReadData <= { DM[Address+0],
													DM[Address+1],
													DM[Address+2],
													DM[Address+3] };
							end
						end
						


endmodule