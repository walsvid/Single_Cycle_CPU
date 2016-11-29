`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:32:00 11/24/2016 
// Design Name: 
// Module Name:    Fetch_Instruction 
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
module Fetch_Instruction(op, Branch, Jump, Clock, Reset, Zero, Inst);
	input [5:0] op;
	input Branch;
	input Jump;
	input Clock;
	input Reset;
	input Zero;
	output [31:0]	Inst;
	
	wire [31:0] next_pc, addr, pc_4, imm32, imm32_4, pc_b, pc_s_b, pc_j;
	// pc_4 : pc+4
	// imm32_4 : imm32 * 4 or imm << 2
	// pc_b : pc when branch instruction
	// pc_s_b : select serial or branch pc
	wire [25:0] target;
	wire [15:0] imm16;
	wire b_z;
	
	and(b_z, Branch, Zero);

	PC pc_unit(next_pc, Clock, Reset, addr);
	INST_MEM i_rom(addr, Inst);
	
	assign imm16 = Inst[15:0];
	assign target = Inst[25:0];
	
	ADD32 adder_pc_4(32'h4, addr, pc_4);
	
	SIGN_EXT_16_32 ext_imm(imm16, imm32);
	
	SHIFTER shifter_imm(imm32, 5'h2, 1'b0, 1'b0, imm32_4);
	
	SHIFTER shifter_j({2'b00,{addr[31:28]},target}, 5'h2, 1'b0, 1'b0, pc_j);
	
	ADD32 adder_pc_4_imm32_4(pc_4, imm32_4, pc_b);
	
	
	MUX_32_2_1 mux_branch(pc_4, pc_b, b_z, pc_s_b);
	
	MUX_32_2_1 mux_jump(pc_s_b, pc_j, Jump, next_pc);
	
endmodule
