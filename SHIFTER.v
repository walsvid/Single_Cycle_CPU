`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:35:08 11/24/2016 
// Design Name: 
// Module Name:    SHIFTER 
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
module SHIFTER(data, Sa, Right, Arith, O);
	input [31:0] data;
	input [4:0] Sa;
	input Right;
	input Arith;
	output reg [31:0] O;

	always @(*) begin
		if(!Right)			O = data << Sa;
		else if (!Arith)	O = data >> Sa;
		else 					O = $signed(data) >> Sa;
	end

endmodule
