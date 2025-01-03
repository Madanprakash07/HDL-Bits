module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire [7:0] q1,q2,q3;
    my_dff8 I1(clk, d, q1);
    my_dff8 I2(clk, q1, q2);
    my_dff8 I3(clk, q2, q3);
	
    always @(*)		
		case(sel)
			2'h0: q = d;
			2'h1: q = q1;
			2'h2: q = q2;
			2'h3: q = q3;
		endcase   
    
endmodule

