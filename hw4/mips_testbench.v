module mips_testbench ();
reg clock;
wire result;

Assignment test(clock);

initial clock = 0;
always
begin
	#50 clock=~clock;

end


initial begin
	$readmemb("registers.mem", test.registers.registers);
	end

always @(posedge clock)
	begin
	$writememb("res_registers.mem", test.registers.registers);
	end

endmodule