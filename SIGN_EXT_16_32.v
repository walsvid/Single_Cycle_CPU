`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:07:02 11/24/2016 
// Design Name: 
// Module Name:    SIGN_EXT_16_32 
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
module SIGN_EXT_16_32(data_in_16, data_out_32);
	input [15:0] data_in_16;
	output [31:0] data_out_32;
	
	assign data_out_32 = {{16{data_in_16[15]}}, data_in_16[15:0]};

endmodule
