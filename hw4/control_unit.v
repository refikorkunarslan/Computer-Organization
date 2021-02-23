module control_unit
(
	input [5:0] opcode, func,
	output reg branch, MemRead, MemtoReg, MemWrite, ALUSrc, RegWrite, RegDest, jump, jal, bneq,lui,news,
	output reg [3:0] ALUOp
);
	
	always @ (*) begin
	
		
		if (opcode == 6'b000000) begin
				jump = 1'b0;
				branch = 1'b0;
				MemRead = 1'b0;
				MemtoReg = 1'b0;
				MemWrite = 1'b0;
				ALUSrc = 1'b0;
				RegWrite = 1'b1;
				RegDest = 1'b1;
				bneq = 1'b0;
				jal = 1'b0;
				lui = 1'b0;
				news = 1'b1;
				
				
				if (func == 6'b100000)
					ALUOp = 4'b0010; 
					
				else if (func == 6'b100010)
				
					ALUOp = 4'b0110; 
	
					
					
				
				else if (func == 6'b100110)
					ALUOp = 4'b0011; 
					
				else if (func == 6'b001000) begin
					ALUOp = 4'b1000;
					jump = 1'b1;
			      news = 1'b0;
					RegWrite = 1'b0;
				   RegDest = 1'b0;
					end
					
				 
				else if (func == 6'b100101) 
					ALUOp = 4'b0001; 
					
			
				
				else if (func == 6'b100100)
					ALUOp = 4'b0000; 
					
			
		end
		
		else if (opcode == 6'b000010) begin
			jump = 1'b1;
			branch = 1'b0;
			MemRead = 1'b0;
			MemtoReg = 1'b0;
			MemWrite = 1'b0;
			ALUSrc = 1'b0;
			RegWrite = 1'b0;
			RegDest = 1'b0;
			ALUOp = 4'b1000;
			bneq = 1'b0;
			jal = 1'b0;
			lui = 1'b0;
			news = 1'b0;
			
		end
		
		else if (opcode == 6'b000011) begin
			jump = 1'b1;
			branch = 1'b0;
			MemRead = 1'b0;
			MemtoReg = 1'b0;
			MemWrite = 1'b0;
			ALUSrc = 1'b0;
			RegWrite = 1'b0;
			RegDest = 1'b0;
			ALUOp = 4'b0000;
			bneq = 1'b0;
			jal = 1'b1;
			lui = 1'b0;
			news = 1'b0;
			
		end
		
		
		
		
		
		else if (opcode == 6'b000100) begin
			jump = 1'b0;
			branch = 1'b1;
			MemRead = 1'b0;
			MemtoReg = 1'b0;
			MemWrite = 1'b0;
			ALUSrc = 1'b0;
			RegWrite = 1'b0;
			RegDest = 1'b0;
			ALUOp = 4'b0110;
			bneq = 1'b0;
			jal = 1'b0;
			lui = 1'b0;
			news = 1'b0;
			
			
		end
		 
		else if (opcode == 6'b000101) begin
			jump = 1'b0;
			branch = 1'b1;
			MemRead = 1'b0;
			MemtoReg = 1'b0;
			MemWrite = 1'b0;
			ALUSrc = 1'b1;
			RegWrite = 1'b0;
			RegDest = 1'b0;
			ALUOp = 4'b0110;
			bneq = 1'b1;
			jal = 1'b0;
			lui = 1'b0;
			news = 1'b0;
			
		end
		
		
		else if (opcode == 6'b001111) begin
			jump = 1'b0;
			branch = 1'b0;
			MemRead = 1'b0;
			MemtoReg = 1'b0;
			MemWrite = 1'b0;
			ALUSrc = 1'b1;
			RegWrite = 1'b1;
			RegDest = 1'b0;
			ALUOp = 4'b1101;
			bneq = 1'b0;
			jal = 1'b0;
			lui = 1'b1;
			news = 1'b0;
			
		end
		
		else if (opcode == 6'b100011) begin
			jump = 1'b0;
			branch = 1'b0;
			MemRead = 1'b1;
			MemtoReg = 1'b1;
			MemWrite = 1'b0;
			ALUSrc = 1'b1;
			RegWrite = 1'b1;
			RegDest = 1'b0;
			ALUOp = 4'b0010;
			bneq = 1'b0;
			jal = 1'b0;
			lui = 1'b0;
			news = 1'b0;
			
		end
		
		
		else if (opcode == 6'b001101) begin
			jump = 1'b0;
			branch = 1'b0;
			MemRead = 1'b0;
			MemtoReg = 1'b0;
			MemWrite = 1'b0;
			ALUSrc = 1'b1;
			RegWrite = 1'b1;
			RegDest = 1'b0;
			ALUOp = 4'b0001;
			bneq = 1'b0;
			jal = 1'b0;
			lui = 1'b0;
			news = 1'b0;
			
		end
		
		
		else if (opcode == 6'b101011) begin
			jump = 1'b0;
			branch = 1'b0;
			MemRead = 1'b0;
			MemtoReg = 1'b0;
			MemWrite = 1'b1;
			ALUSrc = 1'b1;
			RegWrite = 1'b0;
			RegDest = 1'b0;
			ALUOp = 4'b0001;
			bneq = 1'b0;
			jal = 1'b0;
			lui = 1'b0;
			news = 1'b0;
			
		end
	end
endmodule