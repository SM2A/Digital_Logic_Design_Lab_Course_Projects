module clock_monitoring (input clk50 , input clk_ex , input [7:0]PSI_set , input [7:0]PSI_min , input [7:0]PSI_max ,
                        input [7:0]FRO_min , output reg Fail , output reg [7:0]setPeriod);

    always @(PSI_set , PSI_min , PSI_max) begin
        if (PSI_set < PSI_min) setPeriod <= PSI_min;
        else if (PSI_set > PSI_max) setPeriod <= PSI_max;
        else if ((PSI_set < PSI_max) && (PSI_set > PSI_min)) setPeriod <= PSI_set;
    end

    reg [15:0]counter;
    reg previous , rst;

    always @(clk50) begin
        previous <= clk_ex;
    end

    always @(posedge clk_ex) begin
        Fail <= (counter > (FRO_min*6)) ? 1 : 0;
        rst <= ({previous,clk_ex} == 2'b01) ? 1 : 0;
    end
    
    always @(posedge clk50) begin
        if(rst) counter <= 0;
        else counter <= (counter + 1);
    end

endmodule

/*module TB();

    reg [7:0]fromin = 1;
    reg [7:0]set = 100;
    reg [7:0]min = 60;
    reg [7:0]max = 190;
    wire [7:0]period;
    reg clk_ex = 1 , clk50 = 1;
    wire fail;
    clock_monitoring test(.clk50(clk50),.clk_ex(clk_ex),.Fail(fail),.FRO_min(fromin),
                          .PSI_set(set),.PSI_min(min),.PSI_max(max),.setPeriod(period));

    always #10 clk50 = ~clk50;
    always #45 clk_ex = ~clk_ex;
    initial begin
        #1500
        fromin = 2;
        set = 200;
        #1000
        set = 50;
        #1000
        set = 150;
        #5000 $stop;
    end
    
endmodule*/
