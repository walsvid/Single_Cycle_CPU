`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:06:25 11/24/2016
// Design Name:   Fetch_Instruction
// Module Name:   C:/Users/wen/git/Single_Cycle_CPU/Fetch_Instruction_tb.v
// Project Name:  Single_Cycle_CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Fetch_Instruction
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Fetch_Instruction_tb;

	// Inputs
	reg Branch;
	reg Jump;
	reg Clock;
	reg Reset;
	reg Zero;

	// Outputs
	wire [31:0] Inst;

	// Instantiate the Unit Under Test (UUT)
	Fetch_Instruction uut (
		.Branch(Branch), 
		.Jump(Jump), 
		.Clock(Clock), 
		.Reset(Reset), 
		.Zero(Zero), 
		.Inst(Inst)
	);

	initial begin
		// Initialize Inputs
		Branch = 0;
		Jump = 1;
		Clock = 0;
		Reset = 1;
		Zero = 0;

		// Wait 100 ns for global reset to finish
		#100;
      Clock = ~Clock;
		Reset = 0;
		Jump = 0;
		#100;
      Clock = ~Clock;
		#100;
      Clock = ~Clock;
		#100;
      Clock = ~Clock;		
		#100;
      Clock = ~Clock;
		#100;
      Clock = ~Clock;
		#100;
      Clock = ~Clock;
		#100;
      Clock = ~Clock;
		#100;
      Clock = ~Clock;		
		// Add stimulus here

	end
      
endmodule

