module register_ (clk,pin,ld,pout);
    
    input clk;
    input ld;
    input [1:0]pin;
    output reg [1:0]pout;

    always @(posedge clk) begin
        if(ld) pout <= pin;
        else pout <= pout;
    end

endmodule
