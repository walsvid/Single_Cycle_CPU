`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:13:18 01/01/2008
// Design Name:   RegFile
// Module Name:   D:/ssss/Single_Cycle_CPU/RegFile_tb.v
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
	reg [4:0] Ra;
	reg [4:0] Rb;
	reg [4:0] Rw;
	reg Clock;
	reg Write;
	reg [31:0] busW;
	reg [31:0] w_R31;

	// Outputs
	wire [31:0] busA;
	wire [31:0] busB;
	wire [31:0] r_R31;

	// Instantiate the Unit Under Test (UUT)
	RegFile uut (
		.Ra(Ra), 
		.Rb(Rb), 
		.Rw(Rw), 
		.Clock(Clock), 
		.Write(Write), 
		.busW(busW), 
		.busA(busA), 
		.busB(busB), 
		.w_R31(w_R31), 
		.r_R31(r_R31)
	);

	initial begin
		// Initialize Inputs
		Ra = 0;
		Rb = 0;
		Rw = 0;
		Clock = 0;
		Write = 1;
		busW = 0;
		w_R31 = 32'hFFFF0000;

		// Wait 100 ns for global reset to finish
		#100;
      Ra = 1;
		Rb = 0;
		Rw = 1;
		busW = 4;
		Clock = ~Clock;

		#100;
		Clock = ~Clock;
		
    	#100;
      Ra = 1;
		Rb = 2;
		Rw = 2;
		busW = 5;
		Clock = ~Clock;
		
		#100;
		Clock = ~Clock;
		
    	#100;
      Ra = 1;
		Rb = 2;
		Rw = 2;
		busW = 5;
		Clock = ~Clock;
		
		#100;
		Clock = ~Clock;	
		
    	#100;
      Ra = 1;
		Rb = 2;
		Rw = 0;
		busW = 0;
		Clock = ~Clock;
		// Add stimulus here

	end
      
endmodule

