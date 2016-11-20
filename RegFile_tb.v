`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:03:51 01/01/2008
// Design Name:   RegFile
// Module Name:   E:/Single_Cycle_CPU/RegFile_tb.v
// Project Name:  Single_Cycle_CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RegFile
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RegFile_tb;

	// Inputs
	reg [4:0] Rn1;
	reg [4:0] Rn2;
	reg [4:0] Wn;
	reg Write;
	reg [31:0] Wd;
	reg Clock;

	// Outputs
	wire [31:0] A;
	wire [31:0] B;

	// Instantiate the Unit Under Test (UUT)
	RegFile uut (
		.Rn1(Rn1), 
		.Rn2(Rn2), 
		.Wn(Wn), 
		.Write(Write), 
		.Wd(Wd), 
		.A(A), 
		.B(B), 
		.Clock(Clock)
	);

	initial begin
		// Initialize Inputs
		Rn1 = 0;
		Rn2 = 0;
		Wn = 0;
		Write = 0;
		Wd = 0;
		Clock = 0;

		// Wait 100 ns for global reset to finish
		#100;
      Rn1 = 1;
		Rn2 = 0;
		Wn = 1;
		Write = 1;
		Wd = 4;
		Clock = ~Clock;

		#100;
		Clock = ~Clock;
		
    	#100;
      Rn1 = 1;
		Rn2 = 2;
		Wn = 2;
		Write = 1;
		Wd = 5;
		Clock = ~Clock;
		
		#100;
		Clock = ~Clock;
		
    	#100;
      Rn1 = 1;
		Rn2 = 2;
		Wn = 2;
		Write = 1;
		Wd = 5;
		Clock = ~Clock;
		
		#100;
		Clock = ~Clock;	
		
    	#100;
      Rn1 = 1;
		Rn2 = 2;
		Wn = 0;
		Write = 0;
		Wd = 0;
		Clock = ~Clock;
		// Add stimulus here

	end
      
endmodule

