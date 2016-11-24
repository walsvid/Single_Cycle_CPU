`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:10:38 11/24/2016 
// Design Name: 
// Module Name:    MUX_32_4_1 
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
module MUX_32_4_1(A, B, C, D, Sel, O);
	input		[31:0]	A;
	input		[31:0]	B;
	input		[31:0]	C;
	input		[31:0]	D;
	input			 		Sel;
	output	[31:0]	O;

	assign O =	(Sel == 2'b00) ? A :
					(Sel == 2'b01) ? B :
					(Sel == 2'b10) ? C :
										  D;
endmodule
