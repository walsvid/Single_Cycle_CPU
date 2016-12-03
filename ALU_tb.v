`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:27:55 11/27/2016
// Design Name:   ALU
// Module Name:   C:/Users/wen/git/Single_Cycle_CPU/ALU_tb.v
// Project Name:  Single_Cycle_CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_tb;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;
	reg [3:0] ALUctr;

	// Outputs
	wire [31:0] Result;
	wire Zero;
	wire Overflow;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.A(A), 
		.B(B), 
		.ALUctr(ALUctr), 
		.Result(Result), 
		.Zero(Zero), 
		.Overflow(Overflow)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		ALUctr = 0;

		// Wait 50 ns for global reset to finish
		
		//mips:add
		//result: 0x0046
		//zero:
		//overflow:
		#50;
		A = 32'h0034;
		B = 32'h0012;
		ALUctr = 4'b1110;

		//mips:sub
		//result:0x0022
		//zero:
		//overflow:
		#50;
		A = 32'h0034;
		B = 32'h0012;
		ALUctr = 4'b0100; 

		//mips:and
		//result:0x0010
		//zero:
		//overflow:
		#50;
		A = 32'h0034;
		B = 32'h0012;
		ALUctr = 4'b0010; 

		//mips:or
		//result:0x0036
		//zero:
		//overflow:
		#50;
		A = 32'h0034;
		B = 32'h0012;
		ALUctr = 4'b0011; 

		//mips:xor
		//result:0x0026
		//zero:
		//overflow:
		#50;
		A = 32'h0034;
		B = 32'h0012;
		ALUctr = 4'b0111; 

		//mips:sll
		//result:0xFFFFFFF8
		//zero:
		//overflow:
		#50;
		A = 32'h00000003;
		B = 32'hFFFFFFFF;
		ALUctr = 4'b1010; 

		//mips:srl
		//result:0x1FFFFFFF
		//zero:
		//overflow:
		#50;
		A = 32'h00000003;
		B = 32'hFFFFFFFF;
		ALUctr = 4'b1000; 

		//mips:sra
		//result:0xFFFF
		//zero:
		//overflow:
		#50;
		A = 32'h00000003;
		B = 32'hFFFFFFFF;
		ALUctr = 4'b1001; 

		//mips:jr
		//result:0xXXXX
		//zero:
		//overflow:
		#50;
		A = 32'hxxxx;
		B = 32'hxxxx;
		ALUctr = 4'b1100; 

		//mips:addi
		//result:0x0046
		//zero:
		//overflow:
		#50;
		A = 32'h0034;
		B = 32'h0012;
		ALUctr = 4'b1110; 

		//mips:andi
		//result:0x0010
		//zero:
		//overflow:
		#50;
		A = 32'h0034;
		B = 32'h0012;
		ALUctr = 4'b0010; 

		//mips:ori
		//result: 0x0036
		//zero:
		//overflow:
		#50;
		A = 32'h0034;
		B = 32'h0012;
		ALUctr = 4'b0011; 

		//mips:xori
		//result:0x0026
		//zero:
		//overflow:
		#50;
		A = 32'h0034;
		B = 32'h0012;
		ALUctr = 4'b0111; 

		//mips:lw
		//result:0x0002
		//zero:
		//overflow:
		#50;
		A = 32'h0001;
		B = 32'h0001;
		ALUctr = 4'b0001; 

		//mips:sw
		//result: 0x0004
		//zero:
		//overflow:
		#50;
		A = 32'h0002;
		B = 32'h0002;
		ALUctr = 4'b0001; 

		//mips:beq
		//result: 0x0000
		//zero:
		//overflow:
		#50;
		A = 32'h0034;
		B = 32'h0034;
		ALUctr = 4'b0101; 

		//mips:lui
		//result:0xAA00
		//zero:
		//overflow:
		#50;
		A = 32'hFFFF;
		B = 32'hAAAA;
		ALUctr = 4'b0110;    

		// Add stimulus here

	end
      
endmodule

