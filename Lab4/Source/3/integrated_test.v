`timescale 1ns/1ns

module integrated_test ();

    reg [2:0]n = 7;
    reg [1:0]ui = 1;
    reg [15:0]vi = 16'b0010000000000000;
    reg ref_clk = 0 , rst = 1 , clk = 0 , adjust = 0 , start = 0 , rd_req = 0 ;

    wire [20:0]q;
    wire [1:0]usedw;
    wire done , full , empty;

    integrated test(.done(done),.ref_clk(ref_clk),.rst(rst),.clk(clk),.adjust(adjust),.n(n),.start(start),
                    .rd_req(rd_req),.ui(ui),.vi(vi),.full(full),.empty(empty),.q(q),.usedw(usedw));

    always #5000 clk =~clk;
    always #5 ref_clk = ~ref_clk;

    initial begin
        #10000 rst = 0; 
        #10000 adjust = 1; 
        #10000 adjust = 0; 
        #10000 start = 1; 
        #10000 start = 0;
        #100000 rd_req = 1;
        #50000 $stop;
    end
    
endmodule
