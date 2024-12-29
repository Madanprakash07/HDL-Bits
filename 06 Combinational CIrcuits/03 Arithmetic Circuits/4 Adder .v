module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);

	wire carry0, carry1, carry2;    
    fulladder I0(x[0], y[0], 0,      carry0, sum[0]);
    fulladder I1(x[1], y[1], carry0, carry1, sum[1]);
    fulladder I2(x[2], y[2], carry1, carry2, sum[2]);
    fulladder I3(x[3], y[3], carry2, sum[4], sum[3]);
    
endmodule

module fulladder (a, b, cin, carry, sum);
        
    input a,b,cin;
    output carry,sum;
    assign sum = a^b^cin;
    assign carry = (a^b && cin) || (a&&b);

endmodule
