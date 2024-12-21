module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire carry1;
   
    add16 I1(.a(a[15:0]),
             .b(b[15:0]),
             .cin(2'b0),
             .sum(sum[15:0]),
             .cout(carry1)
    );    
    
    add16 I2(.a(a[31:16]),
             .b(b[31:16]),
             .cin(carry1),
             .sum(sum[31:16])         		  
    );
endmodule
