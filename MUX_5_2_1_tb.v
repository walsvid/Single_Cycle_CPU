`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:50:03 01/01/2008
// Design Name:   MUX_5_2_1
// Module Name:   E:/Single_Cycle_CPU/MUX_5_2_1_tb.v
// Project Name:  Single_Cycle_CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUX_5_2_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MUX_5_2_1_tb;

	// Inputs
	reg [4:0] A;
	reg [4:0] B;
	reg Sel;

	// Outputs
	wire [4:0] O;

	// Instantiate the Unit Under Test (UUT)
	MUX_5_2_1 uut (
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
		
		//Add stimulus here

	end
      
endmodule

