module Add32(res, co, a, b, ci);
input [31:0] a, b;
output [31:0] res;
input ci;
output co;
wire [30:0] ww;


Add FA0(res[0], ww[0], a[0], b[0], ci),
			FA1(res[1], ww[1], a[1], b[1], ww[0]),
				FA2(res[2], ww[2], a[2], b[2], ww[1]),
					FA3(res[3], ww[3], a[3], b[3], ww[2]),
					FA4(res[4], ww[4], a[4], b[4], ww[3]),
					FA5(res[5], ww[5], a[5], b[5], ww[4]),
					FA6(res[6], ww[6], a[6], b[6], ww[5]),
					FA7(res[7], ww[7], a[7], b[7], ww[6]),
					FA8(res[8], ww[8], a[8], b[8], ww[7]),
					FA9(res[9], ww[9], a[9], b[9], ww[8]),
					FA10(res[10], ww[10], a[10], b[10], ww[9]),
					FA11(res[11], ww[11], a[11], b[11], ww[10]),
					FA12(res[12], ww[12], a[12], b[12], ww[11]),
					FA13(res[13], ww[13], a[13], b[13], ww[12]),
					FA14(res[14], ww[14], a[14], b[14], ww[13]),
					FA15(res[15], ww[15], a[15], b[15], ww[14]),
					FA16(res[16], ww[16], a[16], b[16], ww[15]),
					FA17(res[17], ww[17], a[17], b[17], ww[16]),
					FA18(res[18], ww[18], a[18], b[18], ww[17]),
					FA19(res[19], ww[19], a[19], b[19], ww[18]),
					FA20(res[20], ww[20], a[20], b[20], ww[19]),
					FA21(res[21], ww[21], a[21], b[21], ww[20]),
					FA22(res[22], ww[22], a[22], b[22], ww[21]),
					FA23(res[23], ww[23], a[23], b[23], ww[22]),
					FA24(res[24], ww[24], a[24], b[24], ww[23]),
					FA25(res[25], ww[25], a[25], b[25], ww[24]),
					FA26(res[26], ww[26], a[26], b[26], ww[25]),
					FA27(res[27], ww[27], a[27], b[27], ww[26]),
					FA28(res[28], ww[28], a[28], b[28], ww[27]),
					FA29(res[29], ww[29], a[29], b[29], ww[28]),
					FA30(res[30], ww[30], a[30], b[30], ww[29]),
					FA31(res[31], co, a[31], b[31], ww[30]);
					
endmodule