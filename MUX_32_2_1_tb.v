`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:17:57 01/01/2008
// Design Name:   MUX_32_2_1
// Module Name:   E:/Single_Cycle_CPU/MUX_32_2_1_tb.v
// Project Name:  Single_Cycle_CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUX_32_2_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MUX_32_2_1_tb;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;
	reg Sel;

	// Outputs
	wire [31:0] O;

	// Instantiate the Unit Under Test (UUT)
	MUX_32_2_1 uut (
		.A(A), 
		.B(B), 
		.Sel(Sel), 
		.O(O)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		Sel = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
      A = 0;
		B = 0;
		Sel = 0;
		
		#100;
      A = 0;
		B = 1;
		Sel = 1;
		
		// Add stimulus here

	end
      
endmodule

