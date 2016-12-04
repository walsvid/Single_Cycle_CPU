`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:13:11 11/25/2016 
// Design Name: 
// Module Name:    Main_CTR 
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
module Main_CTR(op, RegWr, ALUSrc, RegDst, MemtoReg, MemWr, Branch_eq, Branch_ne, Jump, Extop, ALUop, R_type);
	input [5:0] op;
	output RegWr;
	output ALUSrc;
	output RegDst;
	output MemtoReg;
	output MemWr;
	output Branch_eq;
	output Branch_ne;
	output Jump;
	output Extop;
	output R_type;
	
	output [3:0] ALUop;
	
	wire r_type, addi, andi, ori, xori, lw, sw, beq, bne, lui, j ,jal;
	
	Instruction_Interpreter inst_inter(op, r_type, addi, andi, ori, xori, lw, sw, beq, bne, lui, j ,jal);
	
	assign Branch_eq = beq;
	assign Branch_ne = bne;
	assign Jump = j | jal;
	assign RegDst = r_type;
	assign ALUSrc = addi | andi | ori | xori | lw | sw | beq | lui;
	assign MemtoReg = lw;
	assign RegWr = r_type | addi | andi | ori | xori | lw;
	assign MemWr = sw;
	assign Extop = lw | sw | beq;
	assign R_type = r_type;
	
	assign ALUop[0] = r_type | ori | xori | lw | sw | beq | bne;
	assign ALUop[1] = r_type | addi| andi | ori | xori | lui;
	assign ALUop[2] = r_type | addi| xori | beq | lui | bne;
	assign ALUop[3] = r_type | addi;

endmodule
