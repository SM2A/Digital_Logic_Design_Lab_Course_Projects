module shift_register (clk,pin,num,ld,en,pout);
    
    parameter N = 8;
    input clk;
    input ld;
    input en;
    input [N-1:0]pin;
    input [1:0]num;
    output reg [N-1:0]pout;

    always @(posedge clk) begin
        if(ld) pout <= pin;
        else if(en) pout <= (pout << num);
		else pout <= pout;
    end

endmodule
