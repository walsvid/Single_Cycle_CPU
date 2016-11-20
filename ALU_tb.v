`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:18:36 01/01/2008
// Design Name:   ALU
// Module Name:   E:/Single_Cycle_CPU/ALU_tb.v
// Project Name:  Single_Cycle_CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_tb;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;
	reg [2:0] ALU_operation;

	// Outputs
	wire [31:0] Result;
	wire Zero;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.A(A), 
		.B(B), 
		.ALU_operation(ALU_operation), 
		.Result(Result), 
		.Zero(Zero)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		ALU_operation = 0;

		// Wait 100 ns for global reset to finish
		#100;
      A = 1;
		B = 1;
		ALU_operation = 3'b000;
		
		#100;
		ALU_operation = 3'b100;
		#100;
		ALU_operation = 3'b001;		
		#100;
		ALU_operation = 3'b101;
		#100;
		ALU_operation = 3'b010;
		#100;
		ALU_operation = 3'b110;
		// Add stimulus here

	end
      
endmodule

