`timescale 1ns/1ns

module wrapper_test ();
    
    reg [1:0]ui = 1;
    reg [15:0]vi = 16'b0010000000000000;
    reg clk = 0 , start = 0 , rd_req = 0;

    wire [20:0]q;
    wire [1:0]usedw;
    wire done , empty , full;

    wrapper test(.done(done),.clk(clk),.start(start),.vi(vi),.full(full),.rd_req(rd_req),.ui(ui),.empty(empty),.q(q),.usedw(usedw));

    always #10 clk = ~clk;

    initial begin
        #20 start = 1 ;
        #20 start = 0 ;
        #10000 rd_req = 1 ;
        #500 $stop;
    end

endmodule
