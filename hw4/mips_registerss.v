module mips_registerss
(
	output reg [31:0] read_data_1, read_data_2,
	input [31:0] write_data_1,write_data_2,
	input [4:0] read_reg_1, read_reg_2, write_reg_1,write_reg_2,
	input signal_reg_write,news, jal, clk,
	input [31:0] pc
);
	reg [31:0] registers [31:0];
	
	

	always @ (read_reg_1 or read_reg_2 or registers) begin
		read_data_1 <= registers[read_reg_1];
		read_data_2 <= registers[read_reg_2];
	end
	
	always @(posedge clk ) begin
		if (signal_reg_write) begin
			registers[write_reg_1] <= write_data_1;
      end
		if (news) begin
			registers[write_reg_2] <= write_data_2;
      end
	
		if (jal) begin
			registers[31] = pc + 2;
		end
	end
endmodule