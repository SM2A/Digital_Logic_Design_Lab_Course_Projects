`timescale 1ns/1ns

module dds (input clk , rst , input [7:0]pc , output [7:0]address);

    wire [7:0]res , add_in;

    adder a(.a(pc),.b(add_in),.cin(1'b0),.result(res),.cout());
    register r(.clk(clk),.pin(res),.ld(1'b1),.rst(rst),.pout(add_in));

    assign address = add_in;
    
endmodule

module adder (a,b,cin,result,cout);
    
    parameter N = 8;
    input [N-1:0]a;
    input [N-1:0]b;
    input cin;
    output cout;
    output [N-1:0]result;
    
    assign {cout,result} = a + b + cin; 

endmodule

module register (clk,pin,ld,rst,pout);
    
    parameter N = 8;
    input clk;
    input ld;
    input rst;
    input [N-1:0]pin;
    output reg [N-1:0]pout;

    always @(posedge clk) begin
        if(rst) pout <= 0;
        else pout <= pin;
    end

endmodule

module dds_test ();
    
    reg clk = 0 , rst = 1;
    wire [7:0]address;

    dds test(.clk(clk),.rst(rst),.pc(8'b00000001),.address(address));

    always #10 clk = ~clk;
    initial begin
        #20 rst = 0;
        #50000 $stop;
    end

endmodule
