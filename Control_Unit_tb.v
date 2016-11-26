`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:10:35 11/26/5016
// Design Name:   Control_Unit
// Module Name:   C:/Users/wen/git/Single_Cycle_CPU/Control_Unit_tb.v
// Project Name:  Single_Cycle_CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Control_Unit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Control_Unit_tb;

	// Inputs
	reg [5:0] op;
	reg [5:0] func;

	// Outputs
	wire [3:0] ALUctr;
	wire RegWr;
	wire ALUSrc;
	wire RegDst;
	wire MemtoReg;
	wire MemWr;
	wire Branch;
	wire Jump;
	wire Extop;

	// Instantiate the Unit Under Test (UUT)
	Control_Unit uut (
		.op(op), 
		.func(func), 
		.ALUctr(ALUctr), 
		.RegWr(RegWr), 
		.ALUSrc(ALUSrc), 
		.RegDst(RegDst), 
		.MemtoReg(MemtoReg), 
		.MemWr(MemWr), 
		.Branch(Branch), 
		.Jump(Jump), 
		.Extop(Extop)
	);

	initial begin
		// Initialize Inputs
		op = 6'bxxxxxx;
		func = 6'bxxxxxx;

		// Wait 100 ns for global reset to finish
		#50;
		func = 6'b100000;
		op = 6'b000000;
		#50;
		func = 6'b100010;
		op = 6'b000000;
		#50;
		func = 6'b100100;
		op = 6'b000000;
		#50;
		func = 6'b100101;
		op = 6'b000000;
		#50;
		func = 6'b100110;
		op = 6'b000000;
		#50;
		func = 6'b000000;
		op = 6'b000000;
		#50;
		func = 6'b000010;
		op = 6'b000000;
		#50;
		func = 6'b000011;
		op = 6'b000000;
		#50;
		func = 6'b001000;
		op = 6'b000000;
		#50;
		func = 6'bxxxxxx;
		op = 6'b001000;
		#50;
		op = 6'b001100;
		#50;
		op = 6'b001101;
		#50;
		op = 6'b001110;
		#50;
		op = 6'b100011;
		#50;
		op = 6'b101011;
		#50;
		op = 6'b000100;
		#50;
		op = 6'b001111;
		#50;
		op = 6'b000010;
		#50;
		op = 6'b000011;

        
		// Add stimulus here

	end
      
endmodule

