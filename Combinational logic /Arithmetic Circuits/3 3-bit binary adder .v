module top_module( 
    input [2:0] a, b,
    input cin,
    output [2:0] cout,
    output [2:0] sum );
    
    wire cout1, cout2, cout3;
    fulladder I1(a[0], b[0], cin, cout1, sum[0]);
    fulladder I2(a[1], b[1], cout1, cout2, sum[1]);
    fulladder I3(a[2], b[2], cout2, cout3, sum[2]);
    assign cout = {cout3,cout2,cout1};
    
endmodule

module fulladder(a,b,cin,carry,sum);
    input a, b, cin;
    output sum, carry;
    
    assign sum = a^b^cin;
    assign carry = (a^b && cin) || (a&&b);

endmodule
