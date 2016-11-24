`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:15:44 01/01/2008 
// Design Name: 
// Module Name:    ALU 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ALU(A, B, ALU_operation, Result, Zero);
	input		[31:0]	A;
	inout		[31:0]	B;
	input		[2:0]		ALU_operation;
	output	[31:0]	Result;
	output				Zero;

	assign Result = (ALU_operation == 3'b000) ? A + B :
						 (ALU_operation == 3'b100) ? A - B :
						 (ALU_operation == 3'b001) ? A & B :
						 (ALU_operation == 3'b101) ? A | B :
						 (ALU_operation == 3'b010) ? A ^ B :
						 (ALU_operation == 3'b110) ? {B[15:0],16'h0} :
						 32'hxxxxxxxx;
	
	 assign Zero = ~| Result;




endmodule