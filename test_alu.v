module alu(
    input signed [31:0] A, B,
    input [4:0] ALUOp,
    output signed [31:0] C,
    output reg Zero // 修改：从 [7:0] 改为 1位，符合标准
);
    reg signed [31:0] C_r;

    always @(*) begin
        case(ALUOp)
            5'b00011: C_r = A + B; // ADD
            5'b00100: C_r = A - B; // SUB
            default:  C_r = 32'h0;
        endcase
        
        // Zero标志位生成 (修正为1位逻辑)
        if(C_r == 32'h0)
            Zero = 1'b1;
        else
            Zero = 1'b0;
    end

    assign C = C_r;
endmodule