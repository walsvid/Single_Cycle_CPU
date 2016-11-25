`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:57:04 11/25/2016 
// Design Name: 
// Module Name:    Instruction_Interpreter 
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
module Instruction_Interpreter(op, R_type, addi, andi, ori, xori, lw, sw, beq, lui, j ,jal);
	input	[5:0]	op;
	output R_type;
	output addi;
	output andi;
	output ori;
	output xori;
	output lw;
	output sw;
	output beq;
	output lui;
	output j;
	output jal;
	
	and(R_type,	~op[5], ~op[4], ~op[3], ~op[2], ~op[1], ~op[0]);
	and(addi,	~op[5], ~op[4],  op[3], ~op[2], ~op[1], ~op[0]);
	and(andi,	~op[5], ~op[4],  op[3],  op[2], ~op[1], ~op[0]);
	and(ori, 	~op[5], ~op[4],  op[3],  op[2], ~op[1],  op[0]);
	and(xori,	~op[5], ~op[4],  op[3],  op[2],  op[1], ~op[0]);
	and(lw,		 op[5], ~op[4], ~op[3], ~op[2],  op[1],  op[0]);
	and(sw,		 op[5], ~op[4],  op[3], ~op[2],  op[1],  op[0]);
	and(beq,		~op[5], ~op[4], ~op[3],  op[2], ~op[1], ~op[0]);
	and(lui,		~op[5], ~op[4],  op[3],  op[2],  op[1],  op[0]);
	and(j,		~op[5], ~op[4], ~op[3], ~op[2],  op[1], ~op[0]);
	and(jal,		~op[5], ~op[4], ~op[3], ~op[2],  op[1],  op[0]);

endmodule
