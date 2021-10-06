`timescale 1ps/1ps;

module fm_test ();

    reg [2:0]n = 1;
    reg clk = 0 , rst = 1 , adjust = 0 , InFreq = 0;

    wire [15:0]k;
    wire valid , outFreq;

    frequency_multiplier test(.clk(clk),.rst(rst),.InFreq(InFreq),.adjust(adjust),.n(n),.k(k),.valid(valid),.outFreq(outFreq));

    always #2500 clk = ~clk;
    always #2000000 InFreq = ~InFreq;

    initial begin
        #4000000 rst = 0;
        #4000000 adjust = 1;
        #4000000 adjust = 0;
        #2000000000 n = 3 ; adjust = 1;
        #4000000 adjust = 0;
        #2000000000 n = 7 ; adjust = 1;
        #4000000 adjust = 0;
        #2000000000 $stop;
    end
    
endmodule
