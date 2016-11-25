`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:28:39 11/25/2016
// Design Name:   Main_CTR
// Module Name:   C:/Users/wen/git/Single_Cycle_CPU/Main_CTR_tb.v
// Project Name:  Single_Cycle_CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Main_CTR
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Main_CTR_tb;

	// Inputs
	reg [5:0] op;

	// Outputs
	wire RegWr;
	wire ALUSrc;
	wire RegDst;
	wire MemtoReg;
	wire MemWr;
	wire Branch;
	wire Jump;
	wire Extop;
	wire [3:0] ALUop;
	wire R_type;

	// Instantiate the Unit Under Test (UUT)
	Main_CTR uut (
		.op(op), 
		.RegWr(RegWr), 
		.ALUSrc(ALUSrc), 
		.RegDst(RegDst), 
		.MemtoReg(MemtoReg), 
		.MemWr(MemWr), 
		.Branch(Branch), 
		.Jump(Jump), 
		.Extop(Extop), 
		.ALUop(ALUop), 
		.R_type(R_type)
	);

	initial begin
		// Initialize Inputs
		op = 0;

		// Wait 100 ns for global reset to finish
		#50;
		op = 6'b000000; //r type 1111
		
		#50;
		op = 6'b001000; //addi 1110
		
		#50;
		op = 6'b001100; //andi 0010
		
		#50;
		op = 6'b001101; //ori 0011
		
		#50;
		op = 6'b001110; //xori 0111
		
		#50;
		op = 6'b100011; //lw 0001
		
		#50;
		op = 6'b101011; //sw 0001
		
		#50;
		op = 6'b000100; //beq 0101
		
		#50;
		op = 6'b001111; //lui 0110
		
        
		// Add stimulus here

	end
      
endmodule

