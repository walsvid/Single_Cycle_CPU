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
module Fetch_Instruction(Clock, Reset, Zero, reg31, Inst, tmp1, tmp2, tmp3, tmp4);
	input Clock;
	input Reset;
	input Zero;
	input [31:0] reg31;
	output [31:0]	Inst;
	output [4:0] tmp1;
	output tmp2 ,tmp3, tmp4;
	
	
	wire [31:0] next_pc, addr, pc_4, imm32, imm32_4, pc_b, pc_jr, pc_j;
	// pc_4 : pc+4
	// imm32_4 : imm32 * 4 or imm << 2
	// pc_b : pc when branch instruction
	// pc_s_b : select serial or branch pc
	wire [25:0] target;
	wire [15:0] imm16;
	reg Jump, Jr, Branch;
	
	PC pc_unit(next_pc, Clock, Reset, addr);
		
	INST_MEM i_rom(addr, Inst);
	
	assign tmp1 = addr[6:2];
	
	assign imm16 = Inst[15:0];
	assign target = Inst[25:0];
	assign op = Inst[31:26];
	assign rs = Inst[25:21];
	//assign Jump = (op == 6'b000010 || op == 6'b000011) ? 1'b1 : 1'b0;
	

	
//	always @(op == 6'b000010 or op == 6'b000011) begin
//		Jump <= 1'b1;
//	end
	//assign Jr = (op == 6'b000000 && rs == 5'b11111) ? 1'b1 : 1'b0;
	
//	always @(op == 6'b000000 && rs == 5'b11111) begin
//		Jr <= 1'b1;
//	end
	
	//Serial Instructions
	ADD32 adder_pc_4(32'h4, addr, pc_4);
	
	//Branch Instructions
	wire beq, bne;
	assign beq = (op == 6'b000100) ? 1'b1 : 1'b0;
	assign bne = (op == 6'b000101) ? 1'b1 : 1'b0;
	wire b_z, nb_nz;
	and(b_z, beq, Zero);
	and(nb_nz, bne, ~Zero);
	//or(Branch, b_z, nb_nz);
//	always @(b_z or nb_nz) begin
//		Branch <= 1'b1;
//	end

	always @(*) begin
		Jump <= 1'b0;
		Jr <= 1'b0;
		Branch <= 1'b0;
		if (op == 6'b000010 || op == 6'b000011)
			Jump <= 1'b1;
		if (op == 6'b000000 && rs == 5'b11111)
			Jr <= 1'b1;
		if (b_z || nb_nz)
			Branch <= 1'b1;
	end

	SIGN_EXT_16_32 ext_imm(imm16, imm32);
	SHIFTER shifter_imm(imm32, 5'h2, 1'b0, 1'b0, imm32_4);
	ADD32 adder_pc_4_imm32_4(pc_4, imm32_4, pc_b);
	
	//Jump Instructions
	SHIFTER shifter_j({2'b00,{addr[31:28]},target}, 5'h2, 1'b0, 1'b0, pc_j);
	
	//Jump Register
	assign pc_jr = reg31;
	//Cal PCsource
	wire [1:0] PCsource =	(Jump == 1'b1) ? 2'b00 : // Jump
									(Branch == 1'b1) ? 2'b01 : //Branch
									(Jr == 1'b1) ? 2'b10 : //Call
									2'b11; // Serial Instruction
									
									
	//MUX_32_2_1 mux_branch(pc_4, pc_b, Branch, pc_s_b);
	
	//MUX_32_2_1 mux_jump(pc_s_b, pc_j, Jump, next_pc);
	
	MUX_32_4_1 mux_pc_source(pc_j, pc_b, pc_jr, pc_4, PCsource, next_pc);
	
	assign tmp2 = Jump;
	assign tmp3 = Jr;
	assign tmp4 = Branch;
	
endmodule
