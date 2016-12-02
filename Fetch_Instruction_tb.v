`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:26:58 12/02/2016
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
	reg Clock;
	reg Reset;
	reg Zero;
	reg [31:0] reg31;

	// Outputs
	wire [31:0] Inst;
	wire [4:0] tmp1;
	wire tmp2;
	wire tmp3;
	wire tmp4;

	// Instantiate the Unit Under Test (UUT)
	Fetch_Instruction uut (
		.Clock(Clock), 
		.Reset(Reset), 
		.Zero(Zero), 
		.reg31(reg31), 
		.Inst(Inst), 
		.tmp1(tmp1), 
		.tmp2(tmp2), 
		.tmp3(tmp3), 
		.tmp4(tmp4)
	);

	initial begin
		// Initialize Inputs
		Clock = 0;
		Reset = 1;
		Zero = 0;
		reg31 = 32'h0D;

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
		// Add stimulus here
	end
      
endmodule

