`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/11/16 11:03:50
// Design Name: 
// Module Name: alu
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
`define ALUOp_nop 5'b00000
`define ALUOp_lui 5'b00001
`define ALUOp_auipc 5'b00010
`define ALUOp_add 5'b00011

module alu(
    input [31:0]A,B,
    input [4:0] ALUOp,
    output [31:0]C,
    output reg[7:0] Zero
 );
 
reg [31:0]result;
always@(*) begin
    case(ALUOp)
        `ALUOp_add: result<=A+B;
        `ALUOp_lui: result <= B;
        `ALUOp_auipc: result <= A+B;
        `ALUOp_nop: result <= 32'b0;
    endcase
end
assign C=result;        
        
//wire [31:0]D,_A,_B;
//assign _A[31:3] = (A[2]==1'b0)?29'b00_000_000_000_000_000_000_000_000_000:29'b11_111_111_111_111_111_111_111_111_111;
//assign _A[2:0]=A[2:0];
//assign _B[31:3] = (B[2]==1'b0)?29'b00_000_000_000_000_000_000_000_000_000:29'b11_111_111_111_111_111_111_111_111_111;
//assign _B[2:0]=B[2:0];
//assign D=ALUOp==(5'b00001)?(~_B+1'b1):_B;
//assign C = _A+D;

always@(*) begin
    Zero<=C==0?8'b1:0;
end
endmodule
