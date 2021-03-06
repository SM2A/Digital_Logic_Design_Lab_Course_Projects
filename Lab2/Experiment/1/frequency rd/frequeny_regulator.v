module frequency_regulator (input clk , rst , PSI , input [7:0]setPeriod , output reg [7:0]adjustedDiv,
                            output reg [1:0]increment_decrement , output reg [15:0]counter);
    
    reg previous;

    always @(posedge clk , posedge rst) begin : _transition_
        if (rst) previous <= 0;
        else previous <= PSI;
    end

    always @(posedge clk , posedge rst) begin : decide_when_to_count_and_count
        if (rst) counter <= 0;
        else begin
            case ({previous,PSI})
                2'b01 : counter <= 0;
                2'b11 : counter <= counter + 1;
            endcase
        end
    end

    always @(previous , PSI , counter , setPeriod) begin : comparsion
        increment_decrement = 2'b10;
        if ({previous,PSI} == 2'b10) begin
            if ((counter+1) > {8'b00000000,setPeriod}) increment_decrement = 2'b11;
            else if ((counter+1) < {8'b00000000,setPeriod}) increment_decrement = 2'b00;
        end
    end

    always @(posedge clk , posedge rst) begin : _increment_decrement_
        if (rst) adjustedDiv <= 8'b01111111;
        else if ({previous,PSI} == 2'b10) begin
            if (increment_decrement == 2'b11) adjustedDiv <= adjustedDiv + 1;
            else if (increment_decrement == 2'b00) adjustedDiv <= adjustedDiv - 1;
        end
    end

endmodule
