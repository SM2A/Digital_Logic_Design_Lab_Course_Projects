`timescale 1ns/1ns

module ring_osillator #(parameter N = 3 , parameter DELAY = 5) (input starter,output clk);

    wire [0:N]w;
    assign clk = w[N];
    assign w[0] = starter ? 1'b1 : w[N];
    genvar i;
    generate
        for(i = 0 ; i < N ; i = i + 1) begin : inv_gates
            not #(DELAY) (w[i+1],w[i]);
        end
    endgenerate
    
endmodule

module ro_test ();

    wire out;
    reg s;
    ring_osillator #(5,1.93) test (s,out);

    initial begin
        s = 1'b1;
        #9.65 s = 1'b0;
        #500 $stop;

    end
    
endmodule
