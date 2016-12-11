`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:49:37 11/25/2016 
// Design Name: 
// Module Name:    ALU_CTR 
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
module ALU_CTR(func, ALUop_ctr, Shift);
	input		[5:0]		func;
	output	[3:0]		ALUop_ctr;
	output				Shift;
	
	assign ALUop_ctr	= 	(func == 6'b100000) ? 4'b1110 : 
								(func == 6'b100010) ? 4'b0100 : 	
								(func == 6'b100100) ? 4'b0010 : 	
								(func == 6'b100101) ? 4'b0011 : 	
								(func == 6'b100110) ? 4'b0111 : 	
								(func == 6'b000000) ? 4'b1010 : 	
								(func == 6'b000010) ? 4'b1000 : 	
								(func == 6'b000011) ? 4'b1001 : 	
								(func == 6'b001000) ? 4'b1100 : 
								4'bxxxx;

	assign Shift = (func == 6'b000000 || func == 6'b000010 || func == 6'b000011) ? 1'b1 : 1'b0;
endmodule
