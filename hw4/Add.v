module Add(sum, carry_out, a, b, carry_in);
input a, b, carry_in;
output sum, carry_out;
wire temp_sum, first_carry_out, second_carry_out;

xor sum_of_digits(temp_sum, a, b);
and carry_of_sum(first_carry_out, a, b);

xor sum_of_digits1(sum, temp_sum, carry_in);
and carry_of_sum1(second_carry_out,  temp_sum, carry_in);



or final_carry_out(carry_out, second_carry_out, first_carry_out);

endmodule