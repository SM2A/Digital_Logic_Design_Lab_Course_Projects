`timescale 1ns/1ns

module frd_tb ();

    wire [7:0]adjusted;
    wire [7:0]duration;
    wire [7:0]counter_out;
    wire clk_d,PSI;
    wire [1:0]inc_dec;
    // reg [7:0]set_period = 8'b00111110;
    reg [7:0]set_period = 8'b01111101;
    reg clk_r = 1 , rst_r = 1 , preset = 0 , starter = 1;
    ring_osillator #(5,5) RO (starter,clk_d);
    frequency_rd RD(.psi_out(PSI),.preset(preset),.clk_r(clk_r),.rst_r(rst_r),.set_period(set_period),
                    .clk_d(clk_d),.inc_dec(inc_dec),.adj(adjusted),.duration(duration),.counter_out(counter_out));

    always #10 clk_r = ~clk_r;
    initial begin

        #25 starter = 0;
        #25 rst_r = 0;
        #25 preset = 1;

        // #1000000 $stop;
        #750000 $stop;
        
    end
    
endmodule
