//
// 立即数扩展模块 - 支持I/S/B/J型立即数
// B型立即数用于Branch指令的偏移量
//
module EXT(
    input [31:0] instr,
    input [2:0] EXTOp,
    output reg [31:0] immout
);

    // 提取各类型立即数
    wire [11:0] i_imm = instr[31:20];                                    // I-type
    wire [11:0] s_imm = {instr[31:25], instr[11:7]};                    // S-type
    wire [12:0] b_imm = {instr[31], instr[7], instr[30:25], instr[11:8], 1'b0}; // B-type
    wire [20:0] j_imm = {instr[31], instr[19:12], instr[20], instr[30:21], 1'b0}; // J-type
    wire [19:0] u_imm = instr[31:12];                                    // U-type
    
    // 立即数扩展逻辑
    always @(*) begin
        case(EXTOp)
            3'd0: // I-type (ALU imm, Load, JALR)
                immout = {{20{i_imm[11]}}, i_imm};
            
            3'd1: // S-type (Store)
                immout = {{20{s_imm[11]}}, s_imm};
            
            3'd2: // B-type (Branch) - 关键：支持BNE等分支指令
                immout = {{19{b_imm[12]}}, b_imm};
            
            3'd3: // J-type (JAL)
                immout = {{11{j_imm[20]}}, j_imm};
            
            3'd4: // U-type (LUI, AUIPC)
                immout = {u_imm, 12'b0};
            
            default: 
                immout = 32'b0;
        endcase
    end

endmodule