module noise (input clk_in , output reg clk_out);

    reg [2:0]ps,ns;
    parameter [2:0] wf1 = 0 , nc1 = 1 , s1 = 2 , nc0 = 3 ;

    always @(clk_in , ps) begin
        ns = 0;
        case(ps)
            wf1 : ns = (clk_in == 1) ? nc1 : wf1 ;
            nc1 : ns = (clk_in == 1) ? s1 : wf1 ;
            s1 :  ns = (clk_in == 1) ? s1 : nc0 ;
            nc0 : ns = (clk_in == 1) ? s1 : wf1 ;
        endcase
    end

    always @(ps) begin
        case(ps)
            wf1 : clk_out <= 0;
            nc1 : clk_out <= 0;
            s1 :  clk_out <= 1;
            nc0 : clk_out <= 1;
        endcase
    end

    always @(posedge clk_in) begin
        ps <= ns;
    end
    
endmodule