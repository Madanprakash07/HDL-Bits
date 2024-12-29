module top_module (input x, input y, output z);
    
    wire z1,z2,z3,z4;
    circuita I1(x,y,z1);
    circuitb I2(x,y,z2);
    circuita I3(x,y,z3);
    circuitb I4(x,y,z4);
    
    assign z = (z1 || z2) ^ (z3 && z4);

endmodule



module circuita (input x, input y, output z);
    assign z = (x^y) && x;
endmodule

module circuitb ( input x, input y, output z );
    assign z = ~(x^y);
endmodule
