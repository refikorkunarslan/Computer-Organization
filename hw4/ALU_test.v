`define DELAY 50
module ALU32_testbench(); 
reg [31:0] input1, input2;
reg [3:0] select;
reg select1;
reg carry_in;
wire carryOut, carryOut1;
wire [31:0] result,instruction;

ALU test_ALU(result,carryOut,carryOut1,input1,input2,select,select1,carry_in,instruction);

initial begin
#`DELAY;
input1 = 32'b11000111010111010111011110110111; input2 = 32'b00100100010001000110001001001001; select = 3'b010; select1 = 1'b0;
#`DELAY;


end
 
 
initial
begin

$monitor("time = %2d, input1 = %32b, input2 = %32b, select = %3b, result = %32b, carry_in = %1b, carry_out= %1b", $time, input1, input2, select, result, carry_in, carryOut);

end
 
endmodule