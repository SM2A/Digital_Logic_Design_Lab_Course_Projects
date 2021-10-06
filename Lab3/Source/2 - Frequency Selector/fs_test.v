`timescale 1ns/1ns

module fs_test ();

    wire co;
    wire [7:0]wave;
    reg clk = 0 , rst = 1 , preset = 0;
    reg [12:0]sw = 13'b0011111111111 , pc = 1;

    fs test(.co(co),.preset(preset),.sw(sw),.clk(clk),.wave(wave),.rst(rst),.phase_cnt(pc));

    always #10 clk = ~clk;
    initial begin
        #20 rst = 0; preset = 1;
        #50000 pc = 5;
        #50000 pc = 10;
        #50000 $stop;
    end

endmodule
