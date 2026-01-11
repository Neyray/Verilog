module ctrl (
    input  [6:0] Op,      
    input  [6:0] Funct7,  
    input  [2:0] Funct3,  
    
    output RegWrite, 
    output MemWrite, 
    output [2:0] EXTOp,    // 修改：扩展为3位，匹配 test_ext.v 的 input [2:0]
    output [4:0] ALUOp,    
    output ALUSrc,   
    output [2:0] DMType, 
    output [1:0] WDSel,
    output [1:0] NPCOp 
);

    // 1. 识别指令类型
    wire rtype  = (Op == 7'b0110011);
    wire itype_r= (Op == 7'b0010011);
    wire itype_l= (Op == 7'b0000011);
    wire stype  = (Op == 7'b0100011);
    wire sbtype = (Op == 7'b1100011); // Branch
    wire jal    = (Op == 7'b1101111); // JAL
    wire jalr   = (Op == 7'b1100111); // JALR
    
    // 2. 识别具体指令
    wire i_add = rtype & (Funct7 == 7'b0000000) & (Funct3 == 3'b000);
    wire i_sub = rtype & (Funct7 == 7'b0100000) & (Funct3 == 3'b000);
    wire i_beq = sbtype & (Funct3 == 3'b000);
    wire i_bne = sbtype & (Funct3 == 3'b001);
    
    // 3. 生成控制信号
    assign RegWrite = rtype | itype_r | itype_l | jal | jalr;
    assign MemWrite = stype;
    assign ALUSrc   = itype_r | itype_l | stype | jalr;
    assign WDSel[0] = itype_l;
    assign WDSel[1] = jal | jalr;
    
    assign NPCOp[0] = sbtype | jalr;
    assign NPCOp[1] = jal | jalr;
    
    // EXTOp (修正为3位): 
    // 0=I, 1=S, 2=B, 3=J (参考 test_ext.v 定义)
    assign EXTOp[0] = stype | jal;
    assign EXTOp[1] = sbtype | jal;
    assign EXTOp[2] = 1'b0; // 暂时不用U型(4)
    
    // ALUOp
    assign ALUOp = (i_sub | i_beq | i_bne) ? 5'b00100 : 5'b00011;
    
    assign DMType = Funct3; 
endmodule