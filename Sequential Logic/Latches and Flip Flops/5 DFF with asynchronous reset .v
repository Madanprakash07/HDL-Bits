module top_module (
    input clk,
    input areset,   
    input [7:0] d,
    output [7:0] q
);
    
    always @ (posedge clk or posedge areset)
        if (areset==1'b1) 
            q<= 1'b0;
		else
            q <= d;
    


endmodule
