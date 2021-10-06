module counter (clk,pin,select,ld,rst,en,pout,co);
    
    parameter N = 8;
    input clk;
    input ld;
    input en;
    input select;
    input rst;
    input [N-1:0]pin;
    output co;
    output reg [N-1:0]pout;

    always @(posedge clk) begin
        if(rst) pout <= 0;
        else if(ld) pout <= pin;
        else begin
            if(en)begin
                if(select == 1) pout <= pout + 1;
                if(select == 0) pout <= pout - 1;
            end
        end
    end

    assign co = (select == 1) ? &{pout} : &{~pout};

endmodule
