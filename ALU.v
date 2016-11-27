`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:15:44 01/01/2008 
// Design Name: 
// Module Name:    ALU 
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
module ALU(A, B, ALUctr, Result, Zero, Overflow, ari);
	input		[31:0]	A;
	input		[31:0]	B;
	input		[3:0]		ALUctr;
	output	[31:0]	Result;
	output				Zero;
	output				Overflow;
	output				ari;
	
	wire [31:0] r_add_sub, r_and, r_or, r_xor, r_shift, r_lui;
	
	wire i_sub, i_right, i_ari, Overflow_;
	
	assign i_sub = ~ALUctr[3] & ALUctr[2] & ~ALUctr[1] & ~ALUctr[0];
	assign i_right = ALUctr[3] & ~ALUctr[2] & ~ALUctr[1];
	assign i_ari = ALUctr[3] & ~ALUctr[2] & ~ALUctr[1] & ALUctr[0];
	
	Cal32 cal32(A, B, i_sub, r_add_sub, Overflow_);
	SHIFTER shifter_lr(B, A[4:0], i_right, i_ari, r_shift);
	
	assign r_and = A & B;
	assign r_or = A | B;
	assign r_xor = A ^ B;
	assign r_lui = {B[15:0],16'h0};

	assign Result = (ALUctr == 4'b1110 || ALUctr == 4'b0100 || ALUctr == 4'b0001 || ALUctr == 4'b0101) ? r_add_sub :
						 (ALUctr == 4'b0010) ? r_and :
						 (ALUctr == 4'b0011) ? r_or :
						 (ALUctr == 4'b0111) ? r_xor :
						 (ALUctr == 4'b1010 || ALUctr == 4'b1000 || ALUctr == 4'b1001) ? r_shift :
						 (ALUctr == 4'b0110) ? r_lui :
						 32'hxxxxxxxx;
	
	assign Zero = ~| Result;

	assign Overflow = (ALUctr == 4'b1110 || ALUctr == 4'b0100) ? Overflow_ : 1'b0;
	
	//tmp
	assign ari = i_ari;


endmodule