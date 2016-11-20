`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:08:06 01/01/2008 
// Design Name: 
// Module Name:    MUX_5_2_1 
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
module MUX_5_2_1(
	input [4:0] A,
	input [4:0] B,
	input			Sel,
	output [4:0] O
    );

	assign O = Sel ? B : A;


endmodule
