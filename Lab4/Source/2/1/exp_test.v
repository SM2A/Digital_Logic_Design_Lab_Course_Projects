`timescale 1ns/1ns

module exp_test ();

    reg [15:0]x = 0;
    reg clk = 1 , rst = 1 , start = 0;

    wire done;
    wire [1:0]integer_part;
    wire [15:0]fractional_part;
    
    exponential test(.clk(clk),.rst(rst),.start(start),.x(x),.done(done),.intpart(integer_part),.fracpart(fractional_part));

    always #10 clk = ~clk;

    initial begin
        #20 rst = 0;
            start = 1;
        #20 start = 0;
        #10000
            start = 1;
            #20 start = 0;
            x = 16'b1000000000000000;
        #10000
            start = 1;
            #20 start = 0;
            x = 16'b1111111111111111;
        #10000 $stop;
    end

endmodule