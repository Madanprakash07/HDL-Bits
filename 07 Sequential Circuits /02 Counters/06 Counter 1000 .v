module top_module (
    input clk,
    input reset,
    output OneHertz,
    output [2:0] c_enable
); //
    reg [3:0] res1, res2, res3;
    bcdcount counter0 (clk, reset, c_enable[0], res1);
    bcdcount counter1 (clk, reset, c_enable[1], res2);
    bcdcount counter2 (clk, reset, c_enable[2], res3);    
    
    assign c_enable[0] = 1'b1;
    assign c_enable[1] = res1[0] & res1[3];
    assign c_enable[2] = res1[0] & res1[3] & res2[0] & res2[3];
    assign OneHertz = res1[0] & res1[3] & res2[0] & res2[3] & res3[0] & res3[3];

endmodule
