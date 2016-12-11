`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:50:40 11/25/2016 
// Design Name: 
// Module Name:    Control_Unit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Control_Unit(op, func, ALUctr, RegWr, ALUSrc, RegDst, MemtoReg, MemWr, Branch_eq, Branch_ne, Jump, Extop, Shift);
	input [5:0] op;
	input [5:0] func;
	output [3:0] ALUctr;
	output RegWr, ALUSrc, RegDst, MemtoReg, MemWr, Branch_eq, Branch_ne, Jump, Extop, Shift;
	
	wire RegWr, ALUSrc, RegDst, MemtoReg, MemWr, Branch_eq, Branch_ne, Jump, Extop, R_type, Shift;
	wire [3:0] ALUop, ALUop_ctr;
	
	Main_CTR main_ctr_(op, RegWr, ALUSrc, RegDst, MemtoReg, MemWr, Branch_eq, Branch_ne, Jump, Extop, ALUop, R_type);
	
	ALU_CTR alu_ctr_(func, ALUop_ctr, Shift);
	
	MUX_4_2_1 mux_main_alu_op(ALUop, ALUop_ctr, R_type, ALUctr);


endmodule
