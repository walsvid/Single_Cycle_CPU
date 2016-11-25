`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:13:19 11/25/2016
// Design Name:   Instruction_Interpreter
// Module Name:   C:/Users/wen/git/Single_Cycle_CPU/Instruction_Interpreter_tb.v
// Project Name:  Single_Cycle_CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Instruction_Interpreter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Instruction_Interpreter_tb;

	// Inputs
	reg [5:0] op;

	// Outputs
	wire R_type;
	wire addi;
	wire andi;
	wire ori;
	wire xori;
	wire lw;
	wire sw;
	wire beq;
	wire lui;
	wire j;
	wire jal;

	// Instantiate the Unit Under Test (UUT)
	Instruction_Interpreter uut (
		.op(op), 
		.R_type(R_type), 
		.addi(addi), 
		.andi(andi), 
		.ori(ori), 
		.xori(xori), 
		.lw(lw), 
		.sw(sw), 
		.beq(beq), 
		.lui(lui), 
		.j(j), 
		.jal(jal)
	);

	initial begin
		// Initialize Inputs
		op = 0;

		// Wait 100 ns for global reset to finish
		#100;
		op = 6'b000000; //R-type
		
		#100;
		op = 6'b001000; //addi
		
		#100;
		op = 6'b001100; //andi
		
		#100;
		op = 6'b001101; //oir
		
		#100;
		op = 6'b001110; //xori
		
		#100;
		op = 6'b100011; //lw
		
		#100;
		op = 6'b101011; //sw
		
		#100;
		op = 6'b000100; //beq
		
		#100;
		op = 6'b001111; //lui
		
		#100;
		op = 6'b000010; //j
		
		#100;
		op = 6'b000011; //jal
        
		// Add stimulus here

	end
      
endmodule

