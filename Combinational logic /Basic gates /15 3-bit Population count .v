module top_module( 
    input [2:0] in,
    output [1:0] out );
    
    always @(*)
	    case (in)
	3'h0 : out = 0; 	
	3'h1 : out = 1;
	3'h2 : out = 1;
	3'h3 : out = 2;
    3'h4 : out = 1;
    3'h5 : out = 2;
	3'h6 : out = 2;
    3'h7 : out = 3;
        
endcase

endmodule
