`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:14:00 01/01/2008 
// Design Name: 
// Module Name:    CPU 
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
module CPU(Clock, Reset, busW, DataIn, ALU_Result);
	input Clock;
	input Reset;
	input [31:0] busW;
	output DataIn;
	output ALU_Result;
	
	wire [4:0] Rd, Rt, Rs;
	wire [15:0] imm16;
	wire [31:0] Inst, ALU_B, ALU_A;
	
	Fetch_Instruction fetch(Clock, Reset, Zero, reg31, w_reg31, Inst);
	assign Rs = Inst[25:21];
	assign Rt = Inst[20:16];
	assign Rd = Inst[15:11];
	assign imm16 = Inst[15:0];
	RegFile regiters(Ra, Rb, Rw, Clock, Write, busW, busA, busB, w_R31, r_R31);
	
	
	ALU alu(A, B, ALUctr, Result, Zero, Overflow);
	Control_Unit controller(op, func, ALUctr, RegWr, ALUSrc, RegDst, MemtoReg, MemWr, Branch_eq, Branch_ne, Jump, Extop);
	
	MUX_5_2_1 mux_regdst(Rd, Rt, RegDst, Rw);
	
	

endmodule
