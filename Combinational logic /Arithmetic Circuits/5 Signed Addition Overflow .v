module top_module (
    input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); 
    wire carry0, carry1, carry2, carry3, carry4, carry5, carry6, carry7;
    fulladder I1(a[0], b[0], 0,      carry0, s[0]);
    fulladder I2(a[1], b[1], carry0, carry1, s[1]);
    fulladder I3(a[2], b[2], carry1, carry2, s[2]);
    fulladder I4(a[3], b[3], carry2, carry3, s[3]);
    fulladder I5(a[4], b[4], carry3, carry4, s[4]);
    fulladder I6(a[5], b[5], carry4, carry5, s[5]);
    fulladder I7(a[6], b[6], carry5, carry6, s[6]);
    fulladder I8(a[7], b[7], carry6, carry7, s[7]);
    
	assign overflow = (~(a[7] ^ b[7])) & (s[7] != a[7]);
    
endmodule

module fulladder( 
    input a, b, cin,
    output cout, sum );
    
    assign sum = a^b^cin;
    assign cout = (a^b && cin) || (a&&b);
endmodule
