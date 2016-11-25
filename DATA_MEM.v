`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:38:56 11/25/2016 
// Design Name: 
// Module Name:    DATA_MEM 
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
module DATA_MEM(dataout, datain, addr, ReadWrite, Clock);
	output	[31:0]	dataout;
	input		[31:0]	datain;
	input		[31:0]	addr;
	input					ReadWrite; 
	input 				Clock;

	reg [31:0] ram [0:31];
	
	assign dataout = ReadWrite == 0? ram[addr[6:2]] : 0;
	
	always @(posedge Clock)
	    if (ReadWrite) ram[addr[6:2]] = datain;
	
	integer i;
	
	initial begin
			for ( i = 0 ; i <= 31 ; i = i + 1) ram [i] = i * i;
	end		
	

endmodule
