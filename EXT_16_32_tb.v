`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:32:21 12/11/2016
// Design Name:   EXT_16_32
// Module Name:   C:/Users/wen/git/Single_Cycle_CPU/EXT_16_32_tb.v
// Project Name:  Single_Cycle_CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: EXT_16_32
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module EXT_16_32_tb;

	// Inputs
	reg ExtOp;
	reg [15:0] data_in_16;

	// Outputs
	wire [31:0] data_out_32;

	// Instantiate the Unit Under Test (UUT)
	EXT_16_32 uut (
		.ExtOp(ExtOp), 
		.data_in_16(data_in_16), 
		.data_out_32(data_out_32)
	);

	initial begin
		// Initialize Inputs
		ExtOp = 0;
		data_in_16 = 16'hFFFF;

		// Wait 100 ns for global reset to finish
		#100;
      ExtOp = 1;
		// Add stimulus here

	end
      
endmodule

