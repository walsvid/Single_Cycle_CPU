`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:34:19 11/24/2016 
// Design Name: 
// Module Name:    INST_MEM 
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
module INST_MEM(addr , inst);
    input  [31:0] addr ; 
    output [31:0] inst ;
    
	 wire [31:0] rom [0:31];
	 
	 assign rom[5'h00] = 32'b000010_00000_00000_0000_0000_0000_0101; //j 5H							//8000005
	 assign rom[5'h01] = 32'b001111_00000_01011_1001_1000_0111_0110 ; // lui		R11, 9876H	//3c0b9876
	 assign rom[5'h02] = 32'b000000_11111_00000_00000_00000_001000 ; // jr RA						//3e00008
	 assign rom[5'h03] = 32'hAAA2 ; // Not use
	 assign rom[5'h04] = 32'hAAA3 ; // Not use
	 assign rom[5'h05] = 32'b001101_00000_00001_0100_0011_0010_0001;	//ori		R1 , R0 , 4321H	//34014321
	 assign rom[5'h06] = 32'b001101_00000_00010_0101_0110_0111_1000;	//ori		R2 , R0 , 5678H	//34025678
	 assign rom[5'h07] = 32'b001101_00001_00011_1111_1111_0000_0000;	//ori		R3 , R1 , FF00H	//3423ff00
	 assign rom[5'h08] = 32'b000000_00001_00010_00100_00000_100000;	//add		R4 , R1 , R2		//222020
	 assign rom[5'h09] = 32'b000000_00001_00010_00101_00000_100010;	//sub		R5 , R1 , R2		//222822
	 assign rom[5'h0A] = 32'b000000_00001_00010_00110_00000_100100;	//and		R6 , R1 , R2		//223024
	 assign rom[5'h0B] = 32'b000000_00001_00010_00111_00000_100110;	//xor		R7 , R1 , R2		//223826
	 assign rom[5'h0C] = 32'b000011_00000_00000_0000_0000_0000_0001;	//jal		1H						//c000001
	 assign rom[5'h0D] = 32'b001000_01001_01001_0000_1111_1111_0000;  //andi   R9 , R9 , 0FF0H 	//21290ff0
	 assign rom[5'h0E] = 32'b001000_01010_01010_0000_1111_1111_0000;	//andi	R10, R10, 0FF0H	//214a0ff0
	 assign rom[5'h0F] = 32'b000000_00001_01001_10010_00000_100000;	//add		R10, R1 , R9		//299020
	 assign rom[5'h10] = 32'b000100_00001_00010_0001_0010_0011_0100;	//beq		R1 , R2 , 1234H	//10221234
	 assign rom[5'h11] = 32'b000101_00001_00100_0000_0000_0000_0000;	//bne		R1 , R4 , 0000H	//14240000
	 assign rom[5'h12] = 32'b101011_00000_00100_0000_0000_0000_0100;	//sw		R4 , R0 , 4H		//ac040004
	 assign rom[5'h13] = 32'b100011_00000_00100_0000_0000_0000_0100;	//lw		R4 , R0 , 4H		//8c040004
	 assign rom[5'h14] = 32'b101011_00000_00100_0000_0000_0000_0100;	//sw		R4 , R0 , 4H		//ac040004
	 assign rom[5'h15] = 32'b100011_00000_00100_0000_0000_0000_0100;	//lw		R4 , R0 , 4H		//8c040004
	 assign rom[5'h16] = 32'h0 ; // Not use
	 assign rom[5'h17] = 32'h0 ; // Not use
	 assign rom[5'h18] = 32'h0 ; // Not use
	 assign rom[5'h19] = 32'h0 ; // Not use
	 assign rom[5'h1A] = 32'h0 ; // Not use
	 assign rom[5'h1B] = 32'h0 ; // Not use
	 assign rom[5'h1C] = 32'h0 ; // Not use
	 assign rom[5'h1D] = 32'h0 ; // Not use
	 assign rom[5'h1E] = 32'h0 ; // Not use
	 assign rom[5'h1F] = 32'h0 ; // Not use
	 
	 assign inst = rom[addr[6:2]];
endmodule