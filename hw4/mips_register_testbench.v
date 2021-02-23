`define DELAY 20
module mips_register_testbench(); 
reg [4:0] read_reg_1, read_reg_2, write_reg1,write_reg2;
reg signal_reg_write1,signal_reg_write2, clk;
reg [31:0] write_data1,write_data2;
wire [31:0] read_data_1, read_data_2;



mips_registers test_register(read_data_1,read_data_2,write_data1,write_data2,read_reg_1,read_reg_2,write_reg1,write_reg2,signal_reg_write1,signal_reg_write2,clk);

initial begin
read_reg_1 = 5'b00000; read_reg_2 = 5'b00001; write_reg1 = 4'b0010;write_reg2 = 4'b0110; signal_reg_write1 = 1'b1;  signal_reg_write2 = 1'b1;clk = 1'b1; write_data1 = 32'b11111111111111111111111111111111;write_data2 = 32'b11111111101111110110101110110111;
#`DELAY;
end
 
 
initial
begin

$monitor("time = %2d, read_data_1 = %32b, read_data_2 = %32b", $time, read_data_1, read_data_2);

end
 
endmodule