module Mux4(result, select, input0,input1,input2,input3 );
input input0,input1,input2,input3;
input [1:0] select;
output result;
wire for_mux1, for_mux2;

Mux2 r1(for_mux1,input0,input1,select[0]);
Mux2 r2(for_mux2,input2,input3,select[0]);
Mux2 res(result,for_mux1,for_mux2,select[1]);

endmodule