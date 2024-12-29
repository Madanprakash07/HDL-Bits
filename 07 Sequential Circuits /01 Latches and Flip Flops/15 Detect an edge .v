module top_module (
    input clk,
    input [7:0] in,
    output [7:0] pedge
);
    
    reg [7:0] store;
    always @ (posedge clk)
        begin
            store <= in;
            pedge <= (~store) & in;
    		
        end
endmodule
