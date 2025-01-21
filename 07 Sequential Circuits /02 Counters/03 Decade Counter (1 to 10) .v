module top_module (
    input clk,
    input reset,
    output [3:0] q);
    
    always @ (posedge clk)
        begin
	        if(q==10 || reset)
    	        q <=1;
    		else
                q <= q + 1;
        end

endmodule
