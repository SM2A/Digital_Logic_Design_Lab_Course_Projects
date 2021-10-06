`timescale 1ns/1ns

module cm_tb_1 ();

    reg [7:0]set = 125;
    reg [7:0]min = 90;
    reg [7:0]max = 160;
    reg [7:0]fromin = 1;
    wire [1:0]inc_dec;
    wire [7:0]adjusted;
    wire [15:0]duration;
    wire [7:0]set_period;
    wire [7:0]counter_out;
    wire PSI , clk_ex , clock , fail;
    reg preset = 0 , clk50 = 1 , rst_r = 1 , starter = 1;

    ring_osillator #(7,6) RO (starter,clk_ex);

    monitor test(.psi_out(PSI),.preset(preset),.clk_50(clk50),.rst_r(rst_r),.clk_ex(clk_ex),.fro_min(fromin),
                 .max(max),.min(min),.set(set),.main_clock(clock),.adj(adjusted),.counter_out(counter_out),
                 .duration(duration),.inc_dec(inc_dec),.set_period(set_period),.fail(fail));

    always #10 clk50 = ~clk50;
    initial begin

        #42 starter = 0;
        #25 rst_r = 0;
        #25 preset = 1;
        
        #1500000 set = 80;
        #100000 set = 170;

        #150000 $stop;
        
    end
    
endmodule

module cm_tb_2 ();

    reg [7:0]set = 125;
    reg [7:0]min = 90;
    reg [7:0]max = 160;
    reg [7:0]fromin = 0;
    wire [1:0]inc_dec;
    wire [7:0]adjusted;
    wire [15:0]duration;
    wire [7:0]set_period;
    wire [7:0]counter_out;
    wire PSI , clk_ex , clock , fail;
    reg preset = 0 , clk50 = 1 , rst_r = 1 , starter = 1;

    ring_osillator #(5,5) RO (starter,clk_ex);

    monitor test(.psi_out(PSI),.preset(preset),.clk_50(clk50),.rst_r(rst_r),.clk_ex(clk_ex),.fro_min(fromin),
                 .max(max),.min(min),.set(set),.main_clock(clock),.adj(adjusted),.counter_out(counter_out),
                 .duration(duration),.inc_dec(inc_dec),.set_period(set_period),.fail(fail));

    always #10 clk50 = ~clk50;
    initial begin

        #25 starter = 0;
        #25 rst_r = 0;
        #25 preset = 1;
        
        #750000 fromin = 250;

        #500000 $stop;
        
    end
    
endmodule
 