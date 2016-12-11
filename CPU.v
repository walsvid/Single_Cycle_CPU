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
module CPU(Clock, Reset, tmp);
	input Clock;
	input Reset;
//	input [31:0] busW;
//	output [31:0] DataIn;
//	output [31:0] ALU_Result;
	output [31:0] tmp;

	wire [4:0] Rd, Rt, Rs, Rw;
	wire [15:0] imm16;
	wire [31:0] Inst, ALU_B, ALU_A, busA, busB, busW, reg31, w_reg31, shamt, ALU_Result;
	wire Zero, Overflow;
	wire RegWr, ALUSrc, RegDst, MemtoReg, MemWr, Branch_eq, Branch_ne, Jump, Extop, Shift;
	wire Write;
	wire [3:0] ALUctr;
	wire [31:0] imm32;
	wire [5:0] func;
	wire [5:0] op;
	
	wire [31:0] dataout;
	
	//tmp
	assign tmp = Inst;

	assign Rs = Inst[25:21];
	assign Rt = Inst[20:16];
	assign Rd = Inst[15:11];
	assign op = Inst[31:26];
	assign func = Inst[5:0];
	assign shamt = {{27{0}},Inst[10:6]};
	assign imm16 = Inst[15:0];

	Fetch_Instruction fetch(Clock, Reset, Zero, Branch_eq, Branch_ne, Jump, reg31, w_reg31, Inst);
	and(Write, ~Overflow, RegWr);
	MUX_5_2_1 mux_regdst(Rd, Rt, RegDst, Rw);
	RegFile regiters(Rs, Rt, Rw, Clock, Write, busW, busA, busB, w_reg31, reg31);
   Control_Unit controller(op, func, ALUctr, RegWr, ALUSrc, RegDst, MemtoReg, MemWr, Branch_eq, Branch_ne, Jump, Extop, Shift);
	ALU myalu(ALU_A, ALU_B, ALUctr, ALU_Result, Zero, Overflow);

	
   MUX_32_2_1 mux_a(busA, shamt, Shift, ALU_A);
	EXT_16_32 immext(Extop, imm16, imm32);
	MUX_32_2_1 mux_b(busB, imm32, ALUSrc, ALU_B);


	assign DataIn = busB;
	
	DATA_MEM d_rom(dataout, busB, ALU_Result, MemWr, Clock);
	
	MUX_32_2_1 mux_mem_to_reg(busA, dataout, MemtoReg, busW);

endmodule
