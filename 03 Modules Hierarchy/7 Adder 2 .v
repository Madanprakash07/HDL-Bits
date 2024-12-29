module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    
    wire carry1;
    wire [15:0] sum1, sum2;
    
    add16 I1(.a(a[15:0]),
             .b(b[15:0]),
    		 .cin(1'b0),
    		 .sum(sum1),
             .cout(carry1)
    );
    
    add16 I2(.a(a[31:16]),
             .b(b[31:16]),
             .cin(carry1),
             .sum(sum2)      
    );    

    assign sum = {sum2,sum1};
endmodule



module add1 ( input a, input b, input cin,   output sum, output cout );
	
    wire aXORb, and1, and2, or1;
    
    assign aXORb = a ^ b;
    assign and1  = aXORb && cin;
    assign and2  = a && b;
    assign or1   = and1 || and2;
    
    assign sum = aXORb ^ cin;
    assign cout = or1;
	

endmodule
