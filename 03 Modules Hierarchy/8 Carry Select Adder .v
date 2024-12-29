module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire carry1;
    wire [15:0] sum1,sum2;
    add16 I1(a[15:0], b[15:0], 1'b0, sum[15:0], carry1);
    add16 I2(a[31:16], b[31:16], 1'b0, sum1);
    add16 I3(a[31:16], b[31:16], 1'b1, sum2);
    
    always @(*)
        case(carry1)
            1'h0: sum[31:16] = sum1;
            1'h1: sum[31:16] = sum2;             
        endcase    
    

endmodule
