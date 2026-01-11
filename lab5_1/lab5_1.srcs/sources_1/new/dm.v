`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/11/30 00:19:37
// Design Name: 
// Module Name: dm
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

`define dm_word 3'b000
`define dm_halfword 3'b001
`define dm_halfword_unsigned 3'b010  
`define dm_byte 3'b011
`define dm_byte_unsigned 3'b100


module dm(
    input clk,
    input rstn,
    input DMWr,
    input[5:0] addr,
    input[31:0] din,
    input[2:0] DMType,
    output reg[31:0] dout
    );

reg[7:0] dmem[31:0];

integer i;
always @(posedge clk or negedge rstn) begin
     if (!rstn) begin
        for (i = 0; i < 32; i = i + 1) begin
            dmem[i] <= 8'b0;
        end
    end
    else if (DMWr) begin
        case(DMType)
            `dm_byte: begin
                dmem[addr] <= din[7:0];
            end
            `dm_halfword: begin
                dmem[addr] <= din[7:0];
                dmem[addr+1] <= din[15:8];
            end
            `dm_word: begin
                dmem[addr] <= din[7:0];
                dmem[addr+1] <= din[15:8];
                dmem[addr+2] <= din[23:16];
                dmem[addr+3] <= din[31:24];
            end
            `dm_byte_unsigned: begin
                dmem[addr] <= din[7:0];
            end
            `dm_halfword_unsigned: begin
                dmem[addr] <= din[7:0];
                dmem[addr+1] <= din[15:8];
            end
        endcase
    end
end


always@(*)begin
    case(DMType)
        `dm_byte:dout={{24{dmem[addr][7]}},dmem[addr][7:0]};
        `dm_halfword:dout={{16{dmem[addr][7]}}, dmem[addr+1], dmem[addr]};
        `dm_word:dout = {dmem[addr+3], dmem[addr+2], dmem[addr+1], dmem[addr]};
        default:dout ={dmem[addr+3], dmem[addr+2], dmem[addr+1], dmem[addr]};
    endcase
end   
endmodule
