module ctrl(
    input [6:0] Op,  //opcode
    input [6:0] Funct7,  //funct7 
    input [2:0] Funct3,    // funct3 
    input Zero,
    output RegWrite, // control signal for register write
    output MemWrite, // control signal for memory write
    output	[5:0]EXTOp,    // control signal to signed extension
    output [4:0] ALUOp,    // ALU opertion
    output ALUSrc,  // ALU source for b
    output [2:0]DMType, //dm r/w type
    output [1:0]WDSel    
); 
//R-type
wire rtype= ~Op[6]&Op[5]&Op[4]&~Op[3]&~Op[2]&Op[1]&Op[0]; //0110011
wire i_add=rtype&~Funct7[6]&~Funct7[5]&~Funct7[4]&~Funct7[3]&~Funct7[2]&~Funct7[1]&~Funct7[0]&~Funct3[2]&~Funct3[1]&~Funct3[0]; // add 0000000 000
wire i_sub=rtype&~Funct7[6]&Funct7[5]&~Funct7[4]&~Funct7[3]&~Funct7[2]&~Funct7[1]&~Funct7[0]&~Funct3[2]&~Funct3[1]&~Funct3[0]; // sub 0100000 000

//i_type
wire itype_l  = ~Op[6]&~Op[5]&~Op[4]&~Op[3]&~Op[2]&Op[1]&Op[0]; //0000011
wire i_lb=itype_l&~Funct3[2]& ~Funct3[1]& ~Funct3[0]; //lb 000
wire i_lh=itype_l&~Funct3[2]& ~Funct3[1]& Funct3[0];  //lh 001
wire i_lw=itype_l&~Funct3[2]& Funct3[1]& ~Funct3[0];  //lw 010
wire i_lbu=itype_l&Funct3[2]& ~Funct3[1]& ~Funct3[0]; //lbu 100
wire i_lhu=itype_l&Funct3[2]& ~Funct3[1]& Funct3[0];  //lhu 101
 
// i_i type(calculate)
wire itype_r  = ~Op[6]&~Op[5]&Op[4]&~Op[3]&~Op[2]&Op[1]&Op[0]; //0010011
wire i_addi  =  itype_r& ~Funct3[2]& ~Funct3[1]& ~Funct3[0]; // addi 000 func3

// s format
wire stype = ~Op[6]&Op[5]&~Op[4]&~Op[3]&~Op[2]&Op[1]&Op[0]   ;//0100011
wire i_sw  = stype& ~Funct3[2]& Funct3[1]&~Funct3[0]; // sw 010
wire i_sb=stype& ~Funct3[2]& ~Funct3[1]&~Funct3[0];
wire i_sh=stype&& ~Funct3[2]&~Funct3[1]&Funct3[0];

//mux
assign RegWrite = rtype |itype_r|itype_l; // register write
assign MemWrite = stype;              // memory write
assign ALUSrc = itype_r | stype | itype_l; // ALU B is from instruction immediate
//mem2reg=wdsel ,WDSel_FromALU 2'b00  WDSel_FromMEM 2'b01
assign WDSel[0] = itype_l;   
assign WDSel[1] = 1'b0;   
   
//aluop
`define ALUOp_nop 5'b00000
`define ALUOp_lui 5'b00001
`define ALUOp_auipc 5'b00010
`define ALUOp_add 5'b00011
assign ALUOp[0]= i_add|i_addi|stype|itype_l ;
assign ALUOp[1]= i_add|i_addi|stype|itype_l ;
assign ALUOp[2] = 1'b0;  
assign ALUOp[3] = 1'b0;  
assign ALUOp[4] = 1'b0;  

assign EXTOp[5] = 1'b0; 
assign EXTOp[3] =  stype;
assign EXTOp[4] =  itype_l | itype_r ; 
assign EXTOp[2:0] = 3'b000;
 
`define dm_word 3'b000
`define dm_halfword 3'b001
`define dm_halfword_unsigned 3'b010
`define dm_byte 3'b011
`define dm_byte_unsigned 3'b100

assign DMType[2]=i_lbu;
assign DMType[1]=i_lb | i_sb | i_lhu;
assign DMType[0]=i_lh | i_sh | i_lb | i_sb;

endmodule

    