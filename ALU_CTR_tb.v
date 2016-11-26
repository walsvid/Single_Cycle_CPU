`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:10:37 11/25/2016
// Design Name:   ALU_CTR
// Module Name:   C:/Users/wen/git/Single_Cycle_CPU/ALU_CTR_tb.v
// Project Name:  Single_Cycle_CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU_CTR
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_CTR_tb;

	// Inputs
	reg [5:0] func;

	// Outputs
	wire [3:0] ALUop_ctr;

	// Instantiate the Unit Under Test (UUT)
	ALU_CTR uut (
		.func(func), 
		.ALUop_ctr(ALUop_ctr)
	);

	initial begin
		// Initialize Inputs
		func = 0;

		// Wait 100 ns for global reset to finish
		#100;
		func = 6'b100000;	
		#100;
		func = 6'b100010;	
		#100;
		func = 6'b100100;	
		#100;
		func = 6'b100101;	
		#100;
		func = 6'b100110;	
		#100;
		func = 6'b000000;	
		#100;
		func = 6'b000010;	
		#100;
		func = 6'b000011;	
		#100;
		func = 6'b001000;
		// Add stimulus here

	end
      
endmodule

