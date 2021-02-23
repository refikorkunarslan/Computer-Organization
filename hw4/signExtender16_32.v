module signExtender16_32(out,in);

input [15:0] in;
output [31:0] out;

		
		buf se0(out[0],in[0]),
			 se1(out[1],in[1]),
			 se2(out[2],in[2]),
			 se3(out[3],in[3]),
			 se4(out[4],in[4]),
			 se5(out[5],in[5]),
			 se6(out[6],in[6]),
			 se7(out[7],in[7]),
			 se8(out[8],in[8]),
			 se9(out[9],in[9]),
			 se10(out[10],in[10]),
			 se11(out[11],in[11]),
			 se12(out[12],in[12]),
			 se13(out[13],in[13]),
			 se14(out[14],in[14]),			 
			 se15(out[15],in[15]),
			 se16(out[16],in[15]),
			 se17(out[17],in[15]),
			 se18(out[18],in[15]),
			 se19(out[19],in[15]),
			 se20(out[20],in[15]),
			 se21(out[21],in[15]),
			 se22(out[22],in[15]),
			 se23(out[23],in[15]),
			 se24(out[24],in[15]),
			 se25(out[25],in[15]),
			 se26(out[26],in[15]),
			 se27(out[27],in[15]),
			 se28(out[28],in[15]),
			 se29(out[29],in[15]),
			 se30(out[30],in[15]),
			 se31(out[31],in[15]);


endmodule 