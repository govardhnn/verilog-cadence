module halfadd(input a,b, output sum, carry);
assign sum = a ^ b;
assign carry = a & b;
endmodule


module fulladd(input a,b,cin, output sum, carry);

wire n_sum1, n_carry1, n_carry2;

halfadd U1(.a(a), .b(b), .sum(n_sum1), .carry(n_carry1));
halfadd U2(.a(n_sum1), .b(cin), .sum(sum), .carry(n_carry2);
or U3(carry, n_carry2, n_carry1);

endmodule

