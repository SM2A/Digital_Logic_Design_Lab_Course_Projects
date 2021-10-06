module frequency_multiplier (input clk,rst,InFreq,adjust,input [2:0]n,output [15:0]k,output valid,outFreq);

    wire cnt_en,cnt_ld,cout,calc_k,new_calc;

    datapath_ dp_(.RefClk(clk),.clk(InFreq),.rst(rst),.cnt_en(cnt_en),.cnt_ld(cnt_ld),.n(n),.cout(cout),.calc_k(calc_k),
                .out(outFreq),.k(k),.new_calc(new_calc));
    controller_ ct_(.clk(clk),.rst(rst),.adjust(adjust),.calc_k(calc_k),.cout(cout),.valid(valid),.cnt_en(cnt_en),.cnt_ld(cnt_ld),
                  .new_calc(new_calc));
    
endmodule

module datapath_ (input RefClk,clk,rst,cnt_en,cnt_ld,new_calc,input [2:0]n,output cout,output reg calc_k,out,output [15:0]k);

    reg prev_clk;
    reg [15:0] duration , counter , current;

    always @(posedge RefClk , posedge rst) begin
        if (rst) begin prev_clk = 0; end
        else prev_clk <= clk;
    end

    always @(posedge RefClk) begin
        case ({prev_clk , clk})
            2'b00 : current <= k ;
            2'b01 : begin duration <= 16'd1 ; calc_k = 0 ; end 
            2'b10 : begin calc_k = 1 ; end 
            2'b11 : duration <= duration + 1 ; 
        endcase

        if(new_calc) counter <= (16'b1111111111111111 - (k >> 1));
        else if(cnt_ld) counter <= (16'b1111111111111111 - (current >> 1));      
        else if (cnt_en) counter = counter + 1 ;

    end

    always @(posedge cout , posedge rst) begin
		if (rst) out = 0;
		else out <= ~out ;
	end

    assign k = (duration << 1) >> n;
    assign cout = &{counter};
    
endmodule

module controller_ (input clk,rst,adjust,calc_k,cout,output reg valid,cnt_en,cnt_ld,new_calc);
    
    reg [2:0]ps , ns;
    parameter [2:0] idle = 0 , ready = 1 , calculate = 2 , load_calculated = 3 , count = 4 , redo = 5 ;

	always @(posedge clk ,posedge adjust ,posedge calc_k ,posedge cout) begin
		case(ps)
			idle : ns = (adjust) ? ready : idle ;
			ready : ns = (adjust) ? ready : calculate ;
			calculate : ns = (calc_k) ? load_calculated : calculate ;
			load_calculated : ns = count ;
			count : begin
				if (adjust) ns = ready ;
				else if (cout) ns = redo ;
			end
            redo : ns = count ;
			default : ns = idle ;
		endcase
	end

	always @(ps) begin
		valid = 0 ; cnt_en = 0 ; cnt_ld = 0 ; new_calc = 0 ;
		case (ps)
            load_calculated : begin new_calc = 1 ; valid = 1 ; end 
            count : begin cnt_en = 1 ; valid = 1 ; end 
            redo : begin cnt_ld = 1 ; valid = 1 ; end
        endcase
	end
    
	always @(posedge clk , posedge rst) begin
		if (rst) ps <= idle ;
		else ps <= ns ;
	end

endmodule
