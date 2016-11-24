`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:26:53 11/24/2016
// Design Name:   SIGN_EXT_16_32
// Module Name:   C:/Users/wen/git/Single_Cycle_CPU/SIGN_EXT_16_32_tb.v
// Project Name:  Single_Cycle_CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SIGN_EXT_16_32
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SIGN_EXT_16_32_tb;

	// Inputs
	reg [15:0] data_in_16;

	// Outputs
	wire [31:0] data_out_32;

	// Instantiate the Unit Under Test (UUT)
	SIGN_EXT_16_32 uut (
		.data_in_16(data_in_16), 
		.data_out_32(data_out_32)
	);

	initial begin
		// Initialize Inputs
		data_in_16 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		data_in_16 = 16'hFFF0;
		
		#100;
		
		data_in_16 = 16'h000F;

	end
      
endmodule

