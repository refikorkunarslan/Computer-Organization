module lui_32(out, in);
output [31:0] out;
input [31:0] in;


buf se0(out[15],1'b0),
			 se1(out[16],in[1]),
			 se2(out[17],in[2]),
			 se3(out[18],in[3]),
			 se4(out[19],in[4]),
			 se5(out[20],in[5]),
			 se6(out[21],in[6]),
			 se7(out[22],in[7]),
			 se8(out[23],in[8]),
			 se9(out[24],in[9]),
			 se10(out[25],in[10]),
			 se11(out[26],in[11]),
			 se12(out[27],in[12]),
			 se13(out[28],in[13]),
			 se14(out[29],in[14]),			 
			 se15(out[30],in[15]),
			 se16(out[31],in[15]),
			 se17(out[0],1'b0),
			 se18(out[1],1'b0),
			 se19(out[2],1'b0),
			 se20(out[3],1'b0),
			 se21(out[4],1'b0),
			 se22(out[5],1'b0),
			 se23(out[6],1'b0),
			 se24(out[7],1'b0),
			 se25(out[8],1'b0),
			 se26(out[9],1'b0),
			 se27(out[10],1'b0),
			 se28(out[11],1'b0),
			 se29(out[12],1'b0),
			 se30(out[13],1'b0),
			 se31(out[14],1'b0);


endmodule 