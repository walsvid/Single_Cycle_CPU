`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:17:08 01/01/2008 
// Design Name: 
// Module Name:    MUX_32_2_1 
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
module MUX_32_2_1(A, B, Sel, O);
	input		[31:0]	A;
	input		[31:0]	B;
	input			 		Sel;
	output	[31:0]	O;

	assign O = Sel ? B : A;

endmodule
