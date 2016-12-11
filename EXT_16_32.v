`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:30:21 12/11/2016 
// Design Name: 
// Module Name:    EXT_16_32 
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
module EXT_16_32(ExtOp, data_in_16, data_out_32);
	input ExtOp;
	input [15:0] data_in_16;
	output [31:0] data_out_32;

	assign data_out_32 = ExtOp ?	{{16{data_in_16[15]}}, data_in_16[15:0]} :
											{{16{0}}, data_in_16[15:0]};

endmodule
