`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:06:24 11/24/2016 
// Design Name: 
// Module Name:    PC 
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
module PC(next_pc, Clock, Reset, addr);
	input		[31:0]	next_pc;
	input 				Clock;
	input 				Reset;
	output	[31:0]	addr;

	reg [31:0] pc;
	assign addr = pc;
	always @(posedge Clock) begin
		pc = Reset ? 0 : next_pc;
	end
	
	initial pc = 0;

endmodule
