`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/11/02 11:37:00
// Design Name: 
// Module Name: SCPU_TOP
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


module SCPU_TOP(
    input clk,
    input rstn,
    input [15:0] sw_i,
    output [7:0] disp_an_o,
    output [7:0] disp_seg_o
);

reg [31:0]clkdiv;
wire Clk_CPU;
wire RegWrite;
wire [31:0]WD;
reg Clk_5;
wire clk_half;

wire [31:0]immout;
wire ALUSrc;
wire [1:0]WDSel;

wire [4:0]rs1,rs2,rd;
wire [31:0]RD1;
wire [31:0]RD2;

wire [31:0]A,B;
wire [4:0]ALUOp;
wire [31:0]aluout;
wire [7:0]Zero;

parameter max = 12500000 - 1;
reg [24:0] counter; 

wire MemWrite;
wire [31:0]dm_addr;
wire [31:0]dm_din;
wire [2:0]DMType;
wire [31:0]dm_out;

wire [5:0]EXTOp;

wire pause;
assign pause = sw_i[1];
always @ (posedge clk or negedge rstn) begin
    if (!rstn) begin
        clkdiv <= 0;
        counter<=0;
        Clk_5<=0;
    end
    else begin
        clkdiv <= clkdiv + 1'b1; 
        if(counter==max) begin
            Clk_5<=~Clk_5;
            counter<=0;
        end
        else counter<=counter+1'b1;
    end
end
assign clk_half = Clk_5;
assign Clk_CPU=(sw_i[15])?clkdiv[27]: clkdiv[25];//2^
//assign Clk_CPU = (sw_i[15]) ? clkdiv[3] : clkdiv[1];
reg [63:0] display_data;// 1/7 segments disp

reg [5:0]led_data_addr;
reg [63:0]led_disp_data;
parameter LED_DATA_NUM = 19;

reg [63:0]LED_DATA[18:0];
initial begin
    LED_DATA[0]= 64'hC6F6F6F0C6F6F6F0;
    LED_DATA[1]= 64'hF9F6F6CFF9F6F6CF;
    LED_DATA[2]= 64'hFFC6F0FFFFC6F0FF;
    LED_DATA[3]= 64'hFFC0FFFFFFC0FFFF;
    LED_DATA[4]= 64'hFFA3FFFFFFA3FFFF;
    LED_DATA[5]= 64'hFFFFA3FFFFFFA3FF;
    LED_DATA[6]= 64'hFFFF9CFFFFFF9CFF;
    LED_DATA[7]= 64'hFF9EBCFFFF9EBCFF;
    LED_DATA[8]= 64'hFF9CFFFFFF9CFFFF;
    LED_DATA[9]= 64'hFFC0FFFFFFC0FFFF;
    LED_DATA[10]= 64'hFFA3FFFFFFA3FFFF;
    LED_DATA[11]= 64'hFFA7B3FFFFA7B3FF;
    LED_DATA[12]= 64'hFFC6F0FFFFC6F0FF;
    LED_DATA[13]= 64'hF9F6F6CFF9F6F6CF;
    LED_DATA[14]= 64'h9EBEBEBC9EBEBEBC;
    LED_DATA[15]= 64'h2737373327373733;
    LED_DATA[16]= 64'h505454EC505454EC;
    LED_DATA[17]= 64'h744454F8744454F8;
    LED_DATA[18]= 64'h0062080000620800;
end

//LED_DATA
always@(posedge Clk_CPU or negedge rstn) begin
    if(!rstn) begin
        led_data_addr = 6'd0 ;
        led_disp_data = 64'b1;
    end
    else if(sw_i[0]==1'b1) begin
        if (led_data_addr == LED_DATA_NUM) begin 
            led_data_addr = 6'd0 ; 
            led_disp_data = 64'b1;
        end
        led_disp_data = LED_DATA[led_data_addr];
        led_data_addr = led_data_addr + 1'b1; 
    end
    else led_data_addr = led_data_addr ;
end

//ROW_orders
wire [31:0] instr;
reg [5:0] pc;  

dist_mem_gen_0 rom_u(
    .a(pc),  
    .spo(instr)
    );
//reg [31:0]data[63:0];
//initial begin
    //data[0]  = 32'h000000b3;  // lui x3, 0
    //data[1]  = 32'h00108093;  // addi x1, x1, 1
    //data[2]  = 32'h00000133;  // add x2, x0, x0
    //data[3]  = 32'h00210113;  // addi x2, x2, 2
    //data[4]  = 32'h000001b3;  // lui x3, 0
    //data[5]  = 32'h00318193;  // addi x3, x3, 3
    //data[6]  = 32'h001020a3;  // sw x1, 0(x0)
    //data[7]  = 32'h00202123;  // sw x2, 4(x0)
    //data[8]  = 32'h003021a3;  // sw x3, 8(x0)
    //data[9]  = 32'h00102203;  // lw x4, 0(x0)
    //data[10] = 32'h00202283;  // lw x5, 4(x0)
    //data[11] = 32'h00302303;  // lw x6, 8(x0)
//end
//assign instr=data[pc];
always @(posedge Clk_CPU or negedge rstn) begin
    if (!rstn) begin
        pc <= 5'b0;
    end 
    else if(pause==1'b0) pc <= pc + 1'b1; 
    else pc<=pc; 
end

reg[31:0] reg_data = 32'hABCDEF12 ;
reg[31:0] alu_disp_data = 32'h87654321 ;
reg[31:0] dmem_data = 32'hFEDCBA98;
//choose display source data
always @(sw_i) begin
    case (sw_i[14:11])
        4'b1000:display_data = {32'h0,instr};//ROM
        4'b0100:display_data = {32'h0,reg_data};//RF
        4'b0010:display_data = {32'h0,alu_disp_data};//
        4'b0001:display_data = {32'h0,dmem_data};
        default: display_data = {32'h0,instr};
    endcase
    if (sw_i[0]==0) begin
        case (sw_i[14:11])
        4'b1000:display_data = {32'h0,instr};//ROM
        4'b0100:display_data = {32'h0,reg_data};//RF
        4'b0010:display_data = {32'h0,alu_disp_data};//
        4'b0001:display_data = {32'h0,dmem_data};
        default: display_data = {32'h0,instr};
        endcase
    end
    else begin 
        display_data = led_disp_data ; 
    end
end

ctrl ctrl_c(
    .Op(instr[6:0]),       
    .Funct7(instr[31:25]),  
    .Funct3(instr[14:12]),  
    .Zero(Zero),            
    .RegWrite(RegWrite),   
    .MemWrite(MemWrite),    
    .EXTOp(EXTOp),         
    .ALUOp(ALUOp),          
    .ALUSrc(ALUSrc),        
    .DMType(DMType),        
    .WDSel(WDSel)           
);

EXT ext_c(
    .iimm_shamt(instr[24:20]),                    // I-type 
    .iimm(instr[31:20]),                         // I-type  instr[31:20]
    .simm({instr[31:25], instr[11:7]}),          // S-type{instr[31:25], instr[11:7]}
    .bimm({instr[31], instr[7], instr[30:25], instr[11:8]}), // B-type 
    .uimm(instr[31:12]),                         // U-typeinstr[31:12]
    .jimm({instr[31], instr[19:12], instr[20], instr[30:21]}), // J-type 
    .EXTOp(EXTOp),                              
    .immout(immout)                              
);
 
`define WDSel_FromALU 2'b00
`define WDSel_FromMEM 2'b01
reg [31:0]WD_tmp;
always@(*) begin
    if(pause==1'b0)begin
        case(WDSel)
            `WDSel_FromALU: WD_tmp<=aluout;
            `WDSel_FromMEM: WD_tmp<=dm_out;
            //`WDSel_FromPC: WD<=PC_out+4;
        endcase
	end
end

assign WD = WD_tmp;

assign rs1 = instr[19:15];    
assign rs2 = instr[24:20];  
assign rd = instr[11:7]; 
RF U_RF(
    .clk(Clk_CPU), 
    .rst(rstn),
    .RFWr(RegWrite),
    .sw_i(sw_i),
    .A1(rs1),
    .A2(rs2),
    .A3(rd),
    .WD(WD),
    .RD1(RD1),
    .RD2(RD2)
 );
 
assign A = RD1;
assign B = (ALUSrc) ? immout : RD2;
reg [4:0]reg_adder;
always@(posedge clk_half or negedge rstn) begin
    if(!rstn) reg_adder<=5'b0;
    else if(sw_i[13]==1'b1) begin
        reg_adder <= reg_adder + 1'b1;
        reg_data <= U_RF.rf[reg_adder];
    end
end
alu U_alu(
    .A(A),
    .B(B),
    .ALUOp(ALUOp),
    .C(aluout),
    .Zero(Zero)
);
reg [1:0]alu_adder;

always@(posedge clk_half or negedge rstn) begin
    if(!rstn) alu_adder<=2'b00;
    else if(sw_i[12]==1'b1) begin
        alu_adder <= alu_adder + 1'b1;
       case(alu_adder)
           2'b00:alu_disp_data<=A;
           2'b01:alu_disp_data<=B;
           2'b10:alu_disp_data<=aluout;
           2'b11:alu_disp_data<=ALUOp;
       endcase
    end
end

assign dm_addr = aluout;
assign dm_din = RD2;
dm U_DM(
    .clk(Clk_CPU),
    .rstn(rstn),
    .DMWr(MemWrite),
    .addr(dm_addr),
    .din(dm_din),
    .DMType(DMType),
    .dout(dm_out)
);

parameter DM_DATA_NUM=16;
reg [4:0]dmem_addr;
always@(posedge clk_half or negedge rstn) begin
    if(!rstn) dmem_addr<=5'b00000;
    else if(sw_i[11]==1'b1) begin
        dmem_addr <= dmem_addr + 1'b1;
        dmem_data=U_DM.dmem[dmem_addr][7:0];
        if(dmem_addr==DM_DATA_NUM)begin
            dmem_addr<=5'd0;
            dmem_data<=32'hFFFFFFFF;
        end
    end
end

seg7x16 u_seg7x16(
    .clk(clk),
    .rstn (rstn),
    .i_data(display_data),
    .disp_mode(sw_i[0]),
    .o_seg(disp_seg_o),
    .o_sel(disp_an_o)
);

endmodule