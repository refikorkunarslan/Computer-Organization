module PCadder (branch,zero,bneq,PC,extendValue,jump,opcode,read_data_1,pcWriteAdress,clock);
output reg  [31:0] PC;
input branch,jump, bneq,zero,bneq,clock;
input [31:0] extendValue, read_data_1,pcWriteAdress;
input [5:0] opcode;
always @(posedge clock)
begin
	
	// decide branc or not
	if (branch && zero && ~bneq)
		PC = PC + extendValue + 1;
	
	// jr instruction
	else if (jump && opcode == 6'b000000)
		PC = read_data_1;
			
	// jump instruction
	else if (jump) 
		PC = pcWriteAdress;
		
	else 
		PC = PC+1;
end 


endmodule