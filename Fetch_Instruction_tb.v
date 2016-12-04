`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   06:32:07 01/01/2008
// Design Name:   Fetch_Instruction
// Module Name:   E:/Single_Cycle_CPU/Fetch_Instruction_tb.v
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
	reg Clock;
	reg Reset;
	reg Zero;
	reg Branch_eq;
	reg Branch_ne;
	reg Jump;
	reg [31:0] reg31;

	// Outputs
	wire [31:0] w_reg31;
	wire [31:0] Inst;

	// Instantiate the Unit Under Test (UUT)
	Fetch_Instruction uut (
		.Clock(Clock), 
		.Reset(Reset), 
		.Zero(Zero), 
		.Branch_eq(Branch_eq), 
		.Branch_ne(Branch_ne), 
		.Jump(Jump), 
		.reg31(reg31), 
		.w_reg31(w_reg31), 
		.Inst(Inst)
	);

	initial begin
		// Initialize Inputs
		Clock = 0;
		Reset = 1;
		Zero = 0;
		Branch_eq = 0;
		Branch_ne = 0;
		Jump = 0;
		reg31 = 0;

		// Wait 100 ns for global reset to finish
		#50;
      Clock = ~Clock;
		Reset = 0;
		Jump = 1;
		#50;
      Clock = ~Clock;
		Jump = 0;
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
		reg31 = w_reg31;
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

