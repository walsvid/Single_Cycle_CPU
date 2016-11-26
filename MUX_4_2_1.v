`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:49:10 11/26/2016 
// Design Name: 
// Module Name:    MUX_4_2_1 
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
module MUX_4_2_1(A, B, Sel, O);
	input		[3:0]	A;
	input		[3:0]	B;
	input				Sel;
	output	[3:0] O;

	assign O = Sel ? B : A;

endmodule
