module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
    
    wire [99:0] couts;
    genvar i;
    bcd_fadd I1(a[3:0], b[3:0], cin, couts[0], sum[3:0]);
    
    generate 
        for(i=4; i<400; i=i+4)
    		begin: bcd
                bcd_fadd I2(a[i+3:i], b[i+3:i], couts[i/4 - 1], couts[i/4], sum[i+3:i]);
        	end
        
    endgenerate

    assign cout = couts[99];

endmodule
