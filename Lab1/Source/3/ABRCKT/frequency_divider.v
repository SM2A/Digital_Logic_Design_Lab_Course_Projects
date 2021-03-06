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

// VENDOR "Altera"
// PROGRAM "Quartus II 64-Bit"
// VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

// DATE "04/10/2021 10:13:17"

// 
// Device: Altera EP4CE6E22A7 Package TQFP144
// 

// 
// This Verilog file should be used for ModelSim-Altera (Verilog) only
// 

`timescale 1 ps/ 1 ps

module frequency_divider (
	o3,
	i3,
	i2,
	i1,
	i0,
	clk,
	i7,
	i6,
	i5,
	i4,
	preset,
	o2,
	o1,
	o0,
	o7,
	o6,
	o5,
	o4,
	co);
output 	o3;
input 	i3;
input 	i2;
input 	i1;
input 	i0;
input 	clk;
input 	i7;
input 	i6;
input 	i5;
input 	i4;
input 	preset;
output 	o2;
output 	o1;
output 	o0;
output 	o7;
output 	o6;
output 	o5;
output 	o4;
output 	co;

// Design Ports Information
// o3	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
// o2	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
// o1	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
// o0	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
// o7	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
// o6	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
// o5	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
// o4	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
// co	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
// i3	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
// i2	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
// i1	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
// i0	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
// i7	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
// i6	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
// i5	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
// i4	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
// preset	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
// clk	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default


wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
assign unknown = 1'bx;

tri1 devclrn;
tri1 devpor;
tri1 devoe;
// synopsys translate_off
initial $sdf_annotate("frequency_divider_v.sdo");
// synopsys translate_on

wire \inst|51~combout ;
wire \inst|5~combout ;
wire \inst1|51~combout ;
wire \inst1|5~combout ;
wire \i2~input_o ;
wire \i6~input_o ;
wire \o3~output_o ;
wire \o2~output_o ;
wire \o1~output_o ;
wire \o0~output_o ;
wire \o7~output_o ;
wire \o6~output_o ;
wire \o5~output_o ;
wire \o4~output_o ;
wire \co~output_o ;
wire \inst5~clkctrl_outclk ;
wire \inst1|24~1_combout ;
wire \inst1|24~3_combout ;
wire \inst1|24~_emulated_q ;
wire \inst1|24~2_combout ;
wire \i0~input_o ;
wire \inst|26~1_combout ;
wire \inst|26~3_combout ;
wire \inst|26~_emulated_q ;
wire \inst|26~2_combout ;
wire \inst|24~1_combout ;
wire \inst|24~3_combout ;
wire \inst|24~_emulated_q ;
wire \inst|24~2_combout ;
wire \clk~input_o ;
wire \inst|21~combout ;
wire \inst|27~combout ;
wire \i4~input_o ;
wire \inst1|26~1_combout ;
wire \inst1|26~3_combout ;
wire \inst1|26~_emulated_q ;
wire \inst1|26~2_combout ;
wire \inst1|21~combout ;
wire \inst1|27~combout ;
wire \preset~input_o ;
wire \inst5~combout ;
wire \i3~input_o ;
wire \inst|23~1_combout ;
wire \inst|23~3_combout ;
wire \inst|23~_emulated_q ;
wire \inst|23~2_combout ;
wire \i1~input_o ;
wire \inst|25~1_combout ;
wire \inst|25~3_combout ;
wire \inst|25~_emulated_q ;
wire \inst|25~2_combout ;
wire \i7~input_o ;
wire \inst1|23~1_combout ;
wire \inst1|23~3_combout ;
wire \inst1|23~_emulated_q ;
wire \inst1|23~2_combout ;
wire \i5~input_o ;
wire \inst1|25~1_combout ;
wire \inst1|25~3_combout ;
wire \inst1|25~_emulated_q ;
wire \inst1|25~2_combout ;
wire \inst3|8~0_combout ;
wire \inst3|8~q ;


// Location: LCCOMB_X1_Y5_N0
cycloneive_lcell_comb \inst|51 (
// Equation(s):
// \inst|51~combout  = LCELL((\clk~input_o ) # ((!\inst|25~2_combout ) # (!\inst|26~2_combout )))

	.dataa(gnd),
	.datab(\clk~input_o ),
	.datac(\inst|26~2_combout ),
	.datad(\inst|25~2_combout ),
	.cin(gnd),
	.combout(\inst|51~combout ),
	.cout());
// synopsys translate_off
defparam \inst|51 .lut_mask = 16'hCFFF;
defparam \inst|51 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y5_N30
cycloneive_lcell_comb \inst|5 (
// Equation(s):
// \inst|5~combout  = LCELL((\clk~input_o ) # (!\inst|26~2_combout ))

	.dataa(gnd),
	.datab(gnd),
	.datac(\inst|26~2_combout ),
	.datad(\clk~input_o ),
	.cin(gnd),
	.combout(\inst|5~combout ),
	.cout());
// synopsys translate_off
defparam \inst|5 .lut_mask = 16'hFF0F;
defparam \inst|5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X3_Y5_N16
cycloneive_lcell_comb \inst1|51 (
// Equation(s):
// \inst1|51~combout  = LCELL(((\inst|27~combout ) # (!\inst1|26~2_combout )) # (!\inst1|25~2_combout ))

	.dataa(gnd),
	.datab(\inst1|25~2_combout ),
	.datac(\inst1|26~2_combout ),
	.datad(\inst|27~combout ),
	.cin(gnd),
	.combout(\inst1|51~combout ),
	.cout());
// synopsys translate_off
defparam \inst1|51 .lut_mask = 16'hFF3F;
defparam \inst1|51 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X3_Y5_N26
cycloneive_lcell_comb \inst1|5 (
// Equation(s):
// \inst1|5~combout  = LCELL((\inst|27~combout ) # (!\inst1|26~2_combout ))

	.dataa(gnd),
	.datab(\inst1|26~2_combout ),
	.datac(gnd),
	.datad(\inst|27~combout ),
	.cin(gnd),
	.combout(\inst1|5~combout ),
	.cout());
// synopsys translate_off
defparam \inst1|5 .lut_mask = 16'hFF33;
defparam \inst1|5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X0_Y6_N22
cycloneive_io_ibuf \i2~input (
	.i(i2),
	.ibar(gnd),
	.o(\i2~input_o ));
// synopsys translate_off
defparam \i2~input .bus_hold = "false";
defparam \i2~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X7_Y0_N1
cycloneive_io_ibuf \i6~input (
	.i(i6),
	.ibar(gnd),
	.o(\i6~input_o ));
// synopsys translate_off
defparam \i6~input .bus_hold = "false";
defparam \i6~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOOBUF_X0_Y6_N16
cycloneive_io_obuf \o3~output (
	.i(\inst|23~2_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\o3~output_o ),
	.obar());
// synopsys translate_off
defparam \o3~output .bus_hold = "false";
defparam \o3~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X0_Y7_N2
cycloneive_io_obuf \o2~output (
	.i(\inst|24~2_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\o2~output_o ),
	.obar());
// synopsys translate_off
defparam \o2~output .bus_hold = "false";
defparam \o2~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X1_Y0_N23
cycloneive_io_obuf \o1~output (
	.i(\inst|25~2_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\o1~output_o ),
	.obar());
// synopsys translate_off
defparam \o1~output .bus_hold = "false";
defparam \o1~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X5_Y0_N16
cycloneive_io_obuf \o0~output (
	.i(\inst|26~2_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\o0~output_o ),
	.obar());
// synopsys translate_off
defparam \o0~output .bus_hold = "false";
defparam \o0~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X0_Y23_N2
cycloneive_io_obuf \o7~output (
	.i(\inst1|23~2_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\o7~output_o ),
	.obar());
// synopsys translate_off
defparam \o7~output .bus_hold = "false";
defparam \o7~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X0_Y8_N16
cycloneive_io_obuf \o6~output (
	.i(\inst1|24~2_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\o6~output_o ),
	.obar());
// synopsys translate_off
defparam \o6~output .bus_hold = "false";
defparam \o6~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X0_Y18_N16
cycloneive_io_obuf \o5~output (
	.i(\inst1|25~2_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\o5~output_o ),
	.obar());
// synopsys translate_off
defparam \o5~output .bus_hold = "false";
defparam \o5~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X0_Y21_N9
cycloneive_io_obuf \o4~output (
	.i(\inst1|26~2_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\o4~output_o ),
	.obar());
// synopsys translate_off
defparam \o4~output .bus_hold = "false";
defparam \o4~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X0_Y18_N23
cycloneive_io_obuf \co~output (
	.i(\inst3|8~q ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\co~output_o ),
	.obar());
// synopsys translate_off
defparam \co~output .bus_hold = "false";
defparam \co~output .open_drain_output = "false";
// synopsys translate_on

// Location: CLKCTRL_G0
cycloneive_clkctrl \inst5~clkctrl (
	.ena(vcc),
	.inclk({vcc,vcc,vcc,\inst5~combout }),
	.clkselect(2'b00),
	.devclrn(devclrn),
	.devpor(devpor),
	.outclk(\inst5~clkctrl_outclk ));
// synopsys translate_off
defparam \inst5~clkctrl .clock_type = "global clock";
defparam \inst5~clkctrl .ena_register_mode = "none";
// synopsys translate_on

// Location: LCCOMB_X3_Y5_N14
cycloneive_lcell_comb \inst1|24~1 (
// Equation(s):
// \inst1|24~1_combout  = (GLOBAL(\inst5~clkctrl_outclk ) & (\i6~input_o )) # (!GLOBAL(\inst5~clkctrl_outclk ) & ((\inst1|24~1_combout )))

	.dataa(\i6~input_o ),
	.datab(gnd),
	.datac(\inst1|24~1_combout ),
	.datad(\inst5~clkctrl_outclk ),
	.cin(gnd),
	.combout(\inst1|24~1_combout ),
	.cout());
// synopsys translate_off
defparam \inst1|24~1 .lut_mask = 16'hAAF0;
defparam \inst1|24~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X3_Y5_N2
cycloneive_lcell_comb \inst1|24~3 (
// Equation(s):
// \inst1|24~3_combout  = \inst1|24~1_combout  $ (!\inst1|24~2_combout )

	.dataa(gnd),
	.datab(gnd),
	.datac(\inst1|24~1_combout ),
	.datad(\inst1|24~2_combout ),
	.cin(gnd),
	.combout(\inst1|24~3_combout ),
	.cout());
// synopsys translate_off
defparam \inst1|24~3 .lut_mask = 16'hF00F;
defparam \inst1|24~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X3_Y5_N3
dffeas \inst1|24~_emulated (
	.clk(\inst1|51~combout ),
	.d(\inst1|24~3_combout ),
	.asdata(vcc),
	.clrn(!\inst5~clkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\inst1|24~_emulated_q ),
	.prn(vcc));
// synopsys translate_off
defparam \inst1|24~_emulated .is_wysiwyg = "true";
defparam \inst1|24~_emulated .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X3_Y5_N6
cycloneive_lcell_comb \inst1|24~2 (
// Equation(s):
// \inst1|24~2_combout  = (\inst5~combout  & (\i6~input_o )) # (!\inst5~combout  & ((\inst1|24~1_combout  $ (\inst1|24~_emulated_q ))))

	.dataa(\i6~input_o ),
	.datab(\inst1|24~1_combout ),
	.datac(\inst5~combout ),
	.datad(\inst1|24~_emulated_q ),
	.cin(gnd),
	.combout(\inst1|24~2_combout ),
	.cout());
// synopsys translate_off
defparam \inst1|24~2 .lut_mask = 16'hA3AC;
defparam \inst1|24~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X13_Y0_N15
cycloneive_io_ibuf \i0~input (
	.i(i0),
	.ibar(gnd),
	.o(\i0~input_o ));
// synopsys translate_off
defparam \i0~input .bus_hold = "false";
defparam \i0~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X2_Y5_N24
cycloneive_lcell_comb \inst|26~1 (
// Equation(s):
// \inst|26~1_combout  = (\inst5~combout  & (\i0~input_o )) # (!\inst5~combout  & ((\inst|26~1_combout )))

	.dataa(gnd),
	.datab(\i0~input_o ),
	.datac(\inst5~combout ),
	.datad(\inst|26~1_combout ),
	.cin(gnd),
	.combout(\inst|26~1_combout ),
	.cout());
// synopsys translate_off
defparam \inst|26~1 .lut_mask = 16'hCFC0;
defparam \inst|26~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X2_Y5_N8
cycloneive_lcell_comb \inst|26~3 (
// Equation(s):
// \inst|26~3_combout  = \inst|26~1_combout  $ (!\inst|26~2_combout )

	.dataa(gnd),
	.datab(\inst|26~1_combout ),
	.datac(gnd),
	.datad(\inst|26~2_combout ),
	.cin(gnd),
	.combout(\inst|26~3_combout ),
	.cout());
// synopsys translate_off
defparam \inst|26~3 .lut_mask = 16'hCC33;
defparam \inst|26~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X2_Y5_N9
dffeas \inst|26~_emulated (
	.clk(\clk~input_o ),
	.d(\inst|26~3_combout ),
	.asdata(vcc),
	.clrn(!\inst5~clkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\inst|26~_emulated_q ),
	.prn(vcc));
// synopsys translate_off
defparam \inst|26~_emulated .is_wysiwyg = "true";
defparam \inst|26~_emulated .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X2_Y5_N0
cycloneive_lcell_comb \inst|26~2 (
// Equation(s):
// \inst|26~2_combout  = (\inst5~combout  & (\i0~input_o )) # (!\inst5~combout  & ((\inst|26~_emulated_q  $ (\inst|26~1_combout ))))

	.dataa(\inst5~combout ),
	.datab(\i0~input_o ),
	.datac(\inst|26~_emulated_q ),
	.datad(\inst|26~1_combout ),
	.cin(gnd),
	.combout(\inst|26~2_combout ),
	.cout());
// synopsys translate_off
defparam \inst|26~2 .lut_mask = 16'h8DD8;
defparam \inst|26~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y6_N22
cycloneive_lcell_comb \inst|24~1 (
// Equation(s):
// \inst|24~1_combout  = (GLOBAL(\inst5~clkctrl_outclk ) & (\i2~input_o )) # (!GLOBAL(\inst5~clkctrl_outclk ) & ((\inst|24~1_combout )))

	.dataa(\i2~input_o ),
	.datab(gnd),
	.datac(\inst|24~1_combout ),
	.datad(\inst5~clkctrl_outclk ),
	.cin(gnd),
	.combout(\inst|24~1_combout ),
	.cout());
// synopsys translate_off
defparam \inst|24~1 .lut_mask = 16'hAAF0;
defparam \inst|24~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y6_N6
cycloneive_lcell_comb \inst|24~3 (
// Equation(s):
// \inst|24~3_combout  = \inst|24~1_combout  $ (!\inst|24~2_combout )

	.dataa(\inst|24~1_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(\inst|24~2_combout ),
	.cin(gnd),
	.combout(\inst|24~3_combout ),
	.cout());
// synopsys translate_off
defparam \inst|24~3 .lut_mask = 16'hAA55;
defparam \inst|24~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X1_Y6_N7
dffeas \inst|24~_emulated (
	.clk(\inst|51~combout ),
	.d(\inst|24~3_combout ),
	.asdata(vcc),
	.clrn(!\inst5~clkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\inst|24~_emulated_q ),
	.prn(vcc));
// synopsys translate_off
defparam \inst|24~_emulated .is_wysiwyg = "true";
defparam \inst|24~_emulated .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X1_Y6_N14
cycloneive_lcell_comb \inst|24~2 (
// Equation(s):
// \inst|24~2_combout  = (\inst5~combout  & (\i2~input_o )) # (!\inst5~combout  & ((\inst|24~1_combout  $ (\inst|24~_emulated_q ))))

	.dataa(\i2~input_o ),
	.datab(\inst5~combout ),
	.datac(\inst|24~1_combout ),
	.datad(\inst|24~_emulated_q ),
	.cin(gnd),
	.combout(\inst|24~2_combout ),
	.cout());
// synopsys translate_off
defparam \inst|24~2 .lut_mask = 16'h8BB8;
defparam \inst|24~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X0_Y5_N15
cycloneive_io_ibuf \clk~input (
	.i(clk),
	.ibar(gnd),
	.o(\clk~input_o ));
// synopsys translate_off
defparam \clk~input .bus_hold = "false";
defparam \clk~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X1_Y5_N16
cycloneive_lcell_comb \inst|21 (
// Equation(s):
// \inst|21~combout  = LCELL((((\clk~input_o ) # (!\inst|24~2_combout )) # (!\inst|26~2_combout )) # (!\inst|25~2_combout ))

	.dataa(\inst|25~2_combout ),
	.datab(\inst|26~2_combout ),
	.datac(\inst|24~2_combout ),
	.datad(\clk~input_o ),
	.cin(gnd),
	.combout(\inst|21~combout ),
	.cout());
// synopsys translate_off
defparam \inst|21 .lut_mask = 16'hFF7F;
defparam \inst|21 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X3_Y5_N28
cycloneive_lcell_comb \inst|27 (
// Equation(s):
// \inst|27~combout  = LCELL((\inst|21~combout ) # (!\inst|23~2_combout ))

	.dataa(gnd),
	.datab(gnd),
	.datac(\inst|23~2_combout ),
	.datad(\inst|21~combout ),
	.cin(gnd),
	.combout(\inst|27~combout ),
	.cout());
// synopsys translate_off
defparam \inst|27 .lut_mask = 16'hFF0F;
defparam \inst|27 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X3_Y0_N1
cycloneive_io_ibuf \i4~input (
	.i(i4),
	.ibar(gnd),
	.o(\i4~input_o ));
// synopsys translate_off
defparam \i4~input .bus_hold = "false";
defparam \i4~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X3_Y5_N30
cycloneive_lcell_comb \inst1|26~1 (
// Equation(s):
// \inst1|26~1_combout  = (GLOBAL(\inst5~clkctrl_outclk ) & (\i4~input_o )) # (!GLOBAL(\inst5~clkctrl_outclk ) & ((\inst1|26~1_combout )))

	.dataa(gnd),
	.datab(\i4~input_o ),
	.datac(\inst1|26~1_combout ),
	.datad(\inst5~clkctrl_outclk ),
	.cin(gnd),
	.combout(\inst1|26~1_combout ),
	.cout());
// synopsys translate_off
defparam \inst1|26~1 .lut_mask = 16'hCCF0;
defparam \inst1|26~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X3_Y5_N0
cycloneive_lcell_comb \inst1|26~3 (
// Equation(s):
// \inst1|26~3_combout  = \inst1|26~1_combout  $ (!\inst1|26~2_combout )

	.dataa(gnd),
	.datab(gnd),
	.datac(\inst1|26~1_combout ),
	.datad(\inst1|26~2_combout ),
	.cin(gnd),
	.combout(\inst1|26~3_combout ),
	.cout());
// synopsys translate_off
defparam \inst1|26~3 .lut_mask = 16'hF00F;
defparam \inst1|26~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X3_Y5_N1
dffeas \inst1|26~_emulated (
	.clk(\inst|27~combout ),
	.d(\inst1|26~3_combout ),
	.asdata(vcc),
	.clrn(!\inst5~clkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\inst1|26~_emulated_q ),
	.prn(vcc));
// synopsys translate_off
defparam \inst1|26~_emulated .is_wysiwyg = "true";
defparam \inst1|26~_emulated .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X3_Y5_N24
cycloneive_lcell_comb \inst1|26~2 (
// Equation(s):
// \inst1|26~2_combout  = (\inst5~combout  & (((\i4~input_o )))) # (!\inst5~combout  & (\inst1|26~1_combout  $ (((\inst1|26~_emulated_q )))))

	.dataa(\inst1|26~1_combout ),
	.datab(\inst5~combout ),
	.datac(\i4~input_o ),
	.datad(\inst1|26~_emulated_q ),
	.cin(gnd),
	.combout(\inst1|26~2_combout ),
	.cout());
// synopsys translate_off
defparam \inst1|26~2 .lut_mask = 16'hD1E2;
defparam \inst1|26~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y11_N20
cycloneive_lcell_comb \inst1|21 (
// Equation(s):
// \inst1|21~combout  = LCELL((((\inst|27~combout ) # (!\inst1|26~2_combout )) # (!\inst1|24~2_combout )) # (!\inst1|25~2_combout ))

	.dataa(\inst1|25~2_combout ),
	.datab(\inst1|24~2_combout ),
	.datac(\inst|27~combout ),
	.datad(\inst1|26~2_combout ),
	.cin(gnd),
	.combout(\inst1|21~combout ),
	.cout());
// synopsys translate_off
defparam \inst1|21 .lut_mask = 16'hF7FF;
defparam \inst1|21 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y11_N16
cycloneive_lcell_comb \inst1|27 (
// Equation(s):
// \inst1|27~combout  = LCELL((\inst1|21~combout ) # (!\inst1|23~2_combout ))

	.dataa(\inst1|23~2_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(\inst1|21~combout ),
	.cin(gnd),
	.combout(\inst1|27~combout ),
	.cout());
// synopsys translate_off
defparam \inst1|27 .lut_mask = 16'hFF55;
defparam \inst1|27 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X0_Y9_N8
cycloneive_io_ibuf \preset~input (
	.i(preset),
	.ibar(gnd),
	.o(\preset~input_o ));
// synopsys translate_off
defparam \preset~input .bus_hold = "false";
defparam \preset~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X1_Y11_N30
cycloneive_lcell_comb inst5(
// Equation(s):
// \inst5~combout  = (!\preset~input_o ) # (!\inst1|27~combout )

	.dataa(gnd),
	.datab(\inst1|27~combout ),
	.datac(gnd),
	.datad(\preset~input_o ),
	.cin(gnd),
	.combout(\inst5~combout ),
	.cout());
// synopsys translate_off
defparam inst5.lut_mask = 16'h33FF;
defparam inst5.sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X5_Y0_N22
cycloneive_io_ibuf \i3~input (
	.i(i3),
	.ibar(gnd),
	.o(\i3~input_o ));
// synopsys translate_off
defparam \i3~input .bus_hold = "false";
defparam \i3~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X1_Y5_N14
cycloneive_lcell_comb \inst|23~1 (
// Equation(s):
// \inst|23~1_combout  = (GLOBAL(\inst5~clkctrl_outclk ) & (\i3~input_o )) # (!GLOBAL(\inst5~clkctrl_outclk ) & ((\inst|23~1_combout )))

	.dataa(gnd),
	.datab(\i3~input_o ),
	.datac(\inst|23~1_combout ),
	.datad(\inst5~clkctrl_outclk ),
	.cin(gnd),
	.combout(\inst|23~1_combout ),
	.cout());
// synopsys translate_off
defparam \inst|23~1 .lut_mask = 16'hCCF0;
defparam \inst|23~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y5_N28
cycloneive_lcell_comb \inst|23~3 (
// Equation(s):
// \inst|23~3_combout  = \inst|23~1_combout  $ (!\inst|23~2_combout )

	.dataa(gnd),
	.datab(gnd),
	.datac(\inst|23~1_combout ),
	.datad(\inst|23~2_combout ),
	.cin(gnd),
	.combout(\inst|23~3_combout ),
	.cout());
// synopsys translate_off
defparam \inst|23~3 .lut_mask = 16'hF00F;
defparam \inst|23~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X1_Y5_N29
dffeas \inst|23~_emulated (
	.clk(\inst|21~combout ),
	.d(\inst|23~3_combout ),
	.asdata(vcc),
	.clrn(!\inst5~clkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\inst|23~_emulated_q ),
	.prn(vcc));
// synopsys translate_off
defparam \inst|23~_emulated .is_wysiwyg = "true";
defparam \inst|23~_emulated .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X1_Y5_N12
cycloneive_lcell_comb \inst|23~2 (
// Equation(s):
// \inst|23~2_combout  = (\inst5~combout  & (\i3~input_o )) # (!\inst5~combout  & ((\inst|23~1_combout  $ (\inst|23~_emulated_q ))))

	.dataa(\inst5~combout ),
	.datab(\i3~input_o ),
	.datac(\inst|23~1_combout ),
	.datad(\inst|23~_emulated_q ),
	.cin(gnd),
	.combout(\inst|23~2_combout ),
	.cout());
// synopsys translate_off
defparam \inst|23~2 .lut_mask = 16'h8DD8;
defparam \inst|23~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X1_Y0_N15
cycloneive_io_ibuf \i1~input (
	.i(i1),
	.ibar(gnd),
	.o(\i1~input_o ));
// synopsys translate_off
defparam \i1~input .bus_hold = "false";
defparam \i1~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X1_Y5_N24
cycloneive_lcell_comb \inst|25~1 (
// Equation(s):
// \inst|25~1_combout  = (\inst5~combout  & ((\i1~input_o ))) # (!\inst5~combout  & (\inst|25~1_combout ))

	.dataa(gnd),
	.datab(\inst|25~1_combout ),
	.datac(\i1~input_o ),
	.datad(\inst5~combout ),
	.cin(gnd),
	.combout(\inst|25~1_combout ),
	.cout());
// synopsys translate_off
defparam \inst|25~1 .lut_mask = 16'hF0CC;
defparam \inst|25~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y5_N20
cycloneive_lcell_comb \inst|25~3 (
// Equation(s):
// \inst|25~3_combout  = \inst|25~1_combout  $ (!\inst|25~2_combout )

	.dataa(\inst|25~1_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(\inst|25~2_combout ),
	.cin(gnd),
	.combout(\inst|25~3_combout ),
	.cout());
// synopsys translate_off
defparam \inst|25~3 .lut_mask = 16'hAA55;
defparam \inst|25~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X1_Y5_N21
dffeas \inst|25~_emulated (
	.clk(\inst|5~combout ),
	.d(\inst|25~3_combout ),
	.asdata(vcc),
	.clrn(!\inst5~clkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\inst|25~_emulated_q ),
	.prn(vcc));
// synopsys translate_off
defparam \inst|25~_emulated .is_wysiwyg = "true";
defparam \inst|25~_emulated .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X1_Y5_N6
cycloneive_lcell_comb \inst|25~2 (
// Equation(s):
// \inst|25~2_combout  = (\inst5~combout  & (\i1~input_o )) # (!\inst5~combout  & ((\inst|25~1_combout  $ (\inst|25~_emulated_q ))))

	.dataa(\inst5~combout ),
	.datab(\i1~input_o ),
	.datac(\inst|25~1_combout ),
	.datad(\inst|25~_emulated_q ),
	.cin(gnd),
	.combout(\inst|25~2_combout ),
	.cout());
// synopsys translate_off
defparam \inst|25~2 .lut_mask = 16'h8DD8;
defparam \inst|25~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X0_Y23_N15
cycloneive_io_ibuf \i7~input (
	.i(i7),
	.ibar(gnd),
	.o(\i7~input_o ));
// synopsys translate_off
defparam \i7~input .bus_hold = "false";
defparam \i7~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X1_Y11_N28
cycloneive_lcell_comb \inst1|23~1 (
// Equation(s):
// \inst1|23~1_combout  = (GLOBAL(\inst5~clkctrl_outclk ) & (\i7~input_o )) # (!GLOBAL(\inst5~clkctrl_outclk ) & ((\inst1|23~1_combout )))

	.dataa(gnd),
	.datab(\i7~input_o ),
	.datac(\inst5~clkctrl_outclk ),
	.datad(\inst1|23~1_combout ),
	.cin(gnd),
	.combout(\inst1|23~1_combout ),
	.cout());
// synopsys translate_off
defparam \inst1|23~1 .lut_mask = 16'hCFC0;
defparam \inst1|23~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y11_N24
cycloneive_lcell_comb \inst1|23~3 (
// Equation(s):
// \inst1|23~3_combout  = \inst1|23~2_combout  $ (!\inst1|23~1_combout )

	.dataa(\inst1|23~2_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(\inst1|23~1_combout ),
	.cin(gnd),
	.combout(\inst1|23~3_combout ),
	.cout());
// synopsys translate_off
defparam \inst1|23~3 .lut_mask = 16'hAA55;
defparam \inst1|23~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X1_Y11_N25
dffeas \inst1|23~_emulated (
	.clk(\inst1|21~combout ),
	.d(\inst1|23~3_combout ),
	.asdata(vcc),
	.clrn(!\inst5~clkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\inst1|23~_emulated_q ),
	.prn(vcc));
// synopsys translate_off
defparam \inst1|23~_emulated .is_wysiwyg = "true";
defparam \inst1|23~_emulated .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X1_Y11_N22
cycloneive_lcell_comb \inst1|23~2 (
// Equation(s):
// \inst1|23~2_combout  = (\inst5~combout  & (\i7~input_o )) # (!\inst5~combout  & ((\inst1|23~1_combout  $ (\inst1|23~_emulated_q ))))

	.dataa(\i7~input_o ),
	.datab(\inst1|23~1_combout ),
	.datac(\inst5~combout ),
	.datad(\inst1|23~_emulated_q ),
	.cin(gnd),
	.combout(\inst1|23~2_combout ),
	.cout());
// synopsys translate_off
defparam \inst1|23~2 .lut_mask = 16'hA3AC;
defparam \inst1|23~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X13_Y0_N1
cycloneive_io_ibuf \i5~input (
	.i(i5),
	.ibar(gnd),
	.o(\i5~input_o ));
// synopsys translate_off
defparam \i5~input .bus_hold = "false";
defparam \i5~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X2_Y5_N20
cycloneive_lcell_comb \inst1|25~1 (
// Equation(s):
// \inst1|25~1_combout  = (GLOBAL(\inst5~clkctrl_outclk ) & (\i5~input_o )) # (!GLOBAL(\inst5~clkctrl_outclk ) & ((\inst1|25~1_combout )))

	.dataa(\i5~input_o ),
	.datab(gnd),
	.datac(\inst5~clkctrl_outclk ),
	.datad(\inst1|25~1_combout ),
	.cin(gnd),
	.combout(\inst1|25~1_combout ),
	.cout());
// synopsys translate_off
defparam \inst1|25~1 .lut_mask = 16'hAFA0;
defparam \inst1|25~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X2_Y5_N28
cycloneive_lcell_comb \inst1|25~3 (
// Equation(s):
// \inst1|25~3_combout  = \inst1|25~1_combout  $ (!\inst1|25~2_combout )

	.dataa(\inst1|25~1_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(\inst1|25~2_combout ),
	.cin(gnd),
	.combout(\inst1|25~3_combout ),
	.cout());
// synopsys translate_off
defparam \inst1|25~3 .lut_mask = 16'hAA55;
defparam \inst1|25~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X2_Y5_N29
dffeas \inst1|25~_emulated (
	.clk(\inst1|5~combout ),
	.d(\inst1|25~3_combout ),
	.asdata(vcc),
	.clrn(!\inst5~clkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\inst1|25~_emulated_q ),
	.prn(vcc));
// synopsys translate_off
defparam \inst1|25~_emulated .is_wysiwyg = "true";
defparam \inst1|25~_emulated .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X2_Y5_N6
cycloneive_lcell_comb \inst1|25~2 (
// Equation(s):
// \inst1|25~2_combout  = (\inst5~combout  & (\i5~input_o )) # (!\inst5~combout  & ((\inst1|25~1_combout  $ (\inst1|25~_emulated_q ))))

	.dataa(\i5~input_o ),
	.datab(\inst1|25~1_combout ),
	.datac(\inst5~combout ),
	.datad(\inst1|25~_emulated_q ),
	.cin(gnd),
	.combout(\inst1|25~2_combout ),
	.cout());
// synopsys translate_off
defparam \inst1|25~2 .lut_mask = 16'hA3AC;
defparam \inst1|25~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y11_N8
cycloneive_lcell_comb \inst3|8~0 (
// Equation(s):
// \inst3|8~0_combout  = !\inst3|8~q 

	.dataa(gnd),
	.datab(gnd),
	.datac(\inst3|8~q ),
	.datad(gnd),
	.cin(gnd),
	.combout(\inst3|8~0_combout ),
	.cout());
// synopsys translate_off
defparam \inst3|8~0 .lut_mask = 16'h0F0F;
defparam \inst3|8~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X1_Y11_N9
dffeas \inst3|8 (
	.clk(\inst1|27~combout ),
	.d(\inst3|8~0_combout ),
	.asdata(vcc),
	.clrn(\preset~input_o ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\inst3|8~q ),
	.prn(vcc));
// synopsys translate_off
defparam \inst3|8 .is_wysiwyg = "true";
defparam \inst3|8 .power_up = "low";
// synopsys translate_on

assign o3 = \o3~output_o ;

assign o2 = \o2~output_o ;

assign o1 = \o1~output_o ;

assign o0 = \o0~output_o ;

assign o7 = \o7~output_o ;

assign o6 = \o6~output_o ;

assign o5 = \o5~output_o ;

assign o4 = \o4~output_o ;

assign co = \co~output_o ;

endmodule
