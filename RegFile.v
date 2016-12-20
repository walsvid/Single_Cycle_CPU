`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:09:14 01/01/2008 
// Design Name: 
// Module Name:    RegFile 
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
module RegFile(Ra, Rb, Rw, Clock, Write, busW, busA, busB, w_R31, r_R31, using_jr);
	input		[4:0]		Ra;
	input		[4:0]		Rb;
	input		[4:0]		Rw;
	input					Clock;
	input					Write;
	input		[31:0] 	busW;
	input		[31:0]	w_R31;
	input					using_jr;
	
	output	[31:0]	busA;
	output	[31:0]	busB;
	output 	[31:0]	r_R31;

	reg [31:0] Register[1:31];
	
	//Read Data
	assign busA = (Ra == 0) ? 0 : Register[Ra];
	assign busB = (Rb == 0) ? 0 : Register[Rb];
	
	//Write Data 
	//integer i;
	always @ (posedge Clock) begin
		if ((using_jr)) begin
			Register[5'b11111] <= w_R31;
		end
		if ((Write) && (Rw != 0)) Register[Rw] <= busW;
	end
	
	assign r_R31 = Register[5'b11111];

endmodule
