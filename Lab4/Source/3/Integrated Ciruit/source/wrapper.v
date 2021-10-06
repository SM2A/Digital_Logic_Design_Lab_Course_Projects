// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
// CREATED		"Sat Jun 19 15:02:57 2021"

module wrapper(
	clk,
	start,
	rd_req,
	ui,
	vi,
	done,
	full,
	empty,
	q,
	usedw
);


input wire	clk;
input wire	start;
input wire	rd_req;
input wire	[1:0] ui;
input wire	[15:0] vi;
output wire	done;
output wire	full;
output wire	empty;
output wire	[20:0] q;
output wire	[1:0] usedw;

wire	[1:0] nums;
wire	[20:0] res;
wire	SYNTHESIZED_WIRE_0;
wire	[15:0] SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	[1:0] SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	[20:0] SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;





exponential	b2v_inst(
	.clk(clk),
	.start(SYNTHESIZED_WIRE_0),
	.x(SYNTHESIZED_WIRE_1),
	.done(SYNTHESIZED_WIRE_10),
	.fracpart(res[15:0]),
	.intpart(res[17:16]));


shift_register	b2v_inst1(
	.clk(clk),
	.ld(SYNTHESIZED_WIRE_2),
	.en(SYNTHESIZED_WIRE_3),
	.num(nums),
	.pin(vi),
	.pout(SYNTHESIZED_WIRE_1));
	defparam	b2v_inst1.N = 16;


shift_register	b2v_inst2(
	.clk(clk),
	.ld(SYNTHESIZED_WIRE_4),
	.en(SYNTHESIZED_WIRE_5),
	.num(SYNTHESIZED_WIRE_6),
	.pin(res),
	.pout(SYNTHESIZED_WIRE_9));
	defparam	b2v_inst2.N = 21;


register_	b2v_inst3(
	.clk(clk),
	.ld(SYNTHESIZED_WIRE_7),
	.pin(ui),
	.pout(SYNTHESIZED_WIRE_6));


fifo	b2v_inst4(
	.wrreq(SYNTHESIZED_WIRE_8),
	.rdreq(rd_req),
	.clock(clk),
	.data(SYNTHESIZED_WIRE_9),
	.full(full),
	.empty(empty),
	.q(q),
	.usedw(usedw));





wrapper_ctrl	b2v_inst9(
	.clk(clk),
	.start(start),
	.eng_done(SYNTHESIZED_WIRE_10),
	.done(done),
	.wr_req(SYNTHESIZED_WIRE_8),
	.eng_start(SYNTHESIZED_WIRE_0),
	.sr_ld(SYNTHESIZED_WIRE_2),
	.sc_ld(SYNTHESIZED_WIRE_4),
	.r_ld(SYNTHESIZED_WIRE_7),
	.sr_en(SYNTHESIZED_WIRE_3),
	.sc_en(SYNTHESIZED_WIRE_5));
	defparam	b2v_inst9.calc = 4'b0100;
	defparam	b2v_inst9.check = 4'b0011;
	defparam	b2v_inst9.finish = 4'b1111;
	defparam	b2v_inst9.idle = 4'b0000;
	defparam	b2v_inst9.load = 4'b0010;
	defparam	b2v_inst9.ready = 4'b0001;
	defparam	b2v_inst9.shift = 4'b0101;
	defparam	b2v_inst9.write = 4'b0110;

assign	nums[0] = 1;
assign	nums[1] = 0;
assign	res[20:18] = 3'b000;

endmodule
