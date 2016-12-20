`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:27:20 01/01/2008
// Design Name:   CPU
// Module Name:   D:/Single_Cycle_CPU/CPU_tb.v
// Project Name:  Single_Cycle_CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CPU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CPU_tb;

	// Inputs
	reg Clock;
	reg Reset;

	// Outputs
	wire [31:0] tmp;

	// Instantiate the Unit Under Test (UUT)
	CPU uut (
		.Clock(Clock), 
		.Reset(Reset),
		.tmp(tmp)
	);

	initial begin
		// Initialize Inputs
		Clock = 0;
		Reset = 1;

		// Wait 100 ns for global reset to finish
		#50;
      Clock = ~Clock;
		Reset = 0;
		#50;
      Clock = ~Clock;
		#50;
      Clock = ~Clock;
		#50;
      Clock = ~Clock;
		#50;
      Clock = ~Clock;
		#50;
      Clock = ~Clock;
		#50;
      Clock = ~Clock;
		#50;
      Clock = ~Clock;
		#50;
      Clock = ~Clock;
		#50;
      Clock = ~Clock;
		#50;
      Clock = ~Clock;
		#50;
      Clock = ~Clock;
		#50;
      Clock = ~Clock;
		#50;
      Clock = ~Clock;
		#50;
      Clock = ~Clock;
		#50;
      Clock = ~Clock;
		#50;
      Clock = ~Clock;
		#50;
      Clock = ~Clock;
		#50;
      Clock = ~Clock;
		#50;
      Clock = ~Clock;
		#50;
      Clock = ~Clock;
		#50;
      Clock = ~Clock;
		#50;
      Clock = ~Clock;
		#50;
      Clock = ~Clock;
		#50;
      Clock = ~Clock;
		#50;
      Clock = ~Clock;
		#50;
      Clock = ~Clock;
		#50;
      Clock = ~Clock;
		#50;
      Clock = ~Clock;
		#50;
      Clock = ~Clock;
		#50;
      Clock = ~Clock;
		#50;
      Clock = ~Clock;
		#50;
      Clock = ~Clock;
		// Add stimulus here

	end
      
endmodule

