module top_module( 
    input [254:0] in,
    output [7:0] out );
    
    reg [7:0] count;
    always @(*)
        begin
            count = 0;
            for(int i=0; i<255; i++)
                if(in[i]==1)
                    count = count+1'b1;
            out = count;
        end

endmodule
