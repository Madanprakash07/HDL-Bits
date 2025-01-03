module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
    
    genvar i;
    Fadder I1(a[0], b[0], cin, cout[0], sum[0]);
   	
    
    generate for(i=1;i<100; i++)
        begin: Fadder_gen
            Fadder I2(a[i], b[i], cout[i-1], cout[i], sum[i]);
        end
    endgenerate

endmodule


module Fadder(a,b,cin,cout,sum);
    input a,b,cin;
    output cout, sum;
    assign sum = a^b^cin;
	assign cout = (a&&b) || (b&&cin) || (cin&&a); 
endmodule
