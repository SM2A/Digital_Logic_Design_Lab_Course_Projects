module ABRCKT (input ABUD,UxRX,BRGCLK , output [7:0]N , output UxRXIF);

    wire cnt_en , cnt_rst , reg_ld;
    ABRCKT_DP dp(BRGCLK,cnt_en , cnt_rst , reg_ld , N);
    ABRCKT_CT dt(ABUD,UxRX,BRGCLK,UxRX_,cnt_en , cnt_rst , reg_ld);
    
endmodule

module ABRCKT_DP (input clk , cnt_en , cnt_rst , reg_ld , output [7:0]N);

    wire [7:0]out;
    cnt_8 cnt (clk,cnt_rst,cnt_en,out);
    reg_8 register(clk,reg_ld,out,N);
    
endmodule

module ABRCKT_CT (input ABUD,UxRX,BRGCLK , output reg UxRXIF , cnt_en , cnt_rst , reg_ld);
    
    reg [2:0]ps,ns;
    integer i = 0;
    parameter [2:0] idle = 0 , ready = 1 , init = 2 , count = 3 , stop = 4;
    always @(ps , UxRX , ABUD) begin
        ns = idle;
        case(ps)
            idle : ns = ABUD ? ready : idle;
            ready : ns =  UxRX ? ready : init;
            init : ns = UxRX ? init : count;
            count : ns = (i==5) ? stop : count;
            stop : ns = idle;
            default : ns = idle; 
        endcase
    end

    always @(ps , UxRX , ABUD) begin
        UxRXIF = 0 ; cnt_en = 0 ; cnt_rst = 0 ; reg_ld = 0;
        case(ps)
            idle : begin UxRXIF = 0; end
            ready : begin cnt_rst = 1; end
            init : begin cnt_rst = 0; end
            count : begin cnt_en = 1; i = i + 1; end
            stop : begin UxRXIF = 1 ; reg_ld = 1; end
        endcase
    end

    always @(posedge BRGCLK) begin
        ps <= ns;
    end

endmodule

module reg_8(input clk,ld,input[7:0] pin, output reg[7:0] pout);

  always @(posedge clk) begin
    pout <= ld ? pin : pout;
  end

endmodule

`timescale 1ns/1ns

module cnt_8 (input clk, rst, en, output reg [7:0] out);

  always @ (posedge clk, posedge rst) begin
    if(rst)
      out <= 0;
    else
      if(en)
        out <= out + 1;
  end

endmodule
