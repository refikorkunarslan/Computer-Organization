module compare(result,input1,s1,s2,s3);
output reg [31:0] result;
input [31:0] input1,s1,s2,s3;

always @ * begin

if (input1 == 32'b00000000000000000000000000000000)
	result = s1;
else if (input1 < 32'b00000000000000000000000000000000)	
	result = s2;
else
	result = s3;
end

endmodule
