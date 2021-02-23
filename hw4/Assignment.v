module Assignment(clock);

input clock;

wire [31:0] instruction;
wire [31:0] write_data,read_data_1,read_data_2, writeToReg,writeToReg_2;
wire [31:0] read_data_from_memory;
wire [31:0] pcWriteAdress;
wire [4:0] write_reg, read_reg_1, read_reg_2,shamt;
wire [4:0] destReg,destReg_1;
wire [5:0] func;
wire [15:0] immed;
wire [25:0] address;
wire branch, MemRead, MemtoReg, MemWrite, ALUSrc, RegWrite, RegDest, jump, jal, bneq,lui,news;
wire [5:0] opcode;
wire [3:0] ALUOp;
wire [31:0] extendValue, ALUInput, ALUResult;
wire zero;
wire overflow = 1'b0;

assign opcode = instruction[31:26];
assign read_reg_1 = instruction[25:21]; 
assign read_reg_2 = instruction[20:16]; 
assign write_reg = instruction[15:11]; 
assign shamt = instruction[10:6];
assign func = instruction[5:0];
assign address = instruction[25:0];
assign immed = instruction[15:0];



reg [31:0] PC = 32'b0;

control_unit controlunit(opcode, func, branch, MemRead, MemtoReg, MemWrite, ALUSrc, RegWrite, RegDest, jump, jal, bneq,lui,news,ALUOp);


instruction_mem instructionmem(instruction, PC); 



mux_for_destination_register  selectDestReg(destReg, RegDest, read_reg_2, write_reg); // tamam

mux_for_destination_register  selectDesReg(destReg_1, news, destReg, read_reg_1);


signExtender16_32 signextend(extendValue,immed); 





mips_registerss registers(read_data_1,read_data_2,writeToReg,writeToReg_2,read_reg_1,read_reg_2,destReg_1,write_reg,RegWrite,news,jal,clock,PC);


mux_2_1_32bit selectALUsrc(ALUInput, ALUSrc, read_data_1, extendValue); 


ALU aluresult(ALUResult,carry_out_forAddO, carry_out_forSubO, read_data_2,ALUInput,ALUOp,lui, 0,instruction,zero);




data_memory readwritememory(read_data_from_memory, ALUResult, read_data_2, MemRead, MemWrite);




mux_2_1_32bit selectregisterwritedata(writeToReg, MemtoReg, ALUResult, read_data_from_memory);


compare com(writeToReg_2,ALUResult,32'b00000000000000000000000000000001,32'b00000000000000000000000000000010,32'b00000000000000000000000000000011);





signExtender26_32 extendjumpadress(address, pcWriteAdress);

always @(posedge clock)
begin
	
	
	if (branch && zero && ~bneq)
		PC = PC + extendValue + 1;
	

	else if (jump && (opcode == 6'b000000))
		PC = read_data_1;
			
	
	else if (jump) 
		PC = pcWriteAdress;
		
	else 
		PC = PC+1;
end 




endmodule