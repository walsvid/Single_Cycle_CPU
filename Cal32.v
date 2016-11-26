`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:48:20 11/26/2016 
// Design Name: 
// Module Name:    Cal32 
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
module Cal32(A, B, Sub, Result, Overflow);
	input		[31:0]	A;
	input 	[31:0]	B;
	input					Sub;
	output	[31:0]	Result;
	output			Overflow;
	
	assign Result = A + (B^{32{Sub}}) + Sub;
	
	assign Overflow = Sub == 0	?	( A[31] & B[31] & ~Result[31] | ~A[31] & ~B[31] &  Result[31]) :
											(~A[31] & B[31] &  Result[31] |  A[31] & ~B[31] & ~Result[31]) ;

endmodule
