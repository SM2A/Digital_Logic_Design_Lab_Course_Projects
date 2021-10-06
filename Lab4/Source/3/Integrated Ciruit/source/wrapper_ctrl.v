module wrapper_ctrl(input clk,start,eng_done,output reg done,wr_req,eng_start,sr_ld,sc_ld,r_ld,sr_en,sc_en);

    integer i = 0;
    reg [3:0]ps , ns;
    parameter [3:0] idle = 0 , ready = 1 , load = 2 , check = 3 , calc = 4 , shift = 5 , write = 6 , finish = 15;

    always @(posedge clk , posedge start , posedge eng_done ) begin
        case (ps)
            idle : ns = (start) ? ready : idle ;
            ready : ns = (start) ? ready : load ;
            load : ns = check ;
            check : ns = (i == 4) ? finish : calc ;
            calc : ns = (eng_done) ? shift : calc ;
            shift : ns = write ;
            write : ns = check ;
            finish : ns = idle ;
            default : ns = idle; 
        endcase
    end

    always @(ps) begin
        done = 0 ; wr_req = 0 ; eng_start = 0 ; sr_ld = 0 ; sc_ld = 0 ; r_ld = 0 ; sr_en = 0 ; sc_en = 0 ;
        case (ps)
            load : begin sr_ld = 1 ; r_ld = 1 ; end
            check : eng_start = 1 ;
            calc : sc_ld = 1 ;
            shift : begin sc_en = 1 ; sr_en = 1 ; end
            write : wr_req = 1 ;
            finish : done = 1 ;
        endcase
    end

    always @(posedge clk) ps <= ns ;
    
endmodule
