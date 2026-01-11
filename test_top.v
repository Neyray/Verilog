// 顶层模块 - PC和NPC逻辑
module top(
    input clk,
    input rstn,
    input [15:0] sw_i,
    output [7:0] disp_seg_o,
    output [7:0] disp_an_o,
    output [15:0] led_o
);

    // 时钟分频
    reg [31:0] clkdiv;
    wire Clk_CPU;
    always @(posedge clk or negedge rstn) begin
        if(!rstn) clkdiv <= 0;
        else clkdiv <= clkdiv + 1'b1;
    end
    assign Clk_CPU = (sw_i[15]) ? clkdiv[27] : clkdiv[25];

    // PC和NPC
    reg [31:0] PC;
    wire [31:0] NPC;
    wire [31:0] instr;
    
    // PC更新逻辑
    always @(posedge Clk_CPU or negedge rstn) begin
        if (!rstn)
            PC <= 32'h0;
        else if (sw_i[1] == 1'b0)  // 非调试模式
            PC <= NPC;
        else
            PC <= PC;  // 调试模式，PC保持
    end
    
    // ROM地址 = PC/4 (字地址)
    wire [5:0] rom_addr = PC[7:2];
    
    // 指令ROM
    dist_mem_im u_im (
        .a(rom_addr),
        .spo(instr)
    );
    
    // 指令译码
    wire [6:0] Op = instr[6:0];
    wire [6:0] Funct7 = instr[31:25];
    wire [2:0] Funct3 = instr[14:12];
    wire [4:0] rs1 = instr[19:15];
    wire [4:0] rs2 = instr[24:20];
    wire [4:0] rd = instr[11:7];
    
    // J型立即数译码
    wire [19:0] jimm = {instr[31], instr[19:12], instr[20], instr[30:21]};
    
    // 控制信号 (修改 EXTOp 位宽)
    wire RegWrite, MemWrite, ALUSrc;
    wire [2:0] EXTOp; // 修改：改为3位，连接 ctrl 和 ext
    wire [1:0] WDSel, NPCOp;
    wire [4:0] ALUOp;
    wire [2:0] DMType;
    wire [31:0] immout;
    wire Zero; // Zero 保持 1位，正好匹配新 ALU
    
    // 控制器
    ctrl u_ctrl (
        .Op(Op), .Funct7(Funct7), .Funct3(Funct3),
        .RegWrite(RegWrite), .MemWrite(MemWrite), .EXTOp(EXTOp),
        .ALUOp(ALUOp), .ALUSrc(ALUSrc), .WDSel(WDSel), 
        .DMType(DMType), .NPCOp(NPCOp)
    );
    
    // 立即数扩展
    EXT u_ext (
        .instr(instr), .EXTOp(EXTOp), .immout(immout)
    );
    
    // 数据通路
    wire [31:0] RD1, RD2, C_alu, dout_dm, WD_rf;
    
    // 寄存器堆
    RF u_rf(
        .clk(clk), .rst(~rstn),
        .RFWr(RegWrite), .sw_i(sw_i),
        .A1(rs1), .A2(rs2), .A3(rd),
        .WD(WD_rf),
        .RD1(RD1), .RD2(RD2)
    );
    
    // ALU B源选择
    wire [31:0] B_alu = (ALUSrc) ? immout : RD2;
    
    // ALU
    alu u_alu(
        .A(RD1), .B(B_alu), .ALUOp(ALUOp),
        .C(C_alu), .Zero(Zero)
    );
    
    // 数据存储器
    dm u_dm (
        .clk(clk), .DMWr(MemWrite),
        .addr(C_alu), .din(RD2),
        .DMType(DMType), .dout(dout_dm)
    );
    
    // 写回数据选择（修复：添加PC+4）
    assign WD_rf = (WDSel == 2'b01) ? dout_dm :
                   (WDSel == 2'b10) ? (PC + 4) : C_alu;
    
    // NPC生成逻辑
    reg branch_taken;
    always @(*) begin
        case(Funct3)
            3'b000: branch_taken = (RD1 == RD2);        // beq
            3'b001: branch_taken = (RD1 != RD2);        // bne
            3'b100: branch_taken = ($signed(RD1) < $signed(RD2));   // blt
            3'b101: branch_taken = ($signed(RD1) >= $signed(RD2));  // bge
            3'b110: branch_taken = (RD1 < RD2);         // bltu
            3'b111: branch_taken = (RD1 >= RD2);        // bgeu
            default: branch_taken = 1'b0;
        endcase
    end
    
    // NPC MUX
    reg [31:0] npc_temp;
    always @(*) begin
        case(NPCOp)
            2'b00: npc_temp = PC + 4;                           // 顺序执行
            2'b01: npc_temp = (branch_taken) ? (PC + immout) : (PC + 4); // Branch
            2'b10: npc_temp = PC + immout;                      // JAL
            2'b11: npc_temp = (RD1 + immout) & ~32'd1;         // JALR
            default: npc_temp = PC + 4;
        endcase
    end
    assign NPC = npc_temp;
    
    // LED显示
    assign led_o = C_alu[15:0];
    
    // 数码管显示逻辑（保持原有）
    reg [63:0] display_data;
    always @(*) begin
        if (sw_i[14]) display_data = {32'h0, instr};
        else if (sw_i[12]) display_data = {32'h0, C_alu};
        else display_data = {32'h0, PC};
    end
    
    seg7x16 u_seg7x16(
        .clk(clk), .rstn(rstn), 
        .i_data(display_data), .disp_mode(sw_i[0]),
        .o_seg(disp_seg_o), .o_sel(disp_an_o)
    );

endmodule