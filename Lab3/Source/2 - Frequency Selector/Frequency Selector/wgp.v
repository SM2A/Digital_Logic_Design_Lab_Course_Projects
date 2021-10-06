module wgp (input clk , rst , input [2:0]func , input [7:0]count_num , output reg [7:0]waveform);
    
    reg [7:0] ups , dns;
    reg [15:0]current_sin , nxt_sin , current_cos , nxt_cos;
    reg [7:0] rhomboid , square , reciprocal , triangle , fwr , hwr , smsw;

    // SQUARE
    always @(posedge clk) begin
        if (rst) square = 0;
        else begin
            if (count_num[7]) square = 255;
				else square = 0;
        end
    end

    // TRIANGLE
    always @(posedge clk) begin
        if (rst) triangle = 0;
        else begin
            if (count_num[7]) triangle = triangle - 1;
            else triangle = triangle + 1;
        end
    end

    // RHOMBOID
    always @(count_num) begin
        ups = 0 ; dns = 0 ;
        if (count_num[7])begin
            ups = 8'b11111111 - count_num;
            dns = count_num - 8'b11111111;
        end 
        else begin
            ups = count_num;    
            dns = -count_num;    
        end
    end

    always @(posedge clk) begin
        if (rst) rhomboid = 0;
        else begin
            if(count_num[0]) rhomboid = dns + 127;
            else rhomboid = ups + 127;
        end
    end

    // RECIPROCAL
    always @(posedge clk) begin
        if(rst) reciprocal = 0;
        else reciprocal = (255 / (255 - count_num));
    end

    // SIN
    always @(current_sin , current_cos) begin
        nxt_sin = current_sin + {{6{current_cos[15]}} , current_cos[15:6]};
    end
    //COS
    always @(nxt_sin , current_cos) begin
        nxt_cos = current_cos - {{6{nxt_sin[15]}} , nxt_sin[15:6]};
    end

    always @(posedge clk) begin
        if(rst) begin
            current_sin = 0;
            current_cos = 16'd30000;
        end
        else begin
            current_sin = nxt_sin;
            current_cos = nxt_cos;
        end
    end

    // SIN MODULATED SQUARE WAVE
    always @(posedge clk) begin
        if(rst) smsw = 0;
        else begin
            if(count_num[4]) smsw = -current_sin[15:8] + 127;
            else smsw = current_sin[15:8] + 127;
        end
    end

    // FULL-WAVE RECTIFIED
    always @(posedge clk) begin
        if(rst) fwr = 0;
        else begin
            if(current_sin[15]) fwr = -current_sin[15:8] + 127;
            else fwr = current_sin[15:8] + 127;
        end
    end 

    // HALF-WAVE RECTIFIED
    always @(posedge clk) begin
        if(rst) hwr = 0;
        else begin
            if(current_sin[15]) hwr = 127;
            else hwr = current_sin[15:8] + 127;
        end
    end

    // OUTPUT
    always @(posedge clk) begin
		  if (rst) waveform = 0;
        case (func)
            3'b000 : waveform <= rhomboid ;
            3'b001 : waveform <= square ;
            3'b010 : waveform <= reciprocal ;
            3'b011 : waveform <= triangle ;
            3'b100 : waveform <= fwr ;
            3'b101 : waveform <= hwr ;
            3'b110 : waveform <= smsw ;
            3'b111 : waveform = 8'bz ;
				default : waveform = 8'bx;
        endcase
    end

endmodule
