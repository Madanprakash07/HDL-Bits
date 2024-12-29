module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [31:0] bXORsub;
    wire carry1;
    assign bXORsub = b ^ {32{sub}};
    
    add16 I1(a[15:0],
             bXORsub[15:0],
             sub,
             sum[15:0],
             carry1
    );
    
    add16 I2(a[31:16],
             bXORsub[31:16],
             carry1,
             sum[31:16],
    );

endmodule
