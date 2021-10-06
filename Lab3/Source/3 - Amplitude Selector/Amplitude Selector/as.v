module as (input [7:0]in_wave , input [1:0]amp , output reg[7:0] out_wave);

    always @(in_wave , amp) begin
        out_wave = 0;
        case(amp)
            2'b00 : out_wave = in_wave;
            2'b01 : out_wave = {{1{in_wave[7]}}, in_wave[7:1]};
            2'b10 : out_wave = {{2{in_wave[7]}}, in_wave[7:2]};
            2'b11 : out_wave = {{3{in_wave[7]}}, in_wave[7:3]};
        endcase
    end
    
endmodule