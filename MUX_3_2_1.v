`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:43:42 11/25/2016 
// Design Name: 
// Module Name:    MUX_3_2_1 
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
module MUX_3_2_1(A, B, Sel, O);
	input		[2:0]	A;
	input		[2:0]	B;
	input				Sel;
	output	[2:0] O;

	assign O = Sel ? B : A;


endmodule