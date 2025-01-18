module top_module (
    input clk,
    input reset,        
    output [3:0] q);
    
    always @(posedge clk)
        if(reset || q==9)
            q <= 0;
    	else
            q <= q+1;

endmodule
