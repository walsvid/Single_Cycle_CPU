`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:42:22 11/24/2016
// Design Name:   SHIFTER
// Module Name:   C:/Users/wen/git/Single_Cycle_CPU/SHIFTER_tb.v
// Project Name:  Single_Cycle_CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SHIFTER
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SHIFTER_tb;

	// Inputs
	reg [31:0] data;
	reg [4:0] Sa;
	reg Right;
	reg Arith;

	// Outputs
	wire [31:0] O;

	// Instantiate the Unit Under Test (UUT)
	SHIFTER uut (
		.data(data), 
		.Sa(Sa), 
		.Right(Right), 
		.Arith(Arith), 
		.O(O)
	);

	initial begin
		// Initialize Inputs
		data = 0;
		Sa = 0;
		Right = 0;
		Arith = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		data = 32'hFFFFFFFF;
		Sa = 2;
	end
      
endmodule

