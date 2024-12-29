module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
   
    wire carry1;
    wire [15:0] sum1, sum2;
   
    add16 I1(.a(a[15:0]),
             .b(b[15:0]),
             .cin(2'b0),
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
