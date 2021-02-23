module Mux8(result,select,input0,input1,input2,input3,input4);

input input0,input1,input2,input3,input4;
input [2:0] select;
output result;
wire for_mux1,for_mux2;

Mux4 r1(for_mux1, select[1:0], input0, input1, input2, input3);
Mux2 res(result,for_mux1,input4,select[2]);

endmodule