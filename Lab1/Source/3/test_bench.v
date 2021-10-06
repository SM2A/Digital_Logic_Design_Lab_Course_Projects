`timescale 1ns/1ns

module test_nech ();

    wire clk[3:0];
    parameter K = 0;
    wire UxRXIF,BRGOUT;
    reg ABUD,UxRX,preset;
    BRGCKT test(BRGOUT,clk[K],ABUD,UxRX,preset,UxRXIF);
    reg starter[3:0];

    ring_osillator #(7,3) test0 (starter[0],clk[0]);
    ring_osillator #(14,3) test1 (starter[1],clk[1]);
    ring_osillator #(28,3) test2 (starter[2],clk[2]);
    ring_osillator #(56,3) test3 (starter[3],clk[3]);
    integer i;


    initial begin
        starter[0] = 1'b1;
        starter[1] = 1'b1;
        starter[2] = 1'b1;
        starter[3] = 1'b1;
        #21 starter[0] = 1'b0;
        #20 starter[1] = 1'b0;
        #21 starter[2] = 1'b0;
        #21 starter[3] = 1'b0;

        #100
        ABUD = 1;
        UxRX = 1;
        
        #100
        UxRX = 0;

        for(i = 0 ; i < 9 ; i = i + 1)begin
            #42 UxRX = ~UxRX;
        end

        #500 $stop;

    end
    
endmodule
