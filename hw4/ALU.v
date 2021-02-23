module ALU(Result,carry_out_forAddO,carry_out_forSubO,input1,input2,select,select1,carry_in,instr,zero);
input [31:0] input1,input2,instr;
input [3:0] select;
input select1,zero;
input carry_in;
output carry_out_forAddO, carry_out_forSubO;
output[31:0] Result;
wire [31:0] out,out1;
wire [31:0] forAnd,forOr,forXor,forNor,forAdd,forSub;


And_32 andres(forAnd,input1,input2);
Or_32 orres(forOr,input1,input2);
Xor_32 xorres(forXor,input1,input2);
Add32 addres(forAdd,carry_out_forAddO,input1,input2,0);
Sub subres(forSub,carry_out_forSubO,input1,input2);

mux5_32bit  esds(out,select,forAnd,forOr,forXor,forAdd,forSub);
lui_32 lui(out1,instr);
mux_2_1_32bit muxx(Result,select1,out,out1);

or (temp, Result[31], Result[30], Result[29], Result[28], Result[27], Result[26], Result[25], Result[24], Result[23],
			Result[22], Result[21], Result[20], Result[19], Result[18], Result[17], Result[16], Result[15], Result[14], Result[13],
			Result[12], Result[11], Result[10], Result[9], Result[8], Result[7], Result[6], Result[5], Result[4], Result[3],
			Result[2], Result[1], Result[0]);
			
not (zero, temp);
			

endmodule