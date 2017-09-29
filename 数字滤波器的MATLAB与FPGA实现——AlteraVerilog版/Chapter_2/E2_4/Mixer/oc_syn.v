// Copyright (C) 1991-2012 Altera Corporation
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
// PROGRAM "Quartus II 32-bit"
// VERSION "Version 12.1 Build 177 11/07/2012 SJ Full Version"

// DATE "05/17/2014 13:55:43"

// 
// Device: Altera EP4CE6E22C6 Package TQFP144
// 

// 
// This greybox netlist file is for third party Synthesis Tools
// for timing and resource estimation only.
// 


module oc (
	phi_inc_i,
	clk,
	reset_n,
	clken,
	fsin_o,
	out_valid)/* synthesis synthesis_greybox=1 */;
input 	[15:0] phi_inc_i;
input 	clk;
input 	reset_n;
input 	clken;
output 	[9:0] fsin_o;
output 	out_valid;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \oc_st_inst|ux710isdr|data_ready~q ;
wire \oc_st_inst|ux122|data_out[0]~q ;
wire \oc_st_inst|ux122|data_out[1]~q ;
wire \oc_st_inst|ux122|data_out[2]~q ;
wire \oc_st_inst|ux122|data_out[3]~q ;
wire \oc_st_inst|ux122|data_out[4]~q ;
wire \oc_st_inst|ux122|data_out[5]~q ;
wire \oc_st_inst|ux122|data_out[6]~q ;
wire \oc_st_inst|ux122|data_out[7]~q ;
wire \oc_st_inst|ux122|data_out[8]~q ;
wire \oc_st_inst|ux122|data_out[9]~q ;
wire \reset_n~input_o ;
wire \clk~input_o ;
wire \clken~input_o ;
wire \phi_inc_i[0]~input_o ;
wire \phi_inc_i[13]~input_o ;
wire \phi_inc_i[12]~input_o ;
wire \phi_inc_i[11]~input_o ;
wire \phi_inc_i[10]~input_o ;
wire \phi_inc_i[9]~input_o ;
wire \phi_inc_i[8]~input_o ;
wire \phi_inc_i[7]~input_o ;
wire \phi_inc_i[6]~input_o ;
wire \phi_inc_i[5]~input_o ;
wire \phi_inc_i[4]~input_o ;
wire \phi_inc_i[3]~input_o ;
wire \phi_inc_i[2]~input_o ;
wire \phi_inc_i[1]~input_o ;
wire \phi_inc_i[15]~input_o ;
wire \phi_inc_i[14]~input_o ;


oc_oc_st oc_st_inst(
	.data_ready(\oc_st_inst|ux710isdr|data_ready~q ),
	.data_out_0(\oc_st_inst|ux122|data_out[0]~q ),
	.data_out_1(\oc_st_inst|ux122|data_out[1]~q ),
	.data_out_2(\oc_st_inst|ux122|data_out[2]~q ),
	.data_out_3(\oc_st_inst|ux122|data_out[3]~q ),
	.data_out_4(\oc_st_inst|ux122|data_out[4]~q ),
	.data_out_5(\oc_st_inst|ux122|data_out[5]~q ),
	.data_out_6(\oc_st_inst|ux122|data_out[6]~q ),
	.data_out_7(\oc_st_inst|ux122|data_out[7]~q ),
	.data_out_8(\oc_st_inst|ux122|data_out[8]~q ),
	.data_out_9(\oc_st_inst|ux122|data_out[9]~q ),
	.reset_n(\reset_n~input_o ),
	.clk(\clk~input_o ),
	.clken(\clken~input_o ),
	.phi_inc_i_0(\phi_inc_i[0]~input_o ),
	.phi_inc_i_13(\phi_inc_i[13]~input_o ),
	.phi_inc_i_12(\phi_inc_i[12]~input_o ),
	.phi_inc_i_11(\phi_inc_i[11]~input_o ),
	.phi_inc_i_10(\phi_inc_i[10]~input_o ),
	.phi_inc_i_9(\phi_inc_i[9]~input_o ),
	.phi_inc_i_8(\phi_inc_i[8]~input_o ),
	.phi_inc_i_7(\phi_inc_i[7]~input_o ),
	.phi_inc_i_6(\phi_inc_i[6]~input_o ),
	.phi_inc_i_5(\phi_inc_i[5]~input_o ),
	.phi_inc_i_4(\phi_inc_i[4]~input_o ),
	.phi_inc_i_3(\phi_inc_i[3]~input_o ),
	.phi_inc_i_2(\phi_inc_i[2]~input_o ),
	.phi_inc_i_1(\phi_inc_i[1]~input_o ),
	.phi_inc_i_15(\phi_inc_i[15]~input_o ),
	.phi_inc_i_14(\phi_inc_i[14]~input_o ));

assign \reset_n~input_o  = reset_n;

assign \clk~input_o  = clk;

assign \clken~input_o  = clken;

assign \phi_inc_i[0]~input_o  = phi_inc_i[0];

assign \phi_inc_i[13]~input_o  = phi_inc_i[13];

assign \phi_inc_i[12]~input_o  = phi_inc_i[12];

assign \phi_inc_i[11]~input_o  = phi_inc_i[11];

assign \phi_inc_i[10]~input_o  = phi_inc_i[10];

assign \phi_inc_i[9]~input_o  = phi_inc_i[9];

assign \phi_inc_i[8]~input_o  = phi_inc_i[8];

assign \phi_inc_i[7]~input_o  = phi_inc_i[7];

assign \phi_inc_i[6]~input_o  = phi_inc_i[6];

assign \phi_inc_i[5]~input_o  = phi_inc_i[5];

assign \phi_inc_i[4]~input_o  = phi_inc_i[4];

assign \phi_inc_i[3]~input_o  = phi_inc_i[3];

assign \phi_inc_i[2]~input_o  = phi_inc_i[2];

assign \phi_inc_i[1]~input_o  = phi_inc_i[1];

assign \phi_inc_i[15]~input_o  = phi_inc_i[15];

assign \phi_inc_i[14]~input_o  = phi_inc_i[14];

assign fsin_o[0] = \oc_st_inst|ux122|data_out[0]~q ;

assign fsin_o[1] = \oc_st_inst|ux122|data_out[1]~q ;

assign fsin_o[2] = \oc_st_inst|ux122|data_out[2]~q ;

assign fsin_o[3] = \oc_st_inst|ux122|data_out[3]~q ;

assign fsin_o[4] = \oc_st_inst|ux122|data_out[4]~q ;

assign fsin_o[5] = \oc_st_inst|ux122|data_out[5]~q ;

assign fsin_o[6] = \oc_st_inst|ux122|data_out[6]~q ;

assign fsin_o[7] = \oc_st_inst|ux122|data_out[7]~q ;

assign fsin_o[8] = \oc_st_inst|ux122|data_out[8]~q ;

assign fsin_o[9] = \oc_st_inst|ux122|data_out[9]~q ;

assign out_valid = \oc_st_inst|ux710isdr|data_ready~q ;

endmodule

module oc_oc_st (
	data_ready,
	data_out_0,
	data_out_1,
	data_out_2,
	data_out_3,
	data_out_4,
	data_out_5,
	data_out_6,
	data_out_7,
	data_out_8,
	data_out_9,
	reset_n,
	clk,
	clken,
	phi_inc_i_0,
	phi_inc_i_13,
	phi_inc_i_12,
	phi_inc_i_11,
	phi_inc_i_10,
	phi_inc_i_9,
	phi_inc_i_8,
	phi_inc_i_7,
	phi_inc_i_6,
	phi_inc_i_5,
	phi_inc_i_4,
	phi_inc_i_3,
	phi_inc_i_2,
	phi_inc_i_1,
	phi_inc_i_15,
	phi_inc_i_14)/* synthesis synthesis_greybox=1 */;
output 	data_ready;
output 	data_out_0;
output 	data_out_1;
output 	data_out_2;
output 	data_out_3;
output 	data_out_4;
output 	data_out_5;
output 	data_out_6;
output 	data_out_7;
output 	data_out_8;
output 	data_out_9;
input 	reset_n;
input 	clk;
input 	clken;
input 	phi_inc_i_0;
input 	phi_inc_i_13;
input 	phi_inc_i_12;
input 	phi_inc_i_11;
input 	phi_inc_i_10;
input 	phi_inc_i_9;
input 	phi_inc_i_8;
input 	phi_inc_i_7;
input 	phi_inc_i_6;
input 	phi_inc_i_5;
input 	phi_inc_i_4;
input 	phi_inc_i_3;
input 	phi_inc_i_2;
input 	phi_inc_i_1;
input 	phi_inc_i_15;
input 	phi_inc_i_14;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \rot|sin_o[0]~q ;
wire \rot|sin_o[1]~q ;
wire \rot|sin_o[2]~q ;
wire \rot|sin_o[3]~q ;
wire \rot|sin_o[4]~q ;
wire \rot|sin_o[5]~q ;
wire \rot|sin_o[6]~q ;
wire \rot|sin_o[7]~q ;
wire \rot|sin_o[8]~q ;
wire \rot|sin_o[9]~q ;
wire \sid2c|sin_rom_2c[0]~q ;
wire \sid2c|cos_rom_2c[0]~q ;
wire \sid2c|sin_rom_2c[1]~q ;
wire \sid2c|cos_rom_2c[1]~q ;
wire \sid2c|sin_rom_2c[2]~q ;
wire \sid2c|cos_rom_2c[2]~q ;
wire \sid2c|sin_rom_2c[3]~q ;
wire \sid2c|cos_rom_2c[3]~q ;
wire \sid2c|sin_rom_2c[4]~q ;
wire \sid2c|cos_rom_2c[4]~q ;
wire \sid2c|sin_rom_2c[5]~q ;
wire \sid2c|cos_rom_2c[5]~q ;
wire \sid2c|sin_rom_2c[6]~q ;
wire \sid2c|cos_rom_2c[6]~q ;
wire \sid2c|sin_rom_2c[7]~q ;
wire \sid2c|cos_rom_2c[7]~q ;
wire \sid2c|sin_rom_2c[8]~q ;
wire \sid2c|cos_rom_2c[8]~q ;
wire \sid2c|cos_rom_2c[9]~q ;
wire \sid2c|sin_rom_2c[9]~q ;
wire \ux0120|altsyncram_component0|auto_generated|q_a[0] ;
wire \ux0121|altsyncram_component0|auto_generated|q_a[0] ;
wire \ux0121|altsyncram_component0|auto_generated|q_a[1] ;
wire \ux0120|altsyncram_component0|auto_generated|q_a[1] ;
wire \ux0120|altsyncram_component0|auto_generated|q_a[2] ;
wire \ux0121|altsyncram_component0|auto_generated|q_a[2] ;
wire \ux0121|altsyncram_component0|auto_generated|q_a[3] ;
wire \ux0120|altsyncram_component0|auto_generated|q_a[3] ;
wire \ux0120|altsyncram_component0|auto_generated|q_a[4] ;
wire \ux0121|altsyncram_component0|auto_generated|q_a[4] ;
wire \ux0121|altsyncram_component0|auto_generated|q_a[5] ;
wire \ux0120|altsyncram_component0|auto_generated|q_a[5] ;
wire \ux0120|altsyncram_component0|auto_generated|q_a[6] ;
wire \ux0121|altsyncram_component0|auto_generated|q_a[6] ;
wire \ux0121|altsyncram_component0|auto_generated|q_a[7] ;
wire \ux0120|altsyncram_component0|auto_generated|q_a[7] ;
wire \ux0120|altsyncram_component0|auto_generated|q_a[8] ;
wire \ux0121|altsyncram_component0|auto_generated|q_a[8] ;
wire \ux007|rom_add[0]~q ;
wire \ux007|rom_add[1]~q ;
wire \ux007|rom_add[2]~q ;
wire \ux007|rom_add[3]~q ;
wire \ux007|rom_add[4]~q ;
wire \ux007|rom_add[5]~q ;
wire \ux007|rom_add[6]~q ;
wire \ux007|rom_add[7]~q ;
wire \ux007|rom_add[8]~q ;
wire \ux007|rom_add[9]~q ;
wire \ux007|rom_add[10]~q ;
wire \ux007|rom_add[11]~q ;
wire \ux007|rom_add[12]~q ;
wire \ux001|dxxrv[4]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[0]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[13]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[12]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[11]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[10]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[9]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[8]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[7]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[6]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[5]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[4]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[3]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[2]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[1]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[15]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[14]~q ;
wire \rot|sin_o[9]~0_combout ;
wire \tdl|seg_rot[2]~q ;
wire \sid2c|cos_rom_d[0]~q ;
wire \tdl|seg_rot[1]~q ;
wire \tdl|seg_rot[0]~q ;
wire \sid2c|sin_rom_d[0]~q ;
wire \sid2c|cos_rom_d[1]~q ;
wire \sid2c|sin_rom_d[1]~q ;
wire \sid2c|cos_rom_d[2]~q ;
wire \sid2c|sin_rom_d[2]~q ;
wire \sid2c|cos_rom_d[3]~q ;
wire \sid2c|sin_rom_d[3]~q ;
wire \sid2c|cos_rom_d[4]~q ;
wire \sid2c|sin_rom_d[4]~q ;
wire \sid2c|cos_rom_d[5]~q ;
wire \sid2c|sin_rom_d[5]~q ;
wire \sid2c|cos_rom_d[6]~q ;
wire \sid2c|sin_rom_d[6]~q ;
wire \sid2c|cos_rom_d[7]~q ;
wire \sid2c|sin_rom_d[7]~q ;
wire \sid2c|cos_rom_d[8]~q ;
wire \sid2c|sin_rom_d[8]~q ;
wire \ux002|dxxpdo[5]~q ;
wire \ux002|dxxpdo[18]~q ;
wire \ux002|dxxpdo[6]~q ;
wire \ux002|dxxpdo[7]~q ;
wire \ux002|dxxpdo[8]~q ;
wire \ux002|dxxpdo[9]~q ;
wire \ux002|dxxpdo[10]~q ;
wire \ux002|dxxpdo[11]~q ;
wire \ux002|dxxpdo[12]~q ;
wire \ux002|dxxpdo[13]~q ;
wire \ux002|dxxpdo[14]~q ;
wire \ux002|dxxpdo[15]~q ;
wire \ux002|dxxpdo[16]~q ;
wire \ux002|dxxpdo[17]~q ;
wire \ux002|dxxpdo[20]~q ;
wire \ux002|dxxpdo[19]~q ;


oc_asj_nco_isdr ux710isdr(
	.data_ready1(data_ready),
	.reset_n(reset_n),
	.clk(clk),
	.clken(clken));

oc_asj_nco_mob_rw ux122(
	.sin_o_0(\rot|sin_o[0]~q ),
	.sin_o_1(\rot|sin_o[1]~q ),
	.sin_o_2(\rot|sin_o[2]~q ),
	.sin_o_3(\rot|sin_o[3]~q ),
	.sin_o_4(\rot|sin_o[4]~q ),
	.sin_o_5(\rot|sin_o[5]~q ),
	.sin_o_6(\rot|sin_o[6]~q ),
	.sin_o_7(\rot|sin_o[7]~q ),
	.sin_o_8(\rot|sin_o[8]~q ),
	.sin_o_9(\rot|sin_o[9]~q ),
	.data_out_0(data_out_0),
	.data_out_1(data_out_1),
	.data_out_2(data_out_2),
	.data_out_3(data_out_3),
	.data_out_4(data_out_4),
	.data_out_5(data_out_5),
	.data_out_6(data_out_6),
	.data_out_7(data_out_7),
	.data_out_8(data_out_8),
	.data_out_9(data_out_9),
	.sin_o_91(\rot|sin_o[9]~0_combout ),
	.reset_n(reset_n),
	.clk(clk));

oc_segment_sel_sgl rot(
	.sin_o_0(\rot|sin_o[0]~q ),
	.sin_o_1(\rot|sin_o[1]~q ),
	.sin_o_2(\rot|sin_o[2]~q ),
	.sin_o_3(\rot|sin_o[3]~q ),
	.sin_o_4(\rot|sin_o[4]~q ),
	.sin_o_5(\rot|sin_o[5]~q ),
	.sin_o_6(\rot|sin_o[6]~q ),
	.sin_o_7(\rot|sin_o[7]~q ),
	.sin_o_8(\rot|sin_o[8]~q ),
	.sin_o_9(\rot|sin_o[9]~q ),
	.sin_rom_2c_0(\sid2c|sin_rom_2c[0]~q ),
	.cos_rom_2c_0(\sid2c|cos_rom_2c[0]~q ),
	.sin_rom_2c_1(\sid2c|sin_rom_2c[1]~q ),
	.cos_rom_2c_1(\sid2c|cos_rom_2c[1]~q ),
	.sin_rom_2c_2(\sid2c|sin_rom_2c[2]~q ),
	.cos_rom_2c_2(\sid2c|cos_rom_2c[2]~q ),
	.sin_rom_2c_3(\sid2c|sin_rom_2c[3]~q ),
	.cos_rom_2c_3(\sid2c|cos_rom_2c[3]~q ),
	.sin_rom_2c_4(\sid2c|sin_rom_2c[4]~q ),
	.cos_rom_2c_4(\sid2c|cos_rom_2c[4]~q ),
	.sin_rom_2c_5(\sid2c|sin_rom_2c[5]~q ),
	.cos_rom_2c_5(\sid2c|cos_rom_2c[5]~q ),
	.sin_rom_2c_6(\sid2c|sin_rom_2c[6]~q ),
	.cos_rom_2c_6(\sid2c|cos_rom_2c[6]~q ),
	.sin_rom_2c_7(\sid2c|sin_rom_2c[7]~q ),
	.cos_rom_2c_7(\sid2c|cos_rom_2c[7]~q ),
	.sin_rom_2c_8(\sid2c|sin_rom_2c[8]~q ),
	.cos_rom_2c_8(\sid2c|cos_rom_2c[8]~q ),
	.cos_rom_2c_9(\sid2c|cos_rom_2c[9]~q ),
	.sin_rom_2c_9(\sid2c|sin_rom_2c[9]~q ),
	.sin_o_91(\rot|sin_o[9]~0_combout ),
	.seg_rot_2(\tdl|seg_rot[2]~q ),
	.cos_rom_d_0(\sid2c|cos_rom_d[0]~q ),
	.seg_rot_1(\tdl|seg_rot[1]~q ),
	.seg_rot_0(\tdl|seg_rot[0]~q ),
	.sin_rom_d_0(\sid2c|sin_rom_d[0]~q ),
	.cos_rom_d_1(\sid2c|cos_rom_d[1]~q ),
	.sin_rom_d_1(\sid2c|sin_rom_d[1]~q ),
	.cos_rom_d_2(\sid2c|cos_rom_d[2]~q ),
	.sin_rom_d_2(\sid2c|sin_rom_d[2]~q ),
	.cos_rom_d_3(\sid2c|cos_rom_d[3]~q ),
	.sin_rom_d_3(\sid2c|sin_rom_d[3]~q ),
	.cos_rom_d_4(\sid2c|cos_rom_d[4]~q ),
	.sin_rom_d_4(\sid2c|sin_rom_d[4]~q ),
	.cos_rom_d_5(\sid2c|cos_rom_d[5]~q ),
	.sin_rom_d_5(\sid2c|sin_rom_d[5]~q ),
	.cos_rom_d_6(\sid2c|cos_rom_d[6]~q ),
	.sin_rom_d_6(\sid2c|sin_rom_d[6]~q ),
	.cos_rom_d_7(\sid2c|cos_rom_d[7]~q ),
	.sin_rom_d_7(\sid2c|sin_rom_d[7]~q ),
	.cos_rom_d_8(\sid2c|cos_rom_d[8]~q ),
	.sin_rom_d_8(\sid2c|sin_rom_d[8]~q ),
	.reset_n(reset_n),
	.clk(clk),
	.clken(clken));

oc_asj_nco_as_m_cen_1 ux0121(
	.q_a_0(\ux0121|altsyncram_component0|auto_generated|q_a[0] ),
	.q_a_1(\ux0121|altsyncram_component0|auto_generated|q_a[1] ),
	.q_a_2(\ux0121|altsyncram_component0|auto_generated|q_a[2] ),
	.q_a_3(\ux0121|altsyncram_component0|auto_generated|q_a[3] ),
	.q_a_4(\ux0121|altsyncram_component0|auto_generated|q_a[4] ),
	.q_a_5(\ux0121|altsyncram_component0|auto_generated|q_a[5] ),
	.q_a_6(\ux0121|altsyncram_component0|auto_generated|q_a[6] ),
	.q_a_7(\ux0121|altsyncram_component0|auto_generated|q_a[7] ),
	.q_a_8(\ux0121|altsyncram_component0|auto_generated|q_a[8] ),
	.rom_add_0(\ux007|rom_add[0]~q ),
	.rom_add_1(\ux007|rom_add[1]~q ),
	.rom_add_2(\ux007|rom_add[2]~q ),
	.rom_add_3(\ux007|rom_add[3]~q ),
	.rom_add_4(\ux007|rom_add[4]~q ),
	.rom_add_5(\ux007|rom_add[5]~q ),
	.rom_add_6(\ux007|rom_add[6]~q ),
	.rom_add_7(\ux007|rom_add[7]~q ),
	.rom_add_8(\ux007|rom_add[8]~q ),
	.rom_add_9(\ux007|rom_add[9]~q ),
	.rom_add_10(\ux007|rom_add[10]~q ),
	.rom_add_11(\ux007|rom_add[11]~q ),
	.rom_add_12(\ux007|rom_add[12]~q ),
	.clk(clk),
	.clken(clken));

oc_asj_nco_as_m_cen ux0120(
	.q_a_0(\ux0120|altsyncram_component0|auto_generated|q_a[0] ),
	.q_a_1(\ux0120|altsyncram_component0|auto_generated|q_a[1] ),
	.q_a_2(\ux0120|altsyncram_component0|auto_generated|q_a[2] ),
	.q_a_3(\ux0120|altsyncram_component0|auto_generated|q_a[3] ),
	.q_a_4(\ux0120|altsyncram_component0|auto_generated|q_a[4] ),
	.q_a_5(\ux0120|altsyncram_component0|auto_generated|q_a[5] ),
	.q_a_6(\ux0120|altsyncram_component0|auto_generated|q_a[6] ),
	.q_a_7(\ux0120|altsyncram_component0|auto_generated|q_a[7] ),
	.q_a_8(\ux0120|altsyncram_component0|auto_generated|q_a[8] ),
	.rom_add_0(\ux007|rom_add[0]~q ),
	.rom_add_1(\ux007|rom_add[1]~q ),
	.rom_add_2(\ux007|rom_add[2]~q ),
	.rom_add_3(\ux007|rom_add[3]~q ),
	.rom_add_4(\ux007|rom_add[4]~q ),
	.rom_add_5(\ux007|rom_add[5]~q ),
	.rom_add_6(\ux007|rom_add[6]~q ),
	.rom_add_7(\ux007|rom_add[7]~q ),
	.rom_add_8(\ux007|rom_add[8]~q ),
	.rom_add_9(\ux007|rom_add[9]~q ),
	.rom_add_10(\ux007|rom_add[10]~q ),
	.rom_add_11(\ux007|rom_add[11]~q ),
	.rom_add_12(\ux007|rom_add[12]~q ),
	.clk(clk),
	.clken(clken));

oc_sid_2c_1p sid2c(
	.sin_rom_2c_0(\sid2c|sin_rom_2c[0]~q ),
	.cos_rom_2c_0(\sid2c|cos_rom_2c[0]~q ),
	.sin_rom_2c_1(\sid2c|sin_rom_2c[1]~q ),
	.cos_rom_2c_1(\sid2c|cos_rom_2c[1]~q ),
	.sin_rom_2c_2(\sid2c|sin_rom_2c[2]~q ),
	.cos_rom_2c_2(\sid2c|cos_rom_2c[2]~q ),
	.sin_rom_2c_3(\sid2c|sin_rom_2c[3]~q ),
	.cos_rom_2c_3(\sid2c|cos_rom_2c[3]~q ),
	.sin_rom_2c_4(\sid2c|sin_rom_2c[4]~q ),
	.cos_rom_2c_4(\sid2c|cos_rom_2c[4]~q ),
	.sin_rom_2c_5(\sid2c|sin_rom_2c[5]~q ),
	.cos_rom_2c_5(\sid2c|cos_rom_2c[5]~q ),
	.sin_rom_2c_6(\sid2c|sin_rom_2c[6]~q ),
	.cos_rom_2c_6(\sid2c|cos_rom_2c[6]~q ),
	.sin_rom_2c_7(\sid2c|sin_rom_2c[7]~q ),
	.cos_rom_2c_7(\sid2c|cos_rom_2c[7]~q ),
	.sin_rom_2c_8(\sid2c|sin_rom_2c[8]~q ),
	.cos_rom_2c_8(\sid2c|cos_rom_2c[8]~q ),
	.cos_rom_2c_9(\sid2c|cos_rom_2c[9]~q ),
	.sin_rom_2c_9(\sid2c|sin_rom_2c[9]~q ),
	.q_a_0(\ux0120|altsyncram_component0|auto_generated|q_a[0] ),
	.q_a_01(\ux0121|altsyncram_component0|auto_generated|q_a[0] ),
	.q_a_1(\ux0121|altsyncram_component0|auto_generated|q_a[1] ),
	.q_a_11(\ux0120|altsyncram_component0|auto_generated|q_a[1] ),
	.q_a_2(\ux0120|altsyncram_component0|auto_generated|q_a[2] ),
	.q_a_21(\ux0121|altsyncram_component0|auto_generated|q_a[2] ),
	.q_a_3(\ux0121|altsyncram_component0|auto_generated|q_a[3] ),
	.q_a_31(\ux0120|altsyncram_component0|auto_generated|q_a[3] ),
	.q_a_4(\ux0120|altsyncram_component0|auto_generated|q_a[4] ),
	.q_a_41(\ux0121|altsyncram_component0|auto_generated|q_a[4] ),
	.q_a_5(\ux0121|altsyncram_component0|auto_generated|q_a[5] ),
	.q_a_51(\ux0120|altsyncram_component0|auto_generated|q_a[5] ),
	.q_a_6(\ux0120|altsyncram_component0|auto_generated|q_a[6] ),
	.q_a_61(\ux0121|altsyncram_component0|auto_generated|q_a[6] ),
	.q_a_7(\ux0121|altsyncram_component0|auto_generated|q_a[7] ),
	.q_a_71(\ux0120|altsyncram_component0|auto_generated|q_a[7] ),
	.q_a_8(\ux0120|altsyncram_component0|auto_generated|q_a[8] ),
	.q_a_81(\ux0121|altsyncram_component0|auto_generated|q_a[8] ),
	.sin_o_9(\rot|sin_o[9]~0_combout ),
	.cos_rom_d_0(\sid2c|cos_rom_d[0]~q ),
	.sin_rom_d_0(\sid2c|sin_rom_d[0]~q ),
	.cos_rom_d_1(\sid2c|cos_rom_d[1]~q ),
	.sin_rom_d_1(\sid2c|sin_rom_d[1]~q ),
	.cos_rom_d_2(\sid2c|cos_rom_d[2]~q ),
	.sin_rom_d_2(\sid2c|sin_rom_d[2]~q ),
	.cos_rom_d_3(\sid2c|cos_rom_d[3]~q ),
	.sin_rom_d_3(\sid2c|sin_rom_d[3]~q ),
	.cos_rom_d_4(\sid2c|cos_rom_d[4]~q ),
	.sin_rom_d_4(\sid2c|sin_rom_d[4]~q ),
	.cos_rom_d_5(\sid2c|cos_rom_d[5]~q ),
	.sin_rom_d_5(\sid2c|sin_rom_d[5]~q ),
	.cos_rom_d_6(\sid2c|cos_rom_d[6]~q ),
	.sin_rom_d_6(\sid2c|sin_rom_d[6]~q ),
	.cos_rom_d_7(\sid2c|cos_rom_d[7]~q ),
	.sin_rom_d_7(\sid2c|sin_rom_d[7]~q ),
	.cos_rom_d_8(\sid2c|cos_rom_d[8]~q ),
	.sin_rom_d_8(\sid2c|sin_rom_d[8]~q ),
	.reset_n(reset_n),
	.clk(clk));

oc_asj_gar ux007(
	.rom_add_0(\ux007|rom_add[0]~q ),
	.rom_add_1(\ux007|rom_add[1]~q ),
	.rom_add_2(\ux007|rom_add[2]~q ),
	.rom_add_3(\ux007|rom_add[3]~q ),
	.rom_add_4(\ux007|rom_add[4]~q ),
	.rom_add_5(\ux007|rom_add[5]~q ),
	.rom_add_6(\ux007|rom_add[6]~q ),
	.rom_add_7(\ux007|rom_add[7]~q ),
	.rom_add_8(\ux007|rom_add[8]~q ),
	.rom_add_9(\ux007|rom_add[9]~q ),
	.rom_add_10(\ux007|rom_add[10]~q ),
	.rom_add_11(\ux007|rom_add[11]~q ),
	.rom_add_12(\ux007|rom_add[12]~q ),
	.sin_o_9(\rot|sin_o[9]~0_combout ),
	.dxxpdo_5(\ux002|dxxpdo[5]~q ),
	.dxxpdo_18(\ux002|dxxpdo[18]~q ),
	.dxxpdo_6(\ux002|dxxpdo[6]~q ),
	.dxxpdo_7(\ux002|dxxpdo[7]~q ),
	.dxxpdo_8(\ux002|dxxpdo[8]~q ),
	.dxxpdo_9(\ux002|dxxpdo[9]~q ),
	.dxxpdo_10(\ux002|dxxpdo[10]~q ),
	.dxxpdo_11(\ux002|dxxpdo[11]~q ),
	.dxxpdo_12(\ux002|dxxpdo[12]~q ),
	.dxxpdo_13(\ux002|dxxpdo[13]~q ),
	.dxxpdo_14(\ux002|dxxpdo[14]~q ),
	.dxxpdo_15(\ux002|dxxpdo[15]~q ),
	.dxxpdo_16(\ux002|dxxpdo[16]~q ),
	.dxxpdo_17(\ux002|dxxpdo[17]~q ),
	.reset_n(reset_n),
	.clk(clk));

oc_asj_dxx ux002(
	.dxxrv_4(\ux001|dxxrv[4]~q ),
	.pipeline_dffe_0(\ux000|acc|auto_generated|pipeline_dffe[0]~q ),
	.pipeline_dffe_13(\ux000|acc|auto_generated|pipeline_dffe[13]~q ),
	.pipeline_dffe_12(\ux000|acc|auto_generated|pipeline_dffe[12]~q ),
	.pipeline_dffe_11(\ux000|acc|auto_generated|pipeline_dffe[11]~q ),
	.pipeline_dffe_10(\ux000|acc|auto_generated|pipeline_dffe[10]~q ),
	.pipeline_dffe_9(\ux000|acc|auto_generated|pipeline_dffe[9]~q ),
	.pipeline_dffe_8(\ux000|acc|auto_generated|pipeline_dffe[8]~q ),
	.pipeline_dffe_7(\ux000|acc|auto_generated|pipeline_dffe[7]~q ),
	.pipeline_dffe_6(\ux000|acc|auto_generated|pipeline_dffe[6]~q ),
	.pipeline_dffe_5(\ux000|acc|auto_generated|pipeline_dffe[5]~q ),
	.pipeline_dffe_4(\ux000|acc|auto_generated|pipeline_dffe[4]~q ),
	.pipeline_dffe_3(\ux000|acc|auto_generated|pipeline_dffe[3]~q ),
	.pipeline_dffe_2(\ux000|acc|auto_generated|pipeline_dffe[2]~q ),
	.pipeline_dffe_1(\ux000|acc|auto_generated|pipeline_dffe[1]~q ),
	.pipeline_dffe_15(\ux000|acc|auto_generated|pipeline_dffe[15]~q ),
	.pipeline_dffe_14(\ux000|acc|auto_generated|pipeline_dffe[14]~q ),
	.sin_o_9(\rot|sin_o[9]~0_combout ),
	.dxxpdo_5(\ux002|dxxpdo[5]~q ),
	.dxxpdo_18(\ux002|dxxpdo[18]~q ),
	.dxxpdo_6(\ux002|dxxpdo[6]~q ),
	.dxxpdo_7(\ux002|dxxpdo[7]~q ),
	.dxxpdo_8(\ux002|dxxpdo[8]~q ),
	.dxxpdo_9(\ux002|dxxpdo[9]~q ),
	.dxxpdo_10(\ux002|dxxpdo[10]~q ),
	.dxxpdo_11(\ux002|dxxpdo[11]~q ),
	.dxxpdo_12(\ux002|dxxpdo[12]~q ),
	.dxxpdo_13(\ux002|dxxpdo[13]~q ),
	.dxxpdo_14(\ux002|dxxpdo[14]~q ),
	.dxxpdo_15(\ux002|dxxpdo[15]~q ),
	.dxxpdo_16(\ux002|dxxpdo[16]~q ),
	.dxxpdo_17(\ux002|dxxpdo[17]~q ),
	.dxxpdo_20(\ux002|dxxpdo[20]~q ),
	.dxxpdo_19(\ux002|dxxpdo[19]~q ),
	.reset_n(reset_n),
	.clk(clk),
	.clken(clken));

oc_asj_dxx_g ux001(
	.dxxrv_4(\ux001|dxxrv[4]~q ),
	.sin_o_9(\rot|sin_o[9]~0_combout ),
	.reset_n(reset_n),
	.clk(clk));

oc_asj_altqmcpipe ux000(
	.pipeline_dffe_0(\ux000|acc|auto_generated|pipeline_dffe[0]~q ),
	.pipeline_dffe_13(\ux000|acc|auto_generated|pipeline_dffe[13]~q ),
	.pipeline_dffe_12(\ux000|acc|auto_generated|pipeline_dffe[12]~q ),
	.pipeline_dffe_11(\ux000|acc|auto_generated|pipeline_dffe[11]~q ),
	.pipeline_dffe_10(\ux000|acc|auto_generated|pipeline_dffe[10]~q ),
	.pipeline_dffe_9(\ux000|acc|auto_generated|pipeline_dffe[9]~q ),
	.pipeline_dffe_8(\ux000|acc|auto_generated|pipeline_dffe[8]~q ),
	.pipeline_dffe_7(\ux000|acc|auto_generated|pipeline_dffe[7]~q ),
	.pipeline_dffe_6(\ux000|acc|auto_generated|pipeline_dffe[6]~q ),
	.pipeline_dffe_5(\ux000|acc|auto_generated|pipeline_dffe[5]~q ),
	.pipeline_dffe_4(\ux000|acc|auto_generated|pipeline_dffe[4]~q ),
	.pipeline_dffe_3(\ux000|acc|auto_generated|pipeline_dffe[3]~q ),
	.pipeline_dffe_2(\ux000|acc|auto_generated|pipeline_dffe[2]~q ),
	.pipeline_dffe_1(\ux000|acc|auto_generated|pipeline_dffe[1]~q ),
	.pipeline_dffe_15(\ux000|acc|auto_generated|pipeline_dffe[15]~q ),
	.pipeline_dffe_14(\ux000|acc|auto_generated|pipeline_dffe[14]~q ),
	.sin_o_9(\rot|sin_o[9]~0_combout ),
	.reset_n(reset_n),
	.clk(clk),
	.clken(clken),
	.phi_inc_i_0(phi_inc_i_0),
	.phi_inc_i_13(phi_inc_i_13),
	.phi_inc_i_12(phi_inc_i_12),
	.phi_inc_i_11(phi_inc_i_11),
	.phi_inc_i_10(phi_inc_i_10),
	.phi_inc_i_9(phi_inc_i_9),
	.phi_inc_i_8(phi_inc_i_8),
	.phi_inc_i_7(phi_inc_i_7),
	.phi_inc_i_6(phi_inc_i_6),
	.phi_inc_i_5(phi_inc_i_5),
	.phi_inc_i_4(phi_inc_i_4),
	.phi_inc_i_3(phi_inc_i_3),
	.phi_inc_i_2(phi_inc_i_2),
	.phi_inc_i_1(phi_inc_i_1),
	.phi_inc_i_15(phi_inc_i_15),
	.phi_inc_i_14(phi_inc_i_14));

oc_segment_arr_tdl tdl(
	.sin_o_9(\rot|sin_o[9]~0_combout ),
	.seg_rot_2(\tdl|seg_rot[2]~q ),
	.seg_rot_1(\tdl|seg_rot[1]~q ),
	.seg_rot_0(\tdl|seg_rot[0]~q ),
	.dxxpdo_18(\ux002|dxxpdo[18]~q ),
	.dxxpdo_20(\ux002|dxxpdo[20]~q ),
	.dxxpdo_19(\ux002|dxxpdo[19]~q ),
	.reset_n(reset_n),
	.clk(clk));

endmodule

module oc_asj_altqmcpipe (
	pipeline_dffe_0,
	pipeline_dffe_13,
	pipeline_dffe_12,
	pipeline_dffe_11,
	pipeline_dffe_10,
	pipeline_dffe_9,
	pipeline_dffe_8,
	pipeline_dffe_7,
	pipeline_dffe_6,
	pipeline_dffe_5,
	pipeline_dffe_4,
	pipeline_dffe_3,
	pipeline_dffe_2,
	pipeline_dffe_1,
	pipeline_dffe_15,
	pipeline_dffe_14,
	sin_o_9,
	reset_n,
	clk,
	clken,
	phi_inc_i_0,
	phi_inc_i_13,
	phi_inc_i_12,
	phi_inc_i_11,
	phi_inc_i_10,
	phi_inc_i_9,
	phi_inc_i_8,
	phi_inc_i_7,
	phi_inc_i_6,
	phi_inc_i_5,
	phi_inc_i_4,
	phi_inc_i_3,
	phi_inc_i_2,
	phi_inc_i_1,
	phi_inc_i_15,
	phi_inc_i_14)/* synthesis synthesis_greybox=1 */;
output 	pipeline_dffe_0;
output 	pipeline_dffe_13;
output 	pipeline_dffe_12;
output 	pipeline_dffe_11;
output 	pipeline_dffe_10;
output 	pipeline_dffe_9;
output 	pipeline_dffe_8;
output 	pipeline_dffe_7;
output 	pipeline_dffe_6;
output 	pipeline_dffe_5;
output 	pipeline_dffe_4;
output 	pipeline_dffe_3;
output 	pipeline_dffe_2;
output 	pipeline_dffe_1;
output 	pipeline_dffe_15;
output 	pipeline_dffe_14;
input 	sin_o_9;
input 	reset_n;
input 	clk;
input 	clken;
input 	phi_inc_i_0;
input 	phi_inc_i_13;
input 	phi_inc_i_12;
input 	phi_inc_i_11;
input 	phi_inc_i_10;
input 	phi_inc_i_9;
input 	phi_inc_i_8;
input 	phi_inc_i_7;
input 	phi_inc_i_6;
input 	phi_inc_i_5;
input 	phi_inc_i_4;
input 	phi_inc_i_3;
input 	phi_inc_i_2;
input 	phi_inc_i_1;
input 	phi_inc_i_15;
input 	phi_inc_i_14;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \phi_int_arr_reg[0]~q ;
wire \phi_int_arr_reg[13]~q ;
wire \phi_int_arr_reg[12]~q ;
wire \phi_int_arr_reg[11]~q ;
wire \phi_int_arr_reg[10]~q ;
wire \phi_int_arr_reg[9]~q ;
wire \phi_int_arr_reg[8]~q ;
wire \phi_int_arr_reg[7]~q ;
wire \phi_int_arr_reg[6]~q ;
wire \phi_int_arr_reg[5]~q ;
wire \phi_int_arr_reg[4]~q ;
wire \phi_int_arr_reg[3]~q ;
wire \phi_int_arr_reg[2]~q ;
wire \phi_int_arr_reg[1]~q ;
wire \phi_int_arr_reg~0_combout ;
wire \phi_int_arr_reg~1_combout ;
wire \phi_int_arr_reg~2_combout ;
wire \phi_int_arr_reg~3_combout ;
wire \phi_int_arr_reg~4_combout ;
wire \phi_int_arr_reg~5_combout ;
wire \phi_int_arr_reg~6_combout ;
wire \phi_int_arr_reg~7_combout ;
wire \phi_int_arr_reg~8_combout ;
wire \phi_int_arr_reg~9_combout ;
wire \phi_int_arr_reg~10_combout ;
wire \phi_int_arr_reg~11_combout ;
wire \phi_int_arr_reg~12_combout ;
wire \phi_int_arr_reg~13_combout ;
wire \phi_int_arr_reg[15]~q ;
wire \phi_int_arr_reg[14]~q ;
wire \phi_int_arr_reg~14_combout ;
wire \phi_int_arr_reg~15_combout ;


oc_lpm_add_sub_1 acc(
	.pipeline_dffe_0(pipeline_dffe_0),
	.pipeline_dffe_13(pipeline_dffe_13),
	.pipeline_dffe_12(pipeline_dffe_12),
	.pipeline_dffe_11(pipeline_dffe_11),
	.pipeline_dffe_10(pipeline_dffe_10),
	.pipeline_dffe_9(pipeline_dffe_9),
	.pipeline_dffe_8(pipeline_dffe_8),
	.pipeline_dffe_7(pipeline_dffe_7),
	.pipeline_dffe_6(pipeline_dffe_6),
	.pipeline_dffe_5(pipeline_dffe_5),
	.pipeline_dffe_4(pipeline_dffe_4),
	.pipeline_dffe_3(pipeline_dffe_3),
	.pipeline_dffe_2(pipeline_dffe_2),
	.pipeline_dffe_1(pipeline_dffe_1),
	.pipeline_dffe_15(pipeline_dffe_15),
	.pipeline_dffe_14(pipeline_dffe_14),
	.phi_int_arr_reg_0(\phi_int_arr_reg[0]~q ),
	.phi_int_arr_reg_13(\phi_int_arr_reg[13]~q ),
	.phi_int_arr_reg_12(\phi_int_arr_reg[12]~q ),
	.phi_int_arr_reg_11(\phi_int_arr_reg[11]~q ),
	.phi_int_arr_reg_10(\phi_int_arr_reg[10]~q ),
	.phi_int_arr_reg_9(\phi_int_arr_reg[9]~q ),
	.phi_int_arr_reg_8(\phi_int_arr_reg[8]~q ),
	.phi_int_arr_reg_7(\phi_int_arr_reg[7]~q ),
	.phi_int_arr_reg_6(\phi_int_arr_reg[6]~q ),
	.phi_int_arr_reg_5(\phi_int_arr_reg[5]~q ),
	.phi_int_arr_reg_4(\phi_int_arr_reg[4]~q ),
	.phi_int_arr_reg_3(\phi_int_arr_reg[3]~q ),
	.phi_int_arr_reg_2(\phi_int_arr_reg[2]~q ),
	.phi_int_arr_reg_1(\phi_int_arr_reg[1]~q ),
	.phi_int_arr_reg_15(\phi_int_arr_reg[15]~q ),
	.phi_int_arr_reg_14(\phi_int_arr_reg[14]~q ),
	.reset_n(reset_n),
	.clock(clk),
	.clken(clken));

dffeas \phi_int_arr_reg[0] (
	.clk(clk),
	.d(\phi_int_arr_reg~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\phi_int_arr_reg[0]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[0] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[0] .power_up = "low";

dffeas \phi_int_arr_reg[13] (
	.clk(clk),
	.d(\phi_int_arr_reg~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\phi_int_arr_reg[13]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[13] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[13] .power_up = "low";

dffeas \phi_int_arr_reg[12] (
	.clk(clk),
	.d(\phi_int_arr_reg~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\phi_int_arr_reg[12]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[12] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[12] .power_up = "low";

dffeas \phi_int_arr_reg[11] (
	.clk(clk),
	.d(\phi_int_arr_reg~3_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\phi_int_arr_reg[11]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[11] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[11] .power_up = "low";

dffeas \phi_int_arr_reg[10] (
	.clk(clk),
	.d(\phi_int_arr_reg~4_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\phi_int_arr_reg[10]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[10] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[10] .power_up = "low";

dffeas \phi_int_arr_reg[9] (
	.clk(clk),
	.d(\phi_int_arr_reg~5_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\phi_int_arr_reg[9]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[9] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[9] .power_up = "low";

dffeas \phi_int_arr_reg[8] (
	.clk(clk),
	.d(\phi_int_arr_reg~6_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\phi_int_arr_reg[8]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[8] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[8] .power_up = "low";

dffeas \phi_int_arr_reg[7] (
	.clk(clk),
	.d(\phi_int_arr_reg~7_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\phi_int_arr_reg[7]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[7] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[7] .power_up = "low";

dffeas \phi_int_arr_reg[6] (
	.clk(clk),
	.d(\phi_int_arr_reg~8_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\phi_int_arr_reg[6]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[6] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[6] .power_up = "low";

dffeas \phi_int_arr_reg[5] (
	.clk(clk),
	.d(\phi_int_arr_reg~9_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\phi_int_arr_reg[5]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[5] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[5] .power_up = "low";

dffeas \phi_int_arr_reg[4] (
	.clk(clk),
	.d(\phi_int_arr_reg~10_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\phi_int_arr_reg[4]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[4] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[4] .power_up = "low";

dffeas \phi_int_arr_reg[3] (
	.clk(clk),
	.d(\phi_int_arr_reg~11_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\phi_int_arr_reg[3]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[3] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[3] .power_up = "low";

dffeas \phi_int_arr_reg[2] (
	.clk(clk),
	.d(\phi_int_arr_reg~12_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\phi_int_arr_reg[2]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[2] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[2] .power_up = "low";

dffeas \phi_int_arr_reg[1] (
	.clk(clk),
	.d(\phi_int_arr_reg~13_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\phi_int_arr_reg[1]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[1] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[1] .power_up = "low";

cycloneive_lcell_comb \phi_int_arr_reg~0 (
	.dataa(reset_n),
	.datab(phi_inc_i_0),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~0_combout ),
	.cout());
defparam \phi_int_arr_reg~0 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~1 (
	.dataa(reset_n),
	.datab(phi_inc_i_13),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~1_combout ),
	.cout());
defparam \phi_int_arr_reg~1 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~2 (
	.dataa(reset_n),
	.datab(phi_inc_i_12),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~2_combout ),
	.cout());
defparam \phi_int_arr_reg~2 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~2 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~3 (
	.dataa(reset_n),
	.datab(phi_inc_i_11),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~3_combout ),
	.cout());
defparam \phi_int_arr_reg~3 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~3 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~4 (
	.dataa(reset_n),
	.datab(phi_inc_i_10),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~4_combout ),
	.cout());
defparam \phi_int_arr_reg~4 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~4 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~5 (
	.dataa(reset_n),
	.datab(phi_inc_i_9),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~5_combout ),
	.cout());
defparam \phi_int_arr_reg~5 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~5 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~6 (
	.dataa(reset_n),
	.datab(phi_inc_i_8),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~6_combout ),
	.cout());
defparam \phi_int_arr_reg~6 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~6 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~7 (
	.dataa(reset_n),
	.datab(phi_inc_i_7),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~7_combout ),
	.cout());
defparam \phi_int_arr_reg~7 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~7 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~8 (
	.dataa(reset_n),
	.datab(phi_inc_i_6),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~8_combout ),
	.cout());
defparam \phi_int_arr_reg~8 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~8 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~9 (
	.dataa(reset_n),
	.datab(phi_inc_i_5),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~9_combout ),
	.cout());
defparam \phi_int_arr_reg~9 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~9 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~10 (
	.dataa(reset_n),
	.datab(phi_inc_i_4),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~10_combout ),
	.cout());
defparam \phi_int_arr_reg~10 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~10 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~11 (
	.dataa(reset_n),
	.datab(phi_inc_i_3),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~11_combout ),
	.cout());
defparam \phi_int_arr_reg~11 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~11 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~12 (
	.dataa(reset_n),
	.datab(phi_inc_i_2),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~12_combout ),
	.cout());
defparam \phi_int_arr_reg~12 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~12 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~13 (
	.dataa(reset_n),
	.datab(phi_inc_i_1),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~13_combout ),
	.cout());
defparam \phi_int_arr_reg~13 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~13 .sum_lutc_input = "datac";

dffeas \phi_int_arr_reg[15] (
	.clk(clk),
	.d(\phi_int_arr_reg~14_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\phi_int_arr_reg[15]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[15] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[15] .power_up = "low";

dffeas \phi_int_arr_reg[14] (
	.clk(clk),
	.d(\phi_int_arr_reg~15_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\phi_int_arr_reg[14]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[14] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[14] .power_up = "low";

cycloneive_lcell_comb \phi_int_arr_reg~14 (
	.dataa(reset_n),
	.datab(phi_inc_i_15),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~14_combout ),
	.cout());
defparam \phi_int_arr_reg~14 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~14 .sum_lutc_input = "datac";

cycloneive_lcell_comb \phi_int_arr_reg~15 (
	.dataa(reset_n),
	.datab(phi_inc_i_14),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~15_combout ),
	.cout());
defparam \phi_int_arr_reg~15 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~15 .sum_lutc_input = "datac";

endmodule

module oc_lpm_add_sub_1 (
	pipeline_dffe_0,
	pipeline_dffe_13,
	pipeline_dffe_12,
	pipeline_dffe_11,
	pipeline_dffe_10,
	pipeline_dffe_9,
	pipeline_dffe_8,
	pipeline_dffe_7,
	pipeline_dffe_6,
	pipeline_dffe_5,
	pipeline_dffe_4,
	pipeline_dffe_3,
	pipeline_dffe_2,
	pipeline_dffe_1,
	pipeline_dffe_15,
	pipeline_dffe_14,
	phi_int_arr_reg_0,
	phi_int_arr_reg_13,
	phi_int_arr_reg_12,
	phi_int_arr_reg_11,
	phi_int_arr_reg_10,
	phi_int_arr_reg_9,
	phi_int_arr_reg_8,
	phi_int_arr_reg_7,
	phi_int_arr_reg_6,
	phi_int_arr_reg_5,
	phi_int_arr_reg_4,
	phi_int_arr_reg_3,
	phi_int_arr_reg_2,
	phi_int_arr_reg_1,
	phi_int_arr_reg_15,
	phi_int_arr_reg_14,
	reset_n,
	clock,
	clken)/* synthesis synthesis_greybox=1 */;
output 	pipeline_dffe_0;
output 	pipeline_dffe_13;
output 	pipeline_dffe_12;
output 	pipeline_dffe_11;
output 	pipeline_dffe_10;
output 	pipeline_dffe_9;
output 	pipeline_dffe_8;
output 	pipeline_dffe_7;
output 	pipeline_dffe_6;
output 	pipeline_dffe_5;
output 	pipeline_dffe_4;
output 	pipeline_dffe_3;
output 	pipeline_dffe_2;
output 	pipeline_dffe_1;
output 	pipeline_dffe_15;
output 	pipeline_dffe_14;
input 	phi_int_arr_reg_0;
input 	phi_int_arr_reg_13;
input 	phi_int_arr_reg_12;
input 	phi_int_arr_reg_11;
input 	phi_int_arr_reg_10;
input 	phi_int_arr_reg_9;
input 	phi_int_arr_reg_8;
input 	phi_int_arr_reg_7;
input 	phi_int_arr_reg_6;
input 	phi_int_arr_reg_5;
input 	phi_int_arr_reg_4;
input 	phi_int_arr_reg_3;
input 	phi_int_arr_reg_2;
input 	phi_int_arr_reg_1;
input 	phi_int_arr_reg_15;
input 	phi_int_arr_reg_14;
input 	reset_n;
input 	clock;
input 	clken;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



oc_add_sub_15i auto_generated(
	.pipeline_dffe_0(pipeline_dffe_0),
	.pipeline_dffe_13(pipeline_dffe_13),
	.pipeline_dffe_12(pipeline_dffe_12),
	.pipeline_dffe_11(pipeline_dffe_11),
	.pipeline_dffe_10(pipeline_dffe_10),
	.pipeline_dffe_9(pipeline_dffe_9),
	.pipeline_dffe_8(pipeline_dffe_8),
	.pipeline_dffe_7(pipeline_dffe_7),
	.pipeline_dffe_6(pipeline_dffe_6),
	.pipeline_dffe_5(pipeline_dffe_5),
	.pipeline_dffe_4(pipeline_dffe_4),
	.pipeline_dffe_3(pipeline_dffe_3),
	.pipeline_dffe_2(pipeline_dffe_2),
	.pipeline_dffe_1(pipeline_dffe_1),
	.pipeline_dffe_15(pipeline_dffe_15),
	.pipeline_dffe_14(pipeline_dffe_14),
	.phi_int_arr_reg_0(phi_int_arr_reg_0),
	.phi_int_arr_reg_13(phi_int_arr_reg_13),
	.phi_int_arr_reg_12(phi_int_arr_reg_12),
	.phi_int_arr_reg_11(phi_int_arr_reg_11),
	.phi_int_arr_reg_10(phi_int_arr_reg_10),
	.phi_int_arr_reg_9(phi_int_arr_reg_9),
	.phi_int_arr_reg_8(phi_int_arr_reg_8),
	.phi_int_arr_reg_7(phi_int_arr_reg_7),
	.phi_int_arr_reg_6(phi_int_arr_reg_6),
	.phi_int_arr_reg_5(phi_int_arr_reg_5),
	.phi_int_arr_reg_4(phi_int_arr_reg_4),
	.phi_int_arr_reg_3(phi_int_arr_reg_3),
	.phi_int_arr_reg_2(phi_int_arr_reg_2),
	.phi_int_arr_reg_1(phi_int_arr_reg_1),
	.phi_int_arr_reg_15(phi_int_arr_reg_15),
	.phi_int_arr_reg_14(phi_int_arr_reg_14),
	.reset_n(reset_n),
	.clock(clock),
	.clken(clken));

endmodule

module oc_add_sub_15i (
	pipeline_dffe_0,
	pipeline_dffe_13,
	pipeline_dffe_12,
	pipeline_dffe_11,
	pipeline_dffe_10,
	pipeline_dffe_9,
	pipeline_dffe_8,
	pipeline_dffe_7,
	pipeline_dffe_6,
	pipeline_dffe_5,
	pipeline_dffe_4,
	pipeline_dffe_3,
	pipeline_dffe_2,
	pipeline_dffe_1,
	pipeline_dffe_15,
	pipeline_dffe_14,
	phi_int_arr_reg_0,
	phi_int_arr_reg_13,
	phi_int_arr_reg_12,
	phi_int_arr_reg_11,
	phi_int_arr_reg_10,
	phi_int_arr_reg_9,
	phi_int_arr_reg_8,
	phi_int_arr_reg_7,
	phi_int_arr_reg_6,
	phi_int_arr_reg_5,
	phi_int_arr_reg_4,
	phi_int_arr_reg_3,
	phi_int_arr_reg_2,
	phi_int_arr_reg_1,
	phi_int_arr_reg_15,
	phi_int_arr_reg_14,
	reset_n,
	clock,
	clken)/* synthesis synthesis_greybox=1 */;
output 	pipeline_dffe_0;
output 	pipeline_dffe_13;
output 	pipeline_dffe_12;
output 	pipeline_dffe_11;
output 	pipeline_dffe_10;
output 	pipeline_dffe_9;
output 	pipeline_dffe_8;
output 	pipeline_dffe_7;
output 	pipeline_dffe_6;
output 	pipeline_dffe_5;
output 	pipeline_dffe_4;
output 	pipeline_dffe_3;
output 	pipeline_dffe_2;
output 	pipeline_dffe_1;
output 	pipeline_dffe_15;
output 	pipeline_dffe_14;
input 	phi_int_arr_reg_0;
input 	phi_int_arr_reg_13;
input 	phi_int_arr_reg_12;
input 	phi_int_arr_reg_11;
input 	phi_int_arr_reg_10;
input 	phi_int_arr_reg_9;
input 	phi_int_arr_reg_8;
input 	phi_int_arr_reg_7;
input 	phi_int_arr_reg_6;
input 	phi_int_arr_reg_5;
input 	phi_int_arr_reg_4;
input 	phi_int_arr_reg_3;
input 	phi_int_arr_reg_2;
input 	phi_int_arr_reg_1;
input 	phi_int_arr_reg_15;
input 	phi_int_arr_reg_14;
input 	reset_n;
input 	clock;
input 	clken;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \pipeline_dffe[0]~16_combout ;
wire \pipeline_dffe[0]~17 ;
wire \pipeline_dffe[1]~19 ;
wire \pipeline_dffe[2]~21 ;
wire \pipeline_dffe[3]~23 ;
wire \pipeline_dffe[4]~25 ;
wire \pipeline_dffe[5]~27 ;
wire \pipeline_dffe[6]~29 ;
wire \pipeline_dffe[7]~31 ;
wire \pipeline_dffe[8]~33 ;
wire \pipeline_dffe[9]~35 ;
wire \pipeline_dffe[10]~37 ;
wire \pipeline_dffe[11]~39 ;
wire \pipeline_dffe[12]~41 ;
wire \pipeline_dffe[13]~42_combout ;
wire \pipeline_dffe[12]~40_combout ;
wire \pipeline_dffe[11]~38_combout ;
wire \pipeline_dffe[10]~36_combout ;
wire \pipeline_dffe[9]~34_combout ;
wire \pipeline_dffe[8]~32_combout ;
wire \pipeline_dffe[7]~30_combout ;
wire \pipeline_dffe[6]~28_combout ;
wire \pipeline_dffe[5]~26_combout ;
wire \pipeline_dffe[4]~24_combout ;
wire \pipeline_dffe[3]~22_combout ;
wire \pipeline_dffe[2]~20_combout ;
wire \pipeline_dffe[1]~18_combout ;
wire \pipeline_dffe[13]~43 ;
wire \pipeline_dffe[14]~45 ;
wire \pipeline_dffe[15]~46_combout ;
wire \pipeline_dffe[14]~44_combout ;


dffeas \pipeline_dffe[0] (
	.clk(clock),
	.d(\pipeline_dffe[0]~16_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_0),
	.prn(vcc));
defparam \pipeline_dffe[0] .is_wysiwyg = "true";
defparam \pipeline_dffe[0] .power_up = "low";

dffeas \pipeline_dffe[13] (
	.clk(clock),
	.d(\pipeline_dffe[13]~42_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_13),
	.prn(vcc));
defparam \pipeline_dffe[13] .is_wysiwyg = "true";
defparam \pipeline_dffe[13] .power_up = "low";

dffeas \pipeline_dffe[12] (
	.clk(clock),
	.d(\pipeline_dffe[12]~40_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_12),
	.prn(vcc));
defparam \pipeline_dffe[12] .is_wysiwyg = "true";
defparam \pipeline_dffe[12] .power_up = "low";

dffeas \pipeline_dffe[11] (
	.clk(clock),
	.d(\pipeline_dffe[11]~38_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_11),
	.prn(vcc));
defparam \pipeline_dffe[11] .is_wysiwyg = "true";
defparam \pipeline_dffe[11] .power_up = "low";

dffeas \pipeline_dffe[10] (
	.clk(clock),
	.d(\pipeline_dffe[10]~36_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_10),
	.prn(vcc));
defparam \pipeline_dffe[10] .is_wysiwyg = "true";
defparam \pipeline_dffe[10] .power_up = "low";

dffeas \pipeline_dffe[9] (
	.clk(clock),
	.d(\pipeline_dffe[9]~34_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_9),
	.prn(vcc));
defparam \pipeline_dffe[9] .is_wysiwyg = "true";
defparam \pipeline_dffe[9] .power_up = "low";

dffeas \pipeline_dffe[8] (
	.clk(clock),
	.d(\pipeline_dffe[8]~32_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_8),
	.prn(vcc));
defparam \pipeline_dffe[8] .is_wysiwyg = "true";
defparam \pipeline_dffe[8] .power_up = "low";

dffeas \pipeline_dffe[7] (
	.clk(clock),
	.d(\pipeline_dffe[7]~30_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_7),
	.prn(vcc));
defparam \pipeline_dffe[7] .is_wysiwyg = "true";
defparam \pipeline_dffe[7] .power_up = "low";

dffeas \pipeline_dffe[6] (
	.clk(clock),
	.d(\pipeline_dffe[6]~28_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_6),
	.prn(vcc));
defparam \pipeline_dffe[6] .is_wysiwyg = "true";
defparam \pipeline_dffe[6] .power_up = "low";

dffeas \pipeline_dffe[5] (
	.clk(clock),
	.d(\pipeline_dffe[5]~26_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_5),
	.prn(vcc));
defparam \pipeline_dffe[5] .is_wysiwyg = "true";
defparam \pipeline_dffe[5] .power_up = "low";

dffeas \pipeline_dffe[4] (
	.clk(clock),
	.d(\pipeline_dffe[4]~24_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_4),
	.prn(vcc));
defparam \pipeline_dffe[4] .is_wysiwyg = "true";
defparam \pipeline_dffe[4] .power_up = "low";

dffeas \pipeline_dffe[3] (
	.clk(clock),
	.d(\pipeline_dffe[3]~22_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_3),
	.prn(vcc));
defparam \pipeline_dffe[3] .is_wysiwyg = "true";
defparam \pipeline_dffe[3] .power_up = "low";

dffeas \pipeline_dffe[2] (
	.clk(clock),
	.d(\pipeline_dffe[2]~20_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_2),
	.prn(vcc));
defparam \pipeline_dffe[2] .is_wysiwyg = "true";
defparam \pipeline_dffe[2] .power_up = "low";

dffeas \pipeline_dffe[1] (
	.clk(clock),
	.d(\pipeline_dffe[1]~18_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_1),
	.prn(vcc));
defparam \pipeline_dffe[1] .is_wysiwyg = "true";
defparam \pipeline_dffe[1] .power_up = "low";

dffeas \pipeline_dffe[15] (
	.clk(clock),
	.d(\pipeline_dffe[15]~46_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_15),
	.prn(vcc));
defparam \pipeline_dffe[15] .is_wysiwyg = "true";
defparam \pipeline_dffe[15] .power_up = "low";

dffeas \pipeline_dffe[14] (
	.clk(clock),
	.d(\pipeline_dffe[14]~44_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_14),
	.prn(vcc));
defparam \pipeline_dffe[14] .is_wysiwyg = "true";
defparam \pipeline_dffe[14] .power_up = "low";

cycloneive_lcell_comb \pipeline_dffe[0]~16 (
	.dataa(pipeline_dffe_0),
	.datab(phi_int_arr_reg_0),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(\pipeline_dffe[0]~16_combout ),
	.cout(\pipeline_dffe[0]~17 ));
defparam \pipeline_dffe[0]~16 .lut_mask = 16'h66EE;
defparam \pipeline_dffe[0]~16 .sum_lutc_input = "datac";

cycloneive_lcell_comb \pipeline_dffe[1]~18 (
	.dataa(pipeline_dffe_1),
	.datab(phi_int_arr_reg_1),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[0]~17 ),
	.combout(\pipeline_dffe[1]~18_combout ),
	.cout(\pipeline_dffe[1]~19 ));
defparam \pipeline_dffe[1]~18 .lut_mask = 16'h967F;
defparam \pipeline_dffe[1]~18 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[2]~20 (
	.dataa(pipeline_dffe_2),
	.datab(phi_int_arr_reg_2),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[1]~19 ),
	.combout(\pipeline_dffe[2]~20_combout ),
	.cout(\pipeline_dffe[2]~21 ));
defparam \pipeline_dffe[2]~20 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[2]~20 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[3]~22 (
	.dataa(pipeline_dffe_3),
	.datab(phi_int_arr_reg_3),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[2]~21 ),
	.combout(\pipeline_dffe[3]~22_combout ),
	.cout(\pipeline_dffe[3]~23 ));
defparam \pipeline_dffe[3]~22 .lut_mask = 16'h967F;
defparam \pipeline_dffe[3]~22 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[4]~24 (
	.dataa(pipeline_dffe_4),
	.datab(phi_int_arr_reg_4),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[3]~23 ),
	.combout(\pipeline_dffe[4]~24_combout ),
	.cout(\pipeline_dffe[4]~25 ));
defparam \pipeline_dffe[4]~24 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[4]~24 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[5]~26 (
	.dataa(pipeline_dffe_5),
	.datab(phi_int_arr_reg_5),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[4]~25 ),
	.combout(\pipeline_dffe[5]~26_combout ),
	.cout(\pipeline_dffe[5]~27 ));
defparam \pipeline_dffe[5]~26 .lut_mask = 16'h967F;
defparam \pipeline_dffe[5]~26 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[6]~28 (
	.dataa(pipeline_dffe_6),
	.datab(phi_int_arr_reg_6),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[5]~27 ),
	.combout(\pipeline_dffe[6]~28_combout ),
	.cout(\pipeline_dffe[6]~29 ));
defparam \pipeline_dffe[6]~28 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[6]~28 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[7]~30 (
	.dataa(pipeline_dffe_7),
	.datab(phi_int_arr_reg_7),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[6]~29 ),
	.combout(\pipeline_dffe[7]~30_combout ),
	.cout(\pipeline_dffe[7]~31 ));
defparam \pipeline_dffe[7]~30 .lut_mask = 16'h967F;
defparam \pipeline_dffe[7]~30 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[8]~32 (
	.dataa(pipeline_dffe_8),
	.datab(phi_int_arr_reg_8),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[7]~31 ),
	.combout(\pipeline_dffe[8]~32_combout ),
	.cout(\pipeline_dffe[8]~33 ));
defparam \pipeline_dffe[8]~32 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[8]~32 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[9]~34 (
	.dataa(pipeline_dffe_9),
	.datab(phi_int_arr_reg_9),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[8]~33 ),
	.combout(\pipeline_dffe[9]~34_combout ),
	.cout(\pipeline_dffe[9]~35 ));
defparam \pipeline_dffe[9]~34 .lut_mask = 16'h967F;
defparam \pipeline_dffe[9]~34 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[10]~36 (
	.dataa(pipeline_dffe_10),
	.datab(phi_int_arr_reg_10),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[9]~35 ),
	.combout(\pipeline_dffe[10]~36_combout ),
	.cout(\pipeline_dffe[10]~37 ));
defparam \pipeline_dffe[10]~36 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[10]~36 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[11]~38 (
	.dataa(pipeline_dffe_11),
	.datab(phi_int_arr_reg_11),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[10]~37 ),
	.combout(\pipeline_dffe[11]~38_combout ),
	.cout(\pipeline_dffe[11]~39 ));
defparam \pipeline_dffe[11]~38 .lut_mask = 16'h967F;
defparam \pipeline_dffe[11]~38 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[12]~40 (
	.dataa(pipeline_dffe_12),
	.datab(phi_int_arr_reg_12),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[11]~39 ),
	.combout(\pipeline_dffe[12]~40_combout ),
	.cout(\pipeline_dffe[12]~41 ));
defparam \pipeline_dffe[12]~40 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[12]~40 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[13]~42 (
	.dataa(pipeline_dffe_13),
	.datab(phi_int_arr_reg_13),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[12]~41 ),
	.combout(\pipeline_dffe[13]~42_combout ),
	.cout(\pipeline_dffe[13]~43 ));
defparam \pipeline_dffe[13]~42 .lut_mask = 16'h967F;
defparam \pipeline_dffe[13]~42 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[14]~44 (
	.dataa(pipeline_dffe_14),
	.datab(phi_int_arr_reg_14),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[13]~43 ),
	.combout(\pipeline_dffe[14]~44_combout ),
	.cout(\pipeline_dffe[14]~45 ));
defparam \pipeline_dffe[14]~44 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[14]~44 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[15]~46 (
	.dataa(pipeline_dffe_15),
	.datab(phi_int_arr_reg_15),
	.datac(gnd),
	.datad(gnd),
	.cin(\pipeline_dffe[14]~45 ),
	.combout(\pipeline_dffe[15]~46_combout ),
	.cout());
defparam \pipeline_dffe[15]~46 .lut_mask = 16'h9696;
defparam \pipeline_dffe[15]~46 .sum_lutc_input = "cin";

endmodule

module oc_asj_dxx (
	dxxrv_4,
	pipeline_dffe_0,
	pipeline_dffe_13,
	pipeline_dffe_12,
	pipeline_dffe_11,
	pipeline_dffe_10,
	pipeline_dffe_9,
	pipeline_dffe_8,
	pipeline_dffe_7,
	pipeline_dffe_6,
	pipeline_dffe_5,
	pipeline_dffe_4,
	pipeline_dffe_3,
	pipeline_dffe_2,
	pipeline_dffe_1,
	pipeline_dffe_15,
	pipeline_dffe_14,
	sin_o_9,
	dxxpdo_5,
	dxxpdo_18,
	dxxpdo_6,
	dxxpdo_7,
	dxxpdo_8,
	dxxpdo_9,
	dxxpdo_10,
	dxxpdo_11,
	dxxpdo_12,
	dxxpdo_13,
	dxxpdo_14,
	dxxpdo_15,
	dxxpdo_16,
	dxxpdo_17,
	dxxpdo_20,
	dxxpdo_19,
	reset_n,
	clk,
	clken)/* synthesis synthesis_greybox=1 */;
input 	dxxrv_4;
input 	pipeline_dffe_0;
input 	pipeline_dffe_13;
input 	pipeline_dffe_12;
input 	pipeline_dffe_11;
input 	pipeline_dffe_10;
input 	pipeline_dffe_9;
input 	pipeline_dffe_8;
input 	pipeline_dffe_7;
input 	pipeline_dffe_6;
input 	pipeline_dffe_5;
input 	pipeline_dffe_4;
input 	pipeline_dffe_3;
input 	pipeline_dffe_2;
input 	pipeline_dffe_1;
input 	pipeline_dffe_15;
input 	pipeline_dffe_14;
input 	sin_o_9;
output 	dxxpdo_5;
output 	dxxpdo_18;
output 	dxxpdo_6;
output 	dxxpdo_7;
output 	dxxpdo_8;
output 	dxxpdo_9;
output 	dxxpdo_10;
output 	dxxpdo_11;
output 	dxxpdo_12;
output 	dxxpdo_13;
output 	dxxpdo_14;
output 	dxxpdo_15;
output 	dxxpdo_16;
output 	dxxpdo_17;
output 	dxxpdo_20;
output 	dxxpdo_19;
input 	reset_n;
input 	clk;
input 	clken;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \ux014|auto_generated|pipeline_dffe[5]~q ;
wire \ux014|auto_generated|pipeline_dffe[18]~q ;
wire \ux014|auto_generated|pipeline_dffe[6]~q ;
wire \ux014|auto_generated|pipeline_dffe[7]~q ;
wire \ux014|auto_generated|pipeline_dffe[8]~q ;
wire \ux014|auto_generated|pipeline_dffe[9]~q ;
wire \ux014|auto_generated|pipeline_dffe[10]~q ;
wire \ux014|auto_generated|pipeline_dffe[11]~q ;
wire \ux014|auto_generated|pipeline_dffe[12]~q ;
wire \ux014|auto_generated|pipeline_dffe[13]~q ;
wire \ux014|auto_generated|pipeline_dffe[14]~q ;
wire \ux014|auto_generated|pipeline_dffe[15]~q ;
wire \ux014|auto_generated|pipeline_dffe[16]~q ;
wire \ux014|auto_generated|pipeline_dffe[17]~q ;
wire \ux014|auto_generated|pipeline_dffe[20]~q ;
wire \ux014|auto_generated|pipeline_dffe[19]~q ;
wire \dxxpdo~0_combout ;
wire \dxxpdo~1_combout ;
wire \dxxpdo~2_combout ;
wire \dxxpdo~3_combout ;
wire \dxxpdo~4_combout ;
wire \dxxpdo~5_combout ;
wire \dxxpdo~6_combout ;
wire \dxxpdo~7_combout ;
wire \dxxpdo~8_combout ;
wire \dxxpdo~9_combout ;
wire \dxxpdo~10_combout ;
wire \dxxpdo~11_combout ;
wire \dxxpdo~12_combout ;
wire \dxxpdo~13_combout ;
wire \dxxpdo~14_combout ;
wire \dxxpdo~15_combout ;


oc_lpm_add_sub_2 ux014(
	.pipeline_dffe_5(\ux014|auto_generated|pipeline_dffe[5]~q ),
	.pipeline_dffe_18(\ux014|auto_generated|pipeline_dffe[18]~q ),
	.pipeline_dffe_6(\ux014|auto_generated|pipeline_dffe[6]~q ),
	.pipeline_dffe_7(\ux014|auto_generated|pipeline_dffe[7]~q ),
	.pipeline_dffe_8(\ux014|auto_generated|pipeline_dffe[8]~q ),
	.pipeline_dffe_9(\ux014|auto_generated|pipeline_dffe[9]~q ),
	.pipeline_dffe_10(\ux014|auto_generated|pipeline_dffe[10]~q ),
	.pipeline_dffe_11(\ux014|auto_generated|pipeline_dffe[11]~q ),
	.pipeline_dffe_12(\ux014|auto_generated|pipeline_dffe[12]~q ),
	.pipeline_dffe_13(\ux014|auto_generated|pipeline_dffe[13]~q ),
	.pipeline_dffe_14(\ux014|auto_generated|pipeline_dffe[14]~q ),
	.pipeline_dffe_15(\ux014|auto_generated|pipeline_dffe[15]~q ),
	.pipeline_dffe_16(\ux014|auto_generated|pipeline_dffe[16]~q ),
	.pipeline_dffe_17(\ux014|auto_generated|pipeline_dffe[17]~q ),
	.dxxrv_4(dxxrv_4),
	.pipeline_dffe_0(pipeline_dffe_0),
	.pipeline_dffe_131(pipeline_dffe_13),
	.pipeline_dffe_121(pipeline_dffe_12),
	.pipeline_dffe_111(pipeline_dffe_11),
	.pipeline_dffe_101(pipeline_dffe_10),
	.pipeline_dffe_91(pipeline_dffe_9),
	.pipeline_dffe_81(pipeline_dffe_8),
	.pipeline_dffe_71(pipeline_dffe_7),
	.pipeline_dffe_61(pipeline_dffe_6),
	.pipeline_dffe_51(pipeline_dffe_5),
	.pipeline_dffe_4(pipeline_dffe_4),
	.pipeline_dffe_3(pipeline_dffe_3),
	.pipeline_dffe_2(pipeline_dffe_2),
	.pipeline_dffe_1(pipeline_dffe_1),
	.pipeline_dffe_20(\ux014|auto_generated|pipeline_dffe[20]~q ),
	.pipeline_dffe_19(\ux014|auto_generated|pipeline_dffe[19]~q ),
	.pipeline_dffe_151(pipeline_dffe_15),
	.pipeline_dffe_141(pipeline_dffe_14),
	.reset_n(reset_n),
	.clock(clk),
	.clken(clken));

dffeas \dxxpdo[5] (
	.clk(clk),
	.d(\dxxpdo~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(dxxpdo_5),
	.prn(vcc));
defparam \dxxpdo[5] .is_wysiwyg = "true";
defparam \dxxpdo[5] .power_up = "low";

dffeas \dxxpdo[18] (
	.clk(clk),
	.d(\dxxpdo~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(dxxpdo_18),
	.prn(vcc));
defparam \dxxpdo[18] .is_wysiwyg = "true";
defparam \dxxpdo[18] .power_up = "low";

dffeas \dxxpdo[6] (
	.clk(clk),
	.d(\dxxpdo~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(dxxpdo_6),
	.prn(vcc));
defparam \dxxpdo[6] .is_wysiwyg = "true";
defparam \dxxpdo[6] .power_up = "low";

dffeas \dxxpdo[7] (
	.clk(clk),
	.d(\dxxpdo~3_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(dxxpdo_7),
	.prn(vcc));
defparam \dxxpdo[7] .is_wysiwyg = "true";
defparam \dxxpdo[7] .power_up = "low";

dffeas \dxxpdo[8] (
	.clk(clk),
	.d(\dxxpdo~4_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(dxxpdo_8),
	.prn(vcc));
defparam \dxxpdo[8] .is_wysiwyg = "true";
defparam \dxxpdo[8] .power_up = "low";

dffeas \dxxpdo[9] (
	.clk(clk),
	.d(\dxxpdo~5_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(dxxpdo_9),
	.prn(vcc));
defparam \dxxpdo[9] .is_wysiwyg = "true";
defparam \dxxpdo[9] .power_up = "low";

dffeas \dxxpdo[10] (
	.clk(clk),
	.d(\dxxpdo~6_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(dxxpdo_10),
	.prn(vcc));
defparam \dxxpdo[10] .is_wysiwyg = "true";
defparam \dxxpdo[10] .power_up = "low";

dffeas \dxxpdo[11] (
	.clk(clk),
	.d(\dxxpdo~7_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(dxxpdo_11),
	.prn(vcc));
defparam \dxxpdo[11] .is_wysiwyg = "true";
defparam \dxxpdo[11] .power_up = "low";

dffeas \dxxpdo[12] (
	.clk(clk),
	.d(\dxxpdo~8_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(dxxpdo_12),
	.prn(vcc));
defparam \dxxpdo[12] .is_wysiwyg = "true";
defparam \dxxpdo[12] .power_up = "low";

dffeas \dxxpdo[13] (
	.clk(clk),
	.d(\dxxpdo~9_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(dxxpdo_13),
	.prn(vcc));
defparam \dxxpdo[13] .is_wysiwyg = "true";
defparam \dxxpdo[13] .power_up = "low";

dffeas \dxxpdo[14] (
	.clk(clk),
	.d(\dxxpdo~10_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(dxxpdo_14),
	.prn(vcc));
defparam \dxxpdo[14] .is_wysiwyg = "true";
defparam \dxxpdo[14] .power_up = "low";

dffeas \dxxpdo[15] (
	.clk(clk),
	.d(\dxxpdo~11_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(dxxpdo_15),
	.prn(vcc));
defparam \dxxpdo[15] .is_wysiwyg = "true";
defparam \dxxpdo[15] .power_up = "low";

dffeas \dxxpdo[16] (
	.clk(clk),
	.d(\dxxpdo~12_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(dxxpdo_16),
	.prn(vcc));
defparam \dxxpdo[16] .is_wysiwyg = "true";
defparam \dxxpdo[16] .power_up = "low";

dffeas \dxxpdo[17] (
	.clk(clk),
	.d(\dxxpdo~13_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(dxxpdo_17),
	.prn(vcc));
defparam \dxxpdo[17] .is_wysiwyg = "true";
defparam \dxxpdo[17] .power_up = "low";

dffeas \dxxpdo[20] (
	.clk(clk),
	.d(\dxxpdo~14_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(dxxpdo_20),
	.prn(vcc));
defparam \dxxpdo[20] .is_wysiwyg = "true";
defparam \dxxpdo[20] .power_up = "low";

dffeas \dxxpdo[19] (
	.clk(clk),
	.d(\dxxpdo~15_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(dxxpdo_19),
	.prn(vcc));
defparam \dxxpdo[19] .is_wysiwyg = "true";
defparam \dxxpdo[19] .power_up = "low";

cycloneive_lcell_comb \dxxpdo~0 (
	.dataa(reset_n),
	.datab(\ux014|auto_generated|pipeline_dffe[5]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\dxxpdo~0_combout ),
	.cout());
defparam \dxxpdo~0 .lut_mask = 16'hEEEE;
defparam \dxxpdo~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \dxxpdo~1 (
	.dataa(reset_n),
	.datab(\ux014|auto_generated|pipeline_dffe[18]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\dxxpdo~1_combout ),
	.cout());
defparam \dxxpdo~1 .lut_mask = 16'hEEEE;
defparam \dxxpdo~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \dxxpdo~2 (
	.dataa(reset_n),
	.datab(\ux014|auto_generated|pipeline_dffe[6]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\dxxpdo~2_combout ),
	.cout());
defparam \dxxpdo~2 .lut_mask = 16'hEEEE;
defparam \dxxpdo~2 .sum_lutc_input = "datac";

cycloneive_lcell_comb \dxxpdo~3 (
	.dataa(reset_n),
	.datab(\ux014|auto_generated|pipeline_dffe[7]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\dxxpdo~3_combout ),
	.cout());
defparam \dxxpdo~3 .lut_mask = 16'hEEEE;
defparam \dxxpdo~3 .sum_lutc_input = "datac";

cycloneive_lcell_comb \dxxpdo~4 (
	.dataa(reset_n),
	.datab(\ux014|auto_generated|pipeline_dffe[8]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\dxxpdo~4_combout ),
	.cout());
defparam \dxxpdo~4 .lut_mask = 16'hEEEE;
defparam \dxxpdo~4 .sum_lutc_input = "datac";

cycloneive_lcell_comb \dxxpdo~5 (
	.dataa(reset_n),
	.datab(\ux014|auto_generated|pipeline_dffe[9]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\dxxpdo~5_combout ),
	.cout());
defparam \dxxpdo~5 .lut_mask = 16'hEEEE;
defparam \dxxpdo~5 .sum_lutc_input = "datac";

cycloneive_lcell_comb \dxxpdo~6 (
	.dataa(reset_n),
	.datab(\ux014|auto_generated|pipeline_dffe[10]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\dxxpdo~6_combout ),
	.cout());
defparam \dxxpdo~6 .lut_mask = 16'hEEEE;
defparam \dxxpdo~6 .sum_lutc_input = "datac";

cycloneive_lcell_comb \dxxpdo~7 (
	.dataa(reset_n),
	.datab(\ux014|auto_generated|pipeline_dffe[11]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\dxxpdo~7_combout ),
	.cout());
defparam \dxxpdo~7 .lut_mask = 16'hEEEE;
defparam \dxxpdo~7 .sum_lutc_input = "datac";

cycloneive_lcell_comb \dxxpdo~8 (
	.dataa(reset_n),
	.datab(\ux014|auto_generated|pipeline_dffe[12]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\dxxpdo~8_combout ),
	.cout());
defparam \dxxpdo~8 .lut_mask = 16'hEEEE;
defparam \dxxpdo~8 .sum_lutc_input = "datac";

cycloneive_lcell_comb \dxxpdo~9 (
	.dataa(reset_n),
	.datab(\ux014|auto_generated|pipeline_dffe[13]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\dxxpdo~9_combout ),
	.cout());
defparam \dxxpdo~9 .lut_mask = 16'hEEEE;
defparam \dxxpdo~9 .sum_lutc_input = "datac";

cycloneive_lcell_comb \dxxpdo~10 (
	.dataa(reset_n),
	.datab(\ux014|auto_generated|pipeline_dffe[14]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\dxxpdo~10_combout ),
	.cout());
defparam \dxxpdo~10 .lut_mask = 16'hEEEE;
defparam \dxxpdo~10 .sum_lutc_input = "datac";

cycloneive_lcell_comb \dxxpdo~11 (
	.dataa(reset_n),
	.datab(\ux014|auto_generated|pipeline_dffe[15]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\dxxpdo~11_combout ),
	.cout());
defparam \dxxpdo~11 .lut_mask = 16'hEEEE;
defparam \dxxpdo~11 .sum_lutc_input = "datac";

cycloneive_lcell_comb \dxxpdo~12 (
	.dataa(reset_n),
	.datab(\ux014|auto_generated|pipeline_dffe[16]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\dxxpdo~12_combout ),
	.cout());
defparam \dxxpdo~12 .lut_mask = 16'hEEEE;
defparam \dxxpdo~12 .sum_lutc_input = "datac";

cycloneive_lcell_comb \dxxpdo~13 (
	.dataa(reset_n),
	.datab(\ux014|auto_generated|pipeline_dffe[17]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\dxxpdo~13_combout ),
	.cout());
defparam \dxxpdo~13 .lut_mask = 16'hEEEE;
defparam \dxxpdo~13 .sum_lutc_input = "datac";

cycloneive_lcell_comb \dxxpdo~14 (
	.dataa(reset_n),
	.datab(\ux014|auto_generated|pipeline_dffe[20]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\dxxpdo~14_combout ),
	.cout());
defparam \dxxpdo~14 .lut_mask = 16'hEEEE;
defparam \dxxpdo~14 .sum_lutc_input = "datac";

cycloneive_lcell_comb \dxxpdo~15 (
	.dataa(reset_n),
	.datab(\ux014|auto_generated|pipeline_dffe[19]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\dxxpdo~15_combout ),
	.cout());
defparam \dxxpdo~15 .lut_mask = 16'hEEEE;
defparam \dxxpdo~15 .sum_lutc_input = "datac";

endmodule

module oc_lpm_add_sub_2 (
	pipeline_dffe_5,
	pipeline_dffe_18,
	pipeline_dffe_6,
	pipeline_dffe_7,
	pipeline_dffe_8,
	pipeline_dffe_9,
	pipeline_dffe_10,
	pipeline_dffe_11,
	pipeline_dffe_12,
	pipeline_dffe_13,
	pipeline_dffe_14,
	pipeline_dffe_15,
	pipeline_dffe_16,
	pipeline_dffe_17,
	dxxrv_4,
	pipeline_dffe_0,
	pipeline_dffe_131,
	pipeline_dffe_121,
	pipeline_dffe_111,
	pipeline_dffe_101,
	pipeline_dffe_91,
	pipeline_dffe_81,
	pipeline_dffe_71,
	pipeline_dffe_61,
	pipeline_dffe_51,
	pipeline_dffe_4,
	pipeline_dffe_3,
	pipeline_dffe_2,
	pipeline_dffe_1,
	pipeline_dffe_20,
	pipeline_dffe_19,
	pipeline_dffe_151,
	pipeline_dffe_141,
	reset_n,
	clock,
	clken)/* synthesis synthesis_greybox=1 */;
output 	pipeline_dffe_5;
output 	pipeline_dffe_18;
output 	pipeline_dffe_6;
output 	pipeline_dffe_7;
output 	pipeline_dffe_8;
output 	pipeline_dffe_9;
output 	pipeline_dffe_10;
output 	pipeline_dffe_11;
output 	pipeline_dffe_12;
output 	pipeline_dffe_13;
output 	pipeline_dffe_14;
output 	pipeline_dffe_15;
output 	pipeline_dffe_16;
output 	pipeline_dffe_17;
input 	dxxrv_4;
input 	pipeline_dffe_0;
input 	pipeline_dffe_131;
input 	pipeline_dffe_121;
input 	pipeline_dffe_111;
input 	pipeline_dffe_101;
input 	pipeline_dffe_91;
input 	pipeline_dffe_81;
input 	pipeline_dffe_71;
input 	pipeline_dffe_61;
input 	pipeline_dffe_51;
input 	pipeline_dffe_4;
input 	pipeline_dffe_3;
input 	pipeline_dffe_2;
input 	pipeline_dffe_1;
output 	pipeline_dffe_20;
output 	pipeline_dffe_19;
input 	pipeline_dffe_151;
input 	pipeline_dffe_141;
input 	reset_n;
input 	clock;
input 	clken;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



oc_add_sub_qth auto_generated(
	.pipeline_dffe_5(pipeline_dffe_5),
	.pipeline_dffe_18(pipeline_dffe_18),
	.pipeline_dffe_6(pipeline_dffe_6),
	.pipeline_dffe_7(pipeline_dffe_7),
	.pipeline_dffe_8(pipeline_dffe_8),
	.pipeline_dffe_9(pipeline_dffe_9),
	.pipeline_dffe_10(pipeline_dffe_10),
	.pipeline_dffe_11(pipeline_dffe_11),
	.pipeline_dffe_12(pipeline_dffe_12),
	.pipeline_dffe_13(pipeline_dffe_13),
	.pipeline_dffe_14(pipeline_dffe_14),
	.pipeline_dffe_15(pipeline_dffe_15),
	.pipeline_dffe_16(pipeline_dffe_16),
	.pipeline_dffe_17(pipeline_dffe_17),
	.dxxrv_4(dxxrv_4),
	.pipeline_dffe_0(pipeline_dffe_0),
	.pipeline_dffe_131(pipeline_dffe_131),
	.pipeline_dffe_121(pipeline_dffe_121),
	.pipeline_dffe_111(pipeline_dffe_111),
	.pipeline_dffe_101(pipeline_dffe_101),
	.pipeline_dffe_91(pipeline_dffe_91),
	.pipeline_dffe_81(pipeline_dffe_81),
	.pipeline_dffe_71(pipeline_dffe_71),
	.pipeline_dffe_61(pipeline_dffe_61),
	.pipeline_dffe_51(pipeline_dffe_51),
	.pipeline_dffe_4(pipeline_dffe_4),
	.pipeline_dffe_3(pipeline_dffe_3),
	.pipeline_dffe_2(pipeline_dffe_2),
	.pipeline_dffe_1(pipeline_dffe_1),
	.pipeline_dffe_20(pipeline_dffe_20),
	.pipeline_dffe_19(pipeline_dffe_19),
	.pipeline_dffe_151(pipeline_dffe_151),
	.pipeline_dffe_141(pipeline_dffe_141),
	.reset_n(reset_n),
	.clock(clock),
	.clken(clken));

endmodule

module oc_add_sub_qth (
	pipeline_dffe_5,
	pipeline_dffe_18,
	pipeline_dffe_6,
	pipeline_dffe_7,
	pipeline_dffe_8,
	pipeline_dffe_9,
	pipeline_dffe_10,
	pipeline_dffe_11,
	pipeline_dffe_12,
	pipeline_dffe_13,
	pipeline_dffe_14,
	pipeline_dffe_15,
	pipeline_dffe_16,
	pipeline_dffe_17,
	dxxrv_4,
	pipeline_dffe_0,
	pipeline_dffe_131,
	pipeline_dffe_121,
	pipeline_dffe_111,
	pipeline_dffe_101,
	pipeline_dffe_91,
	pipeline_dffe_81,
	pipeline_dffe_71,
	pipeline_dffe_61,
	pipeline_dffe_51,
	pipeline_dffe_4,
	pipeline_dffe_3,
	pipeline_dffe_2,
	pipeline_dffe_1,
	pipeline_dffe_20,
	pipeline_dffe_19,
	pipeline_dffe_151,
	pipeline_dffe_141,
	reset_n,
	clock,
	clken)/* synthesis synthesis_greybox=1 */;
output 	pipeline_dffe_5;
output 	pipeline_dffe_18;
output 	pipeline_dffe_6;
output 	pipeline_dffe_7;
output 	pipeline_dffe_8;
output 	pipeline_dffe_9;
output 	pipeline_dffe_10;
output 	pipeline_dffe_11;
output 	pipeline_dffe_12;
output 	pipeline_dffe_13;
output 	pipeline_dffe_14;
output 	pipeline_dffe_15;
output 	pipeline_dffe_16;
output 	pipeline_dffe_17;
input 	dxxrv_4;
input 	pipeline_dffe_0;
input 	pipeline_dffe_131;
input 	pipeline_dffe_121;
input 	pipeline_dffe_111;
input 	pipeline_dffe_101;
input 	pipeline_dffe_91;
input 	pipeline_dffe_81;
input 	pipeline_dffe_71;
input 	pipeline_dffe_61;
input 	pipeline_dffe_51;
input 	pipeline_dffe_4;
input 	pipeline_dffe_3;
input 	pipeline_dffe_2;
input 	pipeline_dffe_1;
output 	pipeline_dffe_20;
output 	pipeline_dffe_19;
input 	pipeline_dffe_151;
input 	pipeline_dffe_141;
input 	reset_n;
input 	clock;
input 	clken;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \pipeline_dffe[5]~16_combout ;
wire \pipeline_dffe[5]~17 ;
wire \pipeline_dffe[6]~19 ;
wire \pipeline_dffe[7]~21 ;
wire \pipeline_dffe[8]~23 ;
wire \pipeline_dffe[9]~25 ;
wire \pipeline_dffe[10]~27 ;
wire \pipeline_dffe[11]~29 ;
wire \pipeline_dffe[12]~31 ;
wire \pipeline_dffe[13]~33 ;
wire \pipeline_dffe[14]~35 ;
wire \pipeline_dffe[15]~37 ;
wire \pipeline_dffe[16]~39 ;
wire \pipeline_dffe[17]~41 ;
wire \pipeline_dffe[18]~42_combout ;
wire \pipeline_dffe[6]~18_combout ;
wire \pipeline_dffe[7]~20_combout ;
wire \pipeline_dffe[8]~22_combout ;
wire \pipeline_dffe[9]~24_combout ;
wire \pipeline_dffe[10]~26_combout ;
wire \pipeline_dffe[11]~28_combout ;
wire \pipeline_dffe[12]~30_combout ;
wire \pipeline_dffe[13]~32_combout ;
wire \pipeline_dffe[14]~34_combout ;
wire \pipeline_dffe[15]~36_combout ;
wire \pipeline_dffe[16]~38_combout ;
wire \pipeline_dffe[17]~40_combout ;
wire \pipeline_dffe[18]~43 ;
wire \pipeline_dffe[19]~45 ;
wire \pipeline_dffe[20]~46_combout ;
wire \pipeline_dffe[19]~44_combout ;


dffeas \pipeline_dffe[5] (
	.clk(clock),
	.d(\pipeline_dffe[5]~16_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_5),
	.prn(vcc));
defparam \pipeline_dffe[5] .is_wysiwyg = "true";
defparam \pipeline_dffe[5] .power_up = "low";

dffeas \pipeline_dffe[18] (
	.clk(clock),
	.d(\pipeline_dffe[18]~42_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_18),
	.prn(vcc));
defparam \pipeline_dffe[18] .is_wysiwyg = "true";
defparam \pipeline_dffe[18] .power_up = "low";

dffeas \pipeline_dffe[6] (
	.clk(clock),
	.d(\pipeline_dffe[6]~18_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_6),
	.prn(vcc));
defparam \pipeline_dffe[6] .is_wysiwyg = "true";
defparam \pipeline_dffe[6] .power_up = "low";

dffeas \pipeline_dffe[7] (
	.clk(clock),
	.d(\pipeline_dffe[7]~20_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_7),
	.prn(vcc));
defparam \pipeline_dffe[7] .is_wysiwyg = "true";
defparam \pipeline_dffe[7] .power_up = "low";

dffeas \pipeline_dffe[8] (
	.clk(clock),
	.d(\pipeline_dffe[8]~22_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_8),
	.prn(vcc));
defparam \pipeline_dffe[8] .is_wysiwyg = "true";
defparam \pipeline_dffe[8] .power_up = "low";

dffeas \pipeline_dffe[9] (
	.clk(clock),
	.d(\pipeline_dffe[9]~24_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_9),
	.prn(vcc));
defparam \pipeline_dffe[9] .is_wysiwyg = "true";
defparam \pipeline_dffe[9] .power_up = "low";

dffeas \pipeline_dffe[10] (
	.clk(clock),
	.d(\pipeline_dffe[10]~26_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_10),
	.prn(vcc));
defparam \pipeline_dffe[10] .is_wysiwyg = "true";
defparam \pipeline_dffe[10] .power_up = "low";

dffeas \pipeline_dffe[11] (
	.clk(clock),
	.d(\pipeline_dffe[11]~28_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_11),
	.prn(vcc));
defparam \pipeline_dffe[11] .is_wysiwyg = "true";
defparam \pipeline_dffe[11] .power_up = "low";

dffeas \pipeline_dffe[12] (
	.clk(clock),
	.d(\pipeline_dffe[12]~30_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_12),
	.prn(vcc));
defparam \pipeline_dffe[12] .is_wysiwyg = "true";
defparam \pipeline_dffe[12] .power_up = "low";

dffeas \pipeline_dffe[13] (
	.clk(clock),
	.d(\pipeline_dffe[13]~32_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_13),
	.prn(vcc));
defparam \pipeline_dffe[13] .is_wysiwyg = "true";
defparam \pipeline_dffe[13] .power_up = "low";

dffeas \pipeline_dffe[14] (
	.clk(clock),
	.d(\pipeline_dffe[14]~34_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_14),
	.prn(vcc));
defparam \pipeline_dffe[14] .is_wysiwyg = "true";
defparam \pipeline_dffe[14] .power_up = "low";

dffeas \pipeline_dffe[15] (
	.clk(clock),
	.d(\pipeline_dffe[15]~36_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_15),
	.prn(vcc));
defparam \pipeline_dffe[15] .is_wysiwyg = "true";
defparam \pipeline_dffe[15] .power_up = "low";

dffeas \pipeline_dffe[16] (
	.clk(clock),
	.d(\pipeline_dffe[16]~38_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_16),
	.prn(vcc));
defparam \pipeline_dffe[16] .is_wysiwyg = "true";
defparam \pipeline_dffe[16] .power_up = "low";

dffeas \pipeline_dffe[17] (
	.clk(clock),
	.d(\pipeline_dffe[17]~40_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_17),
	.prn(vcc));
defparam \pipeline_dffe[17] .is_wysiwyg = "true";
defparam \pipeline_dffe[17] .power_up = "low";

dffeas \pipeline_dffe[20] (
	.clk(clock),
	.d(\pipeline_dffe[20]~46_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_20),
	.prn(vcc));
defparam \pipeline_dffe[20] .is_wysiwyg = "true";
defparam \pipeline_dffe[20] .power_up = "low";

dffeas \pipeline_dffe[19] (
	.clk(clock),
	.d(\pipeline_dffe[19]~44_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_19),
	.prn(vcc));
defparam \pipeline_dffe[19] .is_wysiwyg = "true";
defparam \pipeline_dffe[19] .power_up = "low";

cycloneive_lcell_comb \pipeline_dffe[5]~16 (
	.dataa(dxxrv_4),
	.datab(pipeline_dffe_0),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(\pipeline_dffe[5]~16_combout ),
	.cout(\pipeline_dffe[5]~17 ));
defparam \pipeline_dffe[5]~16 .lut_mask = 16'h66EE;
defparam \pipeline_dffe[5]~16 .sum_lutc_input = "datac";

cycloneive_lcell_comb \pipeline_dffe[6]~18 (
	.dataa(dxxrv_4),
	.datab(pipeline_dffe_1),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[5]~17 ),
	.combout(\pipeline_dffe[6]~18_combout ),
	.cout(\pipeline_dffe[6]~19 ));
defparam \pipeline_dffe[6]~18 .lut_mask = 16'h967F;
defparam \pipeline_dffe[6]~18 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[7]~20 (
	.dataa(dxxrv_4),
	.datab(pipeline_dffe_2),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[6]~19 ),
	.combout(\pipeline_dffe[7]~20_combout ),
	.cout(\pipeline_dffe[7]~21 ));
defparam \pipeline_dffe[7]~20 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[7]~20 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[8]~22 (
	.dataa(dxxrv_4),
	.datab(pipeline_dffe_3),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[7]~21 ),
	.combout(\pipeline_dffe[8]~22_combout ),
	.cout(\pipeline_dffe[8]~23 ));
defparam \pipeline_dffe[8]~22 .lut_mask = 16'h967F;
defparam \pipeline_dffe[8]~22 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[9]~24 (
	.dataa(dxxrv_4),
	.datab(pipeline_dffe_4),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[8]~23 ),
	.combout(\pipeline_dffe[9]~24_combout ),
	.cout(\pipeline_dffe[9]~25 ));
defparam \pipeline_dffe[9]~24 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[9]~24 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[10]~26 (
	.dataa(dxxrv_4),
	.datab(pipeline_dffe_51),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[9]~25 ),
	.combout(\pipeline_dffe[10]~26_combout ),
	.cout(\pipeline_dffe[10]~27 ));
defparam \pipeline_dffe[10]~26 .lut_mask = 16'h967F;
defparam \pipeline_dffe[10]~26 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[11]~28 (
	.dataa(dxxrv_4),
	.datab(pipeline_dffe_61),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[10]~27 ),
	.combout(\pipeline_dffe[11]~28_combout ),
	.cout(\pipeline_dffe[11]~29 ));
defparam \pipeline_dffe[11]~28 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[11]~28 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[12]~30 (
	.dataa(dxxrv_4),
	.datab(pipeline_dffe_71),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[11]~29 ),
	.combout(\pipeline_dffe[12]~30_combout ),
	.cout(\pipeline_dffe[12]~31 ));
defparam \pipeline_dffe[12]~30 .lut_mask = 16'h967F;
defparam \pipeline_dffe[12]~30 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[13]~32 (
	.dataa(dxxrv_4),
	.datab(pipeline_dffe_81),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[12]~31 ),
	.combout(\pipeline_dffe[13]~32_combout ),
	.cout(\pipeline_dffe[13]~33 ));
defparam \pipeline_dffe[13]~32 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[13]~32 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[14]~34 (
	.dataa(dxxrv_4),
	.datab(pipeline_dffe_91),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[13]~33 ),
	.combout(\pipeline_dffe[14]~34_combout ),
	.cout(\pipeline_dffe[14]~35 ));
defparam \pipeline_dffe[14]~34 .lut_mask = 16'h967F;
defparam \pipeline_dffe[14]~34 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[15]~36 (
	.dataa(dxxrv_4),
	.datab(pipeline_dffe_101),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[14]~35 ),
	.combout(\pipeline_dffe[15]~36_combout ),
	.cout(\pipeline_dffe[15]~37 ));
defparam \pipeline_dffe[15]~36 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[15]~36 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[16]~38 (
	.dataa(dxxrv_4),
	.datab(pipeline_dffe_111),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[15]~37 ),
	.combout(\pipeline_dffe[16]~38_combout ),
	.cout(\pipeline_dffe[16]~39 ));
defparam \pipeline_dffe[16]~38 .lut_mask = 16'h967F;
defparam \pipeline_dffe[16]~38 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[17]~40 (
	.dataa(dxxrv_4),
	.datab(pipeline_dffe_121),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[16]~39 ),
	.combout(\pipeline_dffe[17]~40_combout ),
	.cout(\pipeline_dffe[17]~41 ));
defparam \pipeline_dffe[17]~40 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[17]~40 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[18]~42 (
	.dataa(dxxrv_4),
	.datab(pipeline_dffe_131),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[17]~41 ),
	.combout(\pipeline_dffe[18]~42_combout ),
	.cout(\pipeline_dffe[18]~43 ));
defparam \pipeline_dffe[18]~42 .lut_mask = 16'h967F;
defparam \pipeline_dffe[18]~42 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[19]~44 (
	.dataa(dxxrv_4),
	.datab(pipeline_dffe_141),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[18]~43 ),
	.combout(\pipeline_dffe[19]~44_combout ),
	.cout(\pipeline_dffe[19]~45 ));
defparam \pipeline_dffe[19]~44 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[19]~44 .sum_lutc_input = "cin";

cycloneive_lcell_comb \pipeline_dffe[20]~46 (
	.dataa(dxxrv_4),
	.datab(pipeline_dffe_151),
	.datac(gnd),
	.datad(gnd),
	.cin(\pipeline_dffe[19]~45 ),
	.combout(\pipeline_dffe[20]~46_combout ),
	.cout());
defparam \pipeline_dffe[20]~46 .lut_mask = 16'h9696;
defparam \pipeline_dffe[20]~46 .sum_lutc_input = "cin";

endmodule

module oc_asj_dxx_g (
	dxxrv_4,
	sin_o_9,
	reset_n,
	clk)/* synthesis synthesis_greybox=1 */;
output 	dxxrv_4;
input 	sin_o_9;
input 	reset_n;
input 	clk;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \lsfr_reg[0]~q ;
wire \lsfr_reg[14]~q ;
wire \lsfr_reg[13]~q ;
wire \lsfr_reg[12]~q ;
wire \lsfr_reg~1_combout ;
wire \lsfr_reg~2_combout ;
wire \lsfr_reg~3_combout ;
wire \lsfr_reg[10]~q ;
wire \lsfr_reg[9]~q ;
wire \lsfr_reg~5_combout ;
wire \lsfr_reg[8]~q ;
wire \lsfr_reg~6_combout ;
wire \lsfr_reg[7]~q ;
wire \lsfr_reg~7_combout ;
wire \lsfr_reg[6]~q ;
wire \lsfr_reg~8_combout ;
wire \lsfr_reg[5]~q ;
wire \lsfr_reg~9_combout ;
wire \lsfr_reg[4]~q ;
wire \lsfr_reg~10_combout ;
wire \lsfr_reg[3]~q ;
wire \lsfr_reg~11_combout ;
wire \lsfr_reg[2]~q ;
wire \lsfr_reg~12_combout ;
wire \lsfr_reg[1]~q ;
wire \lsfr_reg~13_combout ;
wire \lsfr_reg~14_combout ;
wire \lsfr_reg~15_combout ;
wire \lsfr_reg~0_combout ;
wire \lsfr_reg[15]~q ;
wire \lsfr_reg~4_combout ;
wire \lsfr_reg[11]~q ;
wire \dxxrv[0]~2_cout ;
wire \dxxrv[1]~4_cout ;
wire \dxxrv[2]~6_cout ;
wire \dxxrv[3]~8_cout ;
wire \dxxrv[4]~9_combout ;


dffeas \lsfr_reg[0] (
	.clk(clk),
	.d(\lsfr_reg~15_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!reset_n),
	.ena(sin_o_9),
	.q(\lsfr_reg[0]~q ),
	.prn(vcc));
defparam \lsfr_reg[0] .is_wysiwyg = "true";
defparam \lsfr_reg[0] .power_up = "low";

dffeas \lsfr_reg[14] (
	.clk(clk),
	.d(\lsfr_reg~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\lsfr_reg[14]~q ),
	.prn(vcc));
defparam \lsfr_reg[14] .is_wysiwyg = "true";
defparam \lsfr_reg[14] .power_up = "low";

dffeas \lsfr_reg[13] (
	.clk(clk),
	.d(\lsfr_reg~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\lsfr_reg[13]~q ),
	.prn(vcc));
defparam \lsfr_reg[13] .is_wysiwyg = "true";
defparam \lsfr_reg[13] .power_up = "low";

dffeas \lsfr_reg[12] (
	.clk(clk),
	.d(\lsfr_reg~3_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\lsfr_reg[12]~q ),
	.prn(vcc));
defparam \lsfr_reg[12] .is_wysiwyg = "true";
defparam \lsfr_reg[12] .power_up = "low";

cycloneive_lcell_comb \lsfr_reg~1 (
	.dataa(reset_n),
	.datab(\lsfr_reg[13]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\lsfr_reg~1_combout ),
	.cout());
defparam \lsfr_reg~1 .lut_mask = 16'hEEEE;
defparam \lsfr_reg~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \lsfr_reg~2 (
	.dataa(reset_n),
	.datab(\lsfr_reg[12]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\lsfr_reg~2_combout ),
	.cout());
defparam \lsfr_reg~2 .lut_mask = 16'hEEEE;
defparam \lsfr_reg~2 .sum_lutc_input = "datac";

cycloneive_lcell_comb \lsfr_reg~3 (
	.dataa(\lsfr_reg[11]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(reset_n),
	.cin(gnd),
	.combout(\lsfr_reg~3_combout ),
	.cout());
defparam \lsfr_reg~3 .lut_mask = 16'hAAFF;
defparam \lsfr_reg~3 .sum_lutc_input = "datac";

dffeas \lsfr_reg[10] (
	.clk(clk),
	.d(\lsfr_reg~5_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\lsfr_reg[10]~q ),
	.prn(vcc));
defparam \lsfr_reg[10] .is_wysiwyg = "true";
defparam \lsfr_reg[10] .power_up = "low";

dffeas \lsfr_reg[9] (
	.clk(clk),
	.d(\lsfr_reg~6_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\lsfr_reg[9]~q ),
	.prn(vcc));
defparam \lsfr_reg[9] .is_wysiwyg = "true";
defparam \lsfr_reg[9] .power_up = "low";

cycloneive_lcell_comb \lsfr_reg~5 (
	.dataa(reset_n),
	.datab(\lsfr_reg[9]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\lsfr_reg~5_combout ),
	.cout());
defparam \lsfr_reg~5 .lut_mask = 16'hEEEE;
defparam \lsfr_reg~5 .sum_lutc_input = "datac";

dffeas \lsfr_reg[8] (
	.clk(clk),
	.d(\lsfr_reg~7_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\lsfr_reg[8]~q ),
	.prn(vcc));
defparam \lsfr_reg[8] .is_wysiwyg = "true";
defparam \lsfr_reg[8] .power_up = "low";

cycloneive_lcell_comb \lsfr_reg~6 (
	.dataa(\lsfr_reg[8]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(reset_n),
	.cin(gnd),
	.combout(\lsfr_reg~6_combout ),
	.cout());
defparam \lsfr_reg~6 .lut_mask = 16'hAAFF;
defparam \lsfr_reg~6 .sum_lutc_input = "datac";

dffeas \lsfr_reg[7] (
	.clk(clk),
	.d(\lsfr_reg~8_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\lsfr_reg[7]~q ),
	.prn(vcc));
defparam \lsfr_reg[7] .is_wysiwyg = "true";
defparam \lsfr_reg[7] .power_up = "low";

cycloneive_lcell_comb \lsfr_reg~7 (
	.dataa(reset_n),
	.datab(\lsfr_reg[7]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\lsfr_reg~7_combout ),
	.cout());
defparam \lsfr_reg~7 .lut_mask = 16'hEEEE;
defparam \lsfr_reg~7 .sum_lutc_input = "datac";

dffeas \lsfr_reg[6] (
	.clk(clk),
	.d(\lsfr_reg~9_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\lsfr_reg[6]~q ),
	.prn(vcc));
defparam \lsfr_reg[6] .is_wysiwyg = "true";
defparam \lsfr_reg[6] .power_up = "low";

cycloneive_lcell_comb \lsfr_reg~8 (
	.dataa(\lsfr_reg[6]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(reset_n),
	.cin(gnd),
	.combout(\lsfr_reg~8_combout ),
	.cout());
defparam \lsfr_reg~8 .lut_mask = 16'hAAFF;
defparam \lsfr_reg~8 .sum_lutc_input = "datac";

dffeas \lsfr_reg[5] (
	.clk(clk),
	.d(\lsfr_reg~10_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\lsfr_reg[5]~q ),
	.prn(vcc));
defparam \lsfr_reg[5] .is_wysiwyg = "true";
defparam \lsfr_reg[5] .power_up = "low";

cycloneive_lcell_comb \lsfr_reg~9 (
	.dataa(\lsfr_reg[5]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(reset_n),
	.cin(gnd),
	.combout(\lsfr_reg~9_combout ),
	.cout());
defparam \lsfr_reg~9 .lut_mask = 16'hAAFF;
defparam \lsfr_reg~9 .sum_lutc_input = "datac";

dffeas \lsfr_reg[4] (
	.clk(clk),
	.d(\lsfr_reg~11_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\lsfr_reg[4]~q ),
	.prn(vcc));
defparam \lsfr_reg[4] .is_wysiwyg = "true";
defparam \lsfr_reg[4] .power_up = "low";

cycloneive_lcell_comb \lsfr_reg~10 (
	.dataa(reset_n),
	.datab(\lsfr_reg[4]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\lsfr_reg~10_combout ),
	.cout());
defparam \lsfr_reg~10 .lut_mask = 16'hEEEE;
defparam \lsfr_reg~10 .sum_lutc_input = "datac";

dffeas \lsfr_reg[3] (
	.clk(clk),
	.d(\lsfr_reg~12_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\lsfr_reg[3]~q ),
	.prn(vcc));
defparam \lsfr_reg[3] .is_wysiwyg = "true";
defparam \lsfr_reg[3] .power_up = "low";

cycloneive_lcell_comb \lsfr_reg~11 (
	.dataa(\lsfr_reg[3]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(reset_n),
	.cin(gnd),
	.combout(\lsfr_reg~11_combout ),
	.cout());
defparam \lsfr_reg~11 .lut_mask = 16'hAAFF;
defparam \lsfr_reg~11 .sum_lutc_input = "datac";

dffeas \lsfr_reg[2] (
	.clk(clk),
	.d(\lsfr_reg~13_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\lsfr_reg[2]~q ),
	.prn(vcc));
defparam \lsfr_reg[2] .is_wysiwyg = "true";
defparam \lsfr_reg[2] .power_up = "low";

cycloneive_lcell_comb \lsfr_reg~12 (
	.dataa(\lsfr_reg[2]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(reset_n),
	.cin(gnd),
	.combout(\lsfr_reg~12_combout ),
	.cout());
defparam \lsfr_reg~12 .lut_mask = 16'hAAFF;
defparam \lsfr_reg~12 .sum_lutc_input = "datac";

dffeas \lsfr_reg[1] (
	.clk(clk),
	.d(\lsfr_reg~14_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\lsfr_reg[1]~q ),
	.prn(vcc));
defparam \lsfr_reg[1] .is_wysiwyg = "true";
defparam \lsfr_reg[1] .power_up = "low";

cycloneive_lcell_comb \lsfr_reg~13 (
	.dataa(\lsfr_reg[1]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(reset_n),
	.cin(gnd),
	.combout(\lsfr_reg~13_combout ),
	.cout());
defparam \lsfr_reg~13 .lut_mask = 16'hAAFF;
defparam \lsfr_reg~13 .sum_lutc_input = "datac";

cycloneive_lcell_comb \lsfr_reg~14 (
	.dataa(reset_n),
	.datab(\lsfr_reg[0]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\lsfr_reg~14_combout ),
	.cout());
defparam \lsfr_reg~14 .lut_mask = 16'hEEEE;
defparam \lsfr_reg~14 .sum_lutc_input = "datac";

cycloneive_lcell_comb \lsfr_reg~15 (
	.dataa(\lsfr_reg[15]~q ),
	.datab(\lsfr_reg[14]~q ),
	.datac(\lsfr_reg[12]~q ),
	.datad(\lsfr_reg[3]~q ),
	.cin(gnd),
	.combout(\lsfr_reg~15_combout ),
	.cout());
defparam \lsfr_reg~15 .lut_mask = 16'h6996;
defparam \lsfr_reg~15 .sum_lutc_input = "datac";

dffeas \dxxrv[4] (
	.clk(clk),
	.d(\dxxrv[4]~9_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(sin_o_9),
	.q(dxxrv_4),
	.prn(vcc));
defparam \dxxrv[4] .is_wysiwyg = "true";
defparam \dxxrv[4] .power_up = "low";

cycloneive_lcell_comb \lsfr_reg~0 (
	.dataa(\lsfr_reg[14]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(reset_n),
	.cin(gnd),
	.combout(\lsfr_reg~0_combout ),
	.cout());
defparam \lsfr_reg~0 .lut_mask = 16'hAAFF;
defparam \lsfr_reg~0 .sum_lutc_input = "datac";

dffeas \lsfr_reg[15] (
	.clk(clk),
	.d(\lsfr_reg~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\lsfr_reg[15]~q ),
	.prn(vcc));
defparam \lsfr_reg[15] .is_wysiwyg = "true";
defparam \lsfr_reg[15] .power_up = "low";

cycloneive_lcell_comb \lsfr_reg~4 (
	.dataa(\lsfr_reg[10]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(reset_n),
	.cin(gnd),
	.combout(\lsfr_reg~4_combout ),
	.cout());
defparam \lsfr_reg~4 .lut_mask = 16'hAAFF;
defparam \lsfr_reg~4 .sum_lutc_input = "datac";

dffeas \lsfr_reg[11] (
	.clk(clk),
	.d(\lsfr_reg~4_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\lsfr_reg[11]~q ),
	.prn(vcc));
defparam \lsfr_reg[11] .is_wysiwyg = "true";
defparam \lsfr_reg[11] .power_up = "low";

cycloneive_lcell_comb \dxxrv[0]~2 (
	.dataa(\lsfr_reg[15]~q ),
	.datab(\lsfr_reg[11]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\dxxrv[0]~2_cout ));
defparam \dxxrv[0]~2 .lut_mask = 16'h00EE;
defparam \dxxrv[0]~2 .sum_lutc_input = "datac";

cycloneive_lcell_comb \dxxrv[1]~4 (
	.dataa(\lsfr_reg[12]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\dxxrv[0]~2_cout ),
	.combout(),
	.cout(\dxxrv[1]~4_cout ));
defparam \dxxrv[1]~4 .lut_mask = 16'h005F;
defparam \dxxrv[1]~4 .sum_lutc_input = "cin";

cycloneive_lcell_comb \dxxrv[2]~6 (
	.dataa(\lsfr_reg[13]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\dxxrv[1]~4_cout ),
	.combout(),
	.cout(\dxxrv[2]~6_cout ));
defparam \dxxrv[2]~6 .lut_mask = 16'h00AF;
defparam \dxxrv[2]~6 .sum_lutc_input = "cin";

cycloneive_lcell_comb \dxxrv[3]~8 (
	.dataa(\lsfr_reg[14]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\dxxrv[2]~6_cout ),
	.combout(),
	.cout(\dxxrv[3]~8_cout ));
defparam \dxxrv[3]~8 .lut_mask = 16'h005F;
defparam \dxxrv[3]~8 .sum_lutc_input = "cin";

cycloneive_lcell_comb \dxxrv[4]~9 (
	.dataa(\lsfr_reg[15]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(\dxxrv[3]~8_cout ),
	.combout(\dxxrv[4]~9_combout ),
	.cout());
defparam \dxxrv[4]~9 .lut_mask = 16'h5A5A;
defparam \dxxrv[4]~9 .sum_lutc_input = "cin";

endmodule

module oc_asj_gar (
	rom_add_0,
	rom_add_1,
	rom_add_2,
	rom_add_3,
	rom_add_4,
	rom_add_5,
	rom_add_6,
	rom_add_7,
	rom_add_8,
	rom_add_9,
	rom_add_10,
	rom_add_11,
	rom_add_12,
	sin_o_9,
	dxxpdo_5,
	dxxpdo_18,
	dxxpdo_6,
	dxxpdo_7,
	dxxpdo_8,
	dxxpdo_9,
	dxxpdo_10,
	dxxpdo_11,
	dxxpdo_12,
	dxxpdo_13,
	dxxpdo_14,
	dxxpdo_15,
	dxxpdo_16,
	dxxpdo_17,
	reset_n,
	clk)/* synthesis synthesis_greybox=1 */;
output 	rom_add_0;
output 	rom_add_1;
output 	rom_add_2;
output 	rom_add_3;
output 	rom_add_4;
output 	rom_add_5;
output 	rom_add_6;
output 	rom_add_7;
output 	rom_add_8;
output 	rom_add_9;
output 	rom_add_10;
output 	rom_add_11;
output 	rom_add_12;
input 	sin_o_9;
input 	dxxpdo_5;
input 	dxxpdo_18;
input 	dxxpdo_6;
input 	dxxpdo_7;
input 	dxxpdo_8;
input 	dxxpdo_9;
input 	dxxpdo_10;
input 	dxxpdo_11;
input 	dxxpdo_12;
input 	dxxpdo_13;
input 	dxxpdo_14;
input 	dxxpdo_15;
input 	dxxpdo_16;
input 	dxxpdo_17;
input 	reset_n;
input 	clk;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \rom_add~0_combout ;
wire \rom_add~1_combout ;
wire \rom_add~2_combout ;
wire \rom_add~3_combout ;
wire \rom_add~4_combout ;
wire \rom_add~5_combout ;
wire \rom_add~6_combout ;
wire \rom_add~7_combout ;
wire \rom_add~8_combout ;
wire \rom_add~9_combout ;
wire \rom_add~10_combout ;
wire \rom_add~11_combout ;
wire \rom_add~12_combout ;


dffeas \rom_add[0] (
	.clk(clk),
	.d(\rom_add~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(sin_o_9),
	.q(rom_add_0),
	.prn(vcc));
defparam \rom_add[0] .is_wysiwyg = "true";
defparam \rom_add[0] .power_up = "low";

dffeas \rom_add[1] (
	.clk(clk),
	.d(\rom_add~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(sin_o_9),
	.q(rom_add_1),
	.prn(vcc));
defparam \rom_add[1] .is_wysiwyg = "true";
defparam \rom_add[1] .power_up = "low";

dffeas \rom_add[2] (
	.clk(clk),
	.d(\rom_add~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(sin_o_9),
	.q(rom_add_2),
	.prn(vcc));
defparam \rom_add[2] .is_wysiwyg = "true";
defparam \rom_add[2] .power_up = "low";

dffeas \rom_add[3] (
	.clk(clk),
	.d(\rom_add~3_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(sin_o_9),
	.q(rom_add_3),
	.prn(vcc));
defparam \rom_add[3] .is_wysiwyg = "true";
defparam \rom_add[3] .power_up = "low";

dffeas \rom_add[4] (
	.clk(clk),
	.d(\rom_add~4_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(sin_o_9),
	.q(rom_add_4),
	.prn(vcc));
defparam \rom_add[4] .is_wysiwyg = "true";
defparam \rom_add[4] .power_up = "low";

dffeas \rom_add[5] (
	.clk(clk),
	.d(\rom_add~5_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(sin_o_9),
	.q(rom_add_5),
	.prn(vcc));
defparam \rom_add[5] .is_wysiwyg = "true";
defparam \rom_add[5] .power_up = "low";

dffeas \rom_add[6] (
	.clk(clk),
	.d(\rom_add~6_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(sin_o_9),
	.q(rom_add_6),
	.prn(vcc));
defparam \rom_add[6] .is_wysiwyg = "true";
defparam \rom_add[6] .power_up = "low";

dffeas \rom_add[7] (
	.clk(clk),
	.d(\rom_add~7_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(sin_o_9),
	.q(rom_add_7),
	.prn(vcc));
defparam \rom_add[7] .is_wysiwyg = "true";
defparam \rom_add[7] .power_up = "low";

dffeas \rom_add[8] (
	.clk(clk),
	.d(\rom_add~8_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(sin_o_9),
	.q(rom_add_8),
	.prn(vcc));
defparam \rom_add[8] .is_wysiwyg = "true";
defparam \rom_add[8] .power_up = "low";

dffeas \rom_add[9] (
	.clk(clk),
	.d(\rom_add~9_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(sin_o_9),
	.q(rom_add_9),
	.prn(vcc));
defparam \rom_add[9] .is_wysiwyg = "true";
defparam \rom_add[9] .power_up = "low";

dffeas \rom_add[10] (
	.clk(clk),
	.d(\rom_add~10_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(sin_o_9),
	.q(rom_add_10),
	.prn(vcc));
defparam \rom_add[10] .is_wysiwyg = "true";
defparam \rom_add[10] .power_up = "low";

dffeas \rom_add[11] (
	.clk(clk),
	.d(\rom_add~11_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(sin_o_9),
	.q(rom_add_11),
	.prn(vcc));
defparam \rom_add[11] .is_wysiwyg = "true";
defparam \rom_add[11] .power_up = "low";

dffeas \rom_add[12] (
	.clk(clk),
	.d(\rom_add~12_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(sin_o_9),
	.q(rom_add_12),
	.prn(vcc));
defparam \rom_add[12] .is_wysiwyg = "true";
defparam \rom_add[12] .power_up = "low";

cycloneive_lcell_comb \rom_add~0 (
	.dataa(gnd),
	.datab(gnd),
	.datac(dxxpdo_5),
	.datad(dxxpdo_18),
	.cin(gnd),
	.combout(\rom_add~0_combout ),
	.cout());
defparam \rom_add~0 .lut_mask = 16'h0FF0;
defparam \rom_add~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \rom_add~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(dxxpdo_18),
	.datad(dxxpdo_6),
	.cin(gnd),
	.combout(\rom_add~1_combout ),
	.cout());
defparam \rom_add~1 .lut_mask = 16'h0FF0;
defparam \rom_add~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \rom_add~2 (
	.dataa(gnd),
	.datab(gnd),
	.datac(dxxpdo_18),
	.datad(dxxpdo_7),
	.cin(gnd),
	.combout(\rom_add~2_combout ),
	.cout());
defparam \rom_add~2 .lut_mask = 16'h0FF0;
defparam \rom_add~2 .sum_lutc_input = "datac";

cycloneive_lcell_comb \rom_add~3 (
	.dataa(gnd),
	.datab(gnd),
	.datac(dxxpdo_18),
	.datad(dxxpdo_8),
	.cin(gnd),
	.combout(\rom_add~3_combout ),
	.cout());
defparam \rom_add~3 .lut_mask = 16'h0FF0;
defparam \rom_add~3 .sum_lutc_input = "datac";

cycloneive_lcell_comb \rom_add~4 (
	.dataa(gnd),
	.datab(gnd),
	.datac(dxxpdo_18),
	.datad(dxxpdo_9),
	.cin(gnd),
	.combout(\rom_add~4_combout ),
	.cout());
defparam \rom_add~4 .lut_mask = 16'h0FF0;
defparam \rom_add~4 .sum_lutc_input = "datac";

cycloneive_lcell_comb \rom_add~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(dxxpdo_18),
	.datad(dxxpdo_10),
	.cin(gnd),
	.combout(\rom_add~5_combout ),
	.cout());
defparam \rom_add~5 .lut_mask = 16'h0FF0;
defparam \rom_add~5 .sum_lutc_input = "datac";

cycloneive_lcell_comb \rom_add~6 (
	.dataa(gnd),
	.datab(gnd),
	.datac(dxxpdo_18),
	.datad(dxxpdo_11),
	.cin(gnd),
	.combout(\rom_add~6_combout ),
	.cout());
defparam \rom_add~6 .lut_mask = 16'h0FF0;
defparam \rom_add~6 .sum_lutc_input = "datac";

cycloneive_lcell_comb \rom_add~7 (
	.dataa(gnd),
	.datab(gnd),
	.datac(dxxpdo_18),
	.datad(dxxpdo_12),
	.cin(gnd),
	.combout(\rom_add~7_combout ),
	.cout());
defparam \rom_add~7 .lut_mask = 16'h0FF0;
defparam \rom_add~7 .sum_lutc_input = "datac";

cycloneive_lcell_comb \rom_add~8 (
	.dataa(gnd),
	.datab(gnd),
	.datac(dxxpdo_18),
	.datad(dxxpdo_13),
	.cin(gnd),
	.combout(\rom_add~8_combout ),
	.cout());
defparam \rom_add~8 .lut_mask = 16'h0FF0;
defparam \rom_add~8 .sum_lutc_input = "datac";

cycloneive_lcell_comb \rom_add~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(dxxpdo_18),
	.datad(dxxpdo_14),
	.cin(gnd),
	.combout(\rom_add~9_combout ),
	.cout());
defparam \rom_add~9 .lut_mask = 16'h0FF0;
defparam \rom_add~9 .sum_lutc_input = "datac";

cycloneive_lcell_comb \rom_add~10 (
	.dataa(gnd),
	.datab(gnd),
	.datac(dxxpdo_18),
	.datad(dxxpdo_15),
	.cin(gnd),
	.combout(\rom_add~10_combout ),
	.cout());
defparam \rom_add~10 .lut_mask = 16'h0FF0;
defparam \rom_add~10 .sum_lutc_input = "datac";

cycloneive_lcell_comb \rom_add~11 (
	.dataa(gnd),
	.datab(gnd),
	.datac(dxxpdo_18),
	.datad(dxxpdo_16),
	.cin(gnd),
	.combout(\rom_add~11_combout ),
	.cout());
defparam \rom_add~11 .lut_mask = 16'h0FF0;
defparam \rom_add~11 .sum_lutc_input = "datac";

cycloneive_lcell_comb \rom_add~12 (
	.dataa(gnd),
	.datab(gnd),
	.datac(dxxpdo_18),
	.datad(dxxpdo_17),
	.cin(gnd),
	.combout(\rom_add~12_combout ),
	.cout());
defparam \rom_add~12 .lut_mask = 16'h0FF0;
defparam \rom_add~12 .sum_lutc_input = "datac";

endmodule

module oc_asj_nco_as_m_cen (
	q_a_0,
	q_a_1,
	q_a_2,
	q_a_3,
	q_a_4,
	q_a_5,
	q_a_6,
	q_a_7,
	q_a_8,
	rom_add_0,
	rom_add_1,
	rom_add_2,
	rom_add_3,
	rom_add_4,
	rom_add_5,
	rom_add_6,
	rom_add_7,
	rom_add_8,
	rom_add_9,
	rom_add_10,
	rom_add_11,
	rom_add_12,
	clk,
	clken)/* synthesis synthesis_greybox=1 */;
output 	q_a_0;
output 	q_a_1;
output 	q_a_2;
output 	q_a_3;
output 	q_a_4;
output 	q_a_5;
output 	q_a_6;
output 	q_a_7;
output 	q_a_8;
input 	rom_add_0;
input 	rom_add_1;
input 	rom_add_2;
input 	rom_add_3;
input 	rom_add_4;
input 	rom_add_5;
input 	rom_add_6;
input 	rom_add_7;
input 	rom_add_8;
input 	rom_add_9;
input 	rom_add_10;
input 	rom_add_11;
input 	rom_add_12;
input 	clk;
input 	clken;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



oc_altsyncram_1 altsyncram_component0(
	.q_a({q_a_8,q_a_7,q_a_6,q_a_5,q_a_4,q_a_3,q_a_2,q_a_1,q_a_0}),
	.address_a({rom_add_12,rom_add_11,rom_add_10,rom_add_9,rom_add_8,rom_add_7,rom_add_6,rom_add_5,rom_add_4,rom_add_3,rom_add_2,rom_add_1,rom_add_0}),
	.clock0(clk),
	.clocken0(clken));

endmodule

module oc_altsyncram_1 (
	q_a,
	address_a,
	clock0,
	clocken0)/* synthesis synthesis_greybox=1 */;
output 	[8:0] q_a;
input 	[12:0] address_a;
input 	clock0;
input 	clocken0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



oc_altsyncram_ro81 auto_generated(
	.q_a({q_a[8],q_a[7],q_a[6],q_a[5],q_a[4],q_a[3],q_a[2],q_a[1],q_a[0]}),
	.address_a({address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.clock0(clock0),
	.clocken0(clocken0));

endmodule

module oc_altsyncram_ro81 (
	q_a,
	address_a,
	clock0,
	clocken0)/* synthesis synthesis_greybox=1 */;
output 	[8:0] q_a;
input 	[12:0] address_a;
input 	clock0;
input 	clocken0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;


wire [143:0] ram_block1a0_PORTADATAOUT_bus;
wire [143:0] ram_block1a1_PORTADATAOUT_bus;
wire [143:0] ram_block1a2_PORTADATAOUT_bus;
wire [143:0] ram_block1a3_PORTADATAOUT_bus;
wire [143:0] ram_block1a4_PORTADATAOUT_bus;
wire [143:0] ram_block1a5_PORTADATAOUT_bus;
wire [143:0] ram_block1a6_PORTADATAOUT_bus;
wire [143:0] ram_block1a7_PORTADATAOUT_bus;
wire [143:0] ram_block1a8_PORTADATAOUT_bus;

assign q_a[0] = ram_block1a0_PORTADATAOUT_bus[0];

assign q_a[1] = ram_block1a1_PORTADATAOUT_bus[0];

assign q_a[2] = ram_block1a2_PORTADATAOUT_bus[0];

assign q_a[3] = ram_block1a3_PORTADATAOUT_bus[0];

assign q_a[4] = ram_block1a4_PORTADATAOUT_bus[0];

assign q_a[5] = ram_block1a5_PORTADATAOUT_bus[0];

assign q_a[6] = ram_block1a6_PORTADATAOUT_bus[0];

assign q_a[7] = ram_block1a7_PORTADATAOUT_bus[0];

assign q_a[8] = ram_block1a8_PORTADATAOUT_bus[0];

cycloneive_ram_block ram_block1a0(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a0_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a0.clk0_core_clock_enable = "ena0";
defparam ram_block1a0.clk0_input_clock_enable = "ena0";
defparam ram_block1a0.clk0_output_clock_enable = "ena0";
defparam ram_block1a0.data_interleave_offset_in_bits = 1;
defparam ram_block1a0.data_interleave_width_in_bits = 1;
defparam ram_block1a0.init_file = "oc_sin.hex";
defparam ram_block1a0.init_file_layout = "port_a";
defparam ram_block1a0.logical_ram_name = "oc_st:oc_st_inst|asj_nco_as_m_cen:ux0120|altsyncram:altsyncram_component0|altsyncram_ro81:auto_generated|ALTSYNCRAM";
defparam ram_block1a0.operation_mode = "rom";
defparam ram_block1a0.port_a_address_clear = "none";
defparam ram_block1a0.port_a_address_width = 13;
defparam ram_block1a0.port_a_data_out_clear = "none";
defparam ram_block1a0.port_a_data_out_clock = "clock0";
defparam ram_block1a0.port_a_data_width = 1;
defparam ram_block1a0.port_a_first_address = 0;
defparam ram_block1a0.port_a_first_bit_number = 0;
defparam ram_block1a0.port_a_last_address = 8191;
defparam ram_block1a0.port_a_logical_ram_depth = 8192;
defparam ram_block1a0.port_a_logical_ram_width = 9;
defparam ram_block1a0.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a0.ram_block_type = "auto";
defparam ram_block1a0.mem_init3 = 2048'hFFFFFE0000000FFFFFFF80000003FFFFFFC0000001FFFFFFE0000001FFFFFFE0000000FFFFFFF0000000FFFFFFF0000001FFFFFFE0000001FFFFFFE0000003FFFFFFC0000007FFFFFF8000000FFFFFFE0000001FFFFFFC0000007FFFFFF0000001FFFFFFC0000007FFFFFE0000003FFFFFF8000001FFFFFFC000000FFFFFFE0000007FFFFFF0000003FFFFFF0000003FFFFFF0000001FFFFFF8000001FFFFFF0000003FFFFFF0000003FFFFFF0000007FFFFFE0000007FFFFFC000000FFFFFF8000003FFFFFF0000007FFFFFC000000FFFFFF8000003FFFFFE000000FFFFFF8000003FFFFFE000000FFFFFF8000007FFFFFC000001FFFFFE000000FFFFFF8000;
defparam ram_block1a0.mem_init2 = 2048'h007FFFFFC000003FFFFFE000001FFFFFE000000FFFFFF000000FFFFFF8000007FFFFF8000007FFFFF8000007FFFFF8000007FFFFF8000007FFFFF8000007FFFFF000000FFFFFF000000FFFFFE000001FFFFFE000003FFFFFC000007FFFFF800000FFFFFF000001FFFFFC000003FFFFF800000FFFFFF000001FFFFFC000007FFFFF000001FFFFFE000003FFFFF800000FFFFFE000003FFFFF800000FFFFFC000007FFFFF000001FFFFFC00000FFFFFE000003FFFFF800001FFFFFC00000FFFFFE000003FFFFF000001FFFFF800000FFFFFC000007FFFFE000007FFFFF000003FFFFF000001FFFFF800001FFFFFC00000FFFFFC00000FFFFFC00000FFFFFE00000;
defparam ram_block1a0.mem_init1 = 2048'h7FFFFE000007FFFFE000007FFFFE000007FFFFE000007FFFFE000007FFFFE00000FFFFFC00000FFFFFC00000FFFFFC00001FFFFF800001FFFFF800003FFFFF000003FFFFE000007FFFFE00000FFFFFC00001FFFFF800003FFFFF000003FFFFE000007FFFFC00001FFFFF800003FFFFF000007FFFFE00000FFFFF800001FFFFF000007FFFFE00000FFFFF800003FFFFF000007FFFFC00001FFFFF800003FFFFE00000FFFFF800001FFFFF000007FFFFC00001FFFFF000007FFFFC00001FFFFF000007FFFFC00001FFFFF800003FFFFC00001FFFFF000007FFFFC00001FFFFF000007FFFFC00001FFFFF000007FFFFC00003FFFFE00000FFFFF800003FFFFE0000;
defparam ram_block1a0.mem_init0 = 2048'h1FFFFF000007FFFFC00001FFFFE00000FFFFF800003FFFFC00001FFFFF000007FFFF800003FFFFE00001FFFFF000007FFFF800003FFFFE00001FFFFF000007FFFF800003FFFFE00001FFFFF00000FFFFF800003FFFFC00001FFFFE00000FFFFF800007FFFFC00003FFFFE00001FFFFF00000FFFFF800007FFFFC00001FFFFE00000FFFFF000007FFFF800003FFFFC00001FFFFE00001FFFFF00000FFFFF800007FFFFC00003FFFFE00001FFFFF00000FFFFF800007FFFF800003FFFFC00001FFFFE00000FFFFF000007FFFF800007FFFFC00003FFFFE00001FFFFE00000FFFFF000007FFFF800003FFFFC00003FFFFE00001FFFFF00000FFFFF000007FFFF800;

cycloneive_ram_block ram_block1a1(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a1_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a1.clk0_core_clock_enable = "ena0";
defparam ram_block1a1.clk0_input_clock_enable = "ena0";
defparam ram_block1a1.clk0_output_clock_enable = "ena0";
defparam ram_block1a1.data_interleave_offset_in_bits = 1;
defparam ram_block1a1.data_interleave_width_in_bits = 1;
defparam ram_block1a1.init_file = "oc_sin.hex";
defparam ram_block1a1.init_file_layout = "port_a";
defparam ram_block1a1.logical_ram_name = "oc_st:oc_st_inst|asj_nco_as_m_cen:ux0120|altsyncram:altsyncram_component0|altsyncram_ro81:auto_generated|ALTSYNCRAM";
defparam ram_block1a1.operation_mode = "rom";
defparam ram_block1a1.port_a_address_clear = "none";
defparam ram_block1a1.port_a_address_width = 13;
defparam ram_block1a1.port_a_data_out_clear = "none";
defparam ram_block1a1.port_a_data_out_clock = "clock0";
defparam ram_block1a1.port_a_data_width = 1;
defparam ram_block1a1.port_a_first_address = 0;
defparam ram_block1a1.port_a_first_bit_number = 1;
defparam ram_block1a1.port_a_last_address = 8191;
defparam ram_block1a1.port_a_logical_ram_depth = 8192;
defparam ram_block1a1.port_a_logical_ram_width = 9;
defparam ram_block1a1.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a1.ram_block_type = "auto";
defparam ram_block1a1.mem_init3 = 2048'h0000000000000FFFFFFFFFFFFFFC00000000000001FFFFFFFFFFFFFE00000000000000FFFFFFFFFFFFFF00000000000001FFFFFFFFFFFFFE00000000000003FFFFFFFFFFFFF80000000000000FFFFFFFFFFFFFE00000000000007FFFFFFFFFFFFE00000000000007FFFFFFFFFFFFC0000000000001FFFFFFFFFFFFF00000000000007FFFFFFFFFFFFC0000000000003FFFFFFFFFFFFE0000000000001FFFFFFFFFFFFC0000000000003FFFFFFFFFFFF80000000000007FFFFFFFFFFFF0000000000003FFFFFFFFFFFF8000000000000FFFFFFFFFFFFC000000000000FFFFFFFFFFFFC000000000000FFFFFFFFFFFF8000000000001FFFFFFFFFFFF0000000000;
defparam ram_block1a1.mem_init2 = 2048'h007FFFFFFFFFFFC000000000001FFFFFFFFFFFF000000000000FFFFFFFFFFFF8000000000007FFFFFFFFFFF8000000000007FFFFFFFFFFF8000000000007FFFFFFFFFFF000000000000FFFFFFFFFFFE000000000003FFFFFFFFFFF800000000000FFFFFFFFFFFE000000000003FFFFFFFFFFF000000000001FFFFFFFFFFF800000000001FFFFFFFFFFFC00000000000FFFFFFFFFFFC00000000000FFFFFFFFFFF800000000001FFFFFFFFFFF000000000003FFFFFFFFFFE00000000000FFFFFFFFFFFC00000000001FFFFFFFFFFF000000000007FFFFFFFFFF800000000003FFFFFFFFFFE00000000001FFFFFFFFFFF00000000000FFFFFFFFFFF00000000000;
defparam ram_block1a1.mem_init1 = 2048'h7FFFFFFFFFF800000000007FFFFFFFFFF800000000007FFFFFFFFFF80000000000FFFFFFFFFFF00000000000FFFFFFFFFFE00000000001FFFFFFFFFFC00000000003FFFFFFFFFF80000000000FFFFFFFFFFE00000000003FFFFFFFFFFC00000000007FFFFFFFFFE00000000003FFFFFFFFFF80000000000FFFFFFFFFFE00000000007FFFFFFFFFF00000000003FFFFFFFFFF80000000001FFFFFFFFFFC0000000000FFFFFFFFFFE00000000007FFFFFFFFFE00000000007FFFFFFFFFE00000000007FFFFFFFFFE00000000003FFFFFFFFFE00000000007FFFFFFFFFE00000000007FFFFFFFFFE00000000007FFFFFFFFFC0000000000FFFFFFFFFFC000000000;
defparam ram_block1a1.mem_init0 = 2048'h1FFFFFFFFFF80000000001FFFFFFFFFF00000000003FFFFFFFFFE00000000007FFFFFFFFFC0000000001FFFFFFFFFF80000000003FFFFFFFFFE00000000007FFFFFFFFFC0000000001FFFFFFFFFF00000000003FFFFFFFFFE0000000000FFFFFFFFFF80000000003FFFFFFFFFE0000000000FFFFFFFFFF80000000001FFFFFFFFFF00000000007FFFFFFFFFC0000000001FFFFFFFFFE0000000000FFFFFFFFFF80000000003FFFFFFFFFE0000000000FFFFFFFFFF80000000003FFFFFFFFFE0000000000FFFFFFFFFF80000000007FFFFFFFFFC0000000001FFFFFFFFFF00000000007FFFFFFFFFC0000000003FFFFFFFFFE0000000000FFFFFFFFFF80000000;

cycloneive_ram_block ram_block1a2(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a2_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a2.clk0_core_clock_enable = "ena0";
defparam ram_block1a2.clk0_input_clock_enable = "ena0";
defparam ram_block1a2.clk0_output_clock_enable = "ena0";
defparam ram_block1a2.data_interleave_offset_in_bits = 1;
defparam ram_block1a2.data_interleave_width_in_bits = 1;
defparam ram_block1a2.init_file = "oc_sin.hex";
defparam ram_block1a2.init_file_layout = "port_a";
defparam ram_block1a2.logical_ram_name = "oc_st:oc_st_inst|asj_nco_as_m_cen:ux0120|altsyncram:altsyncram_component0|altsyncram_ro81:auto_generated|ALTSYNCRAM";
defparam ram_block1a2.operation_mode = "rom";
defparam ram_block1a2.port_a_address_clear = "none";
defparam ram_block1a2.port_a_address_width = 13;
defparam ram_block1a2.port_a_data_out_clear = "none";
defparam ram_block1a2.port_a_data_out_clock = "clock0";
defparam ram_block1a2.port_a_data_width = 1;
defparam ram_block1a2.port_a_first_address = 0;
defparam ram_block1a2.port_a_first_bit_number = 2;
defparam ram_block1a2.port_a_last_address = 8191;
defparam ram_block1a2.port_a_logical_ram_depth = 8192;
defparam ram_block1a2.port_a_logical_ram_width = 9;
defparam ram_block1a2.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a2.ram_block_type = "auto";
defparam ram_block1a2.mem_init3 = 2048'h0000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFE0000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000001FFFFFFFFFFFFFFFFFFFFFF;
defparam ram_block1a2.mem_init2 = 2048'hFF8000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFF8000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFF000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFF000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFE00000000000000000000001FFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000FFFFFFFFFFFFFFFFFFFFFFE00000000000000000000003FFFFFFFFFFFFFFFFFFFFFF00000000000000000000001FFFFFFFFFFFFFFFFFFFFFF80000000000000000000003FFFFFFFFFFFFFFFFFFFFFE0000000000000000000000FFFFFFFFFFFFFFFFFFFFFF;
defparam ram_block1a2.mem_init1 = 2048'h80000000000000000000007FFFFFFFFFFFFFFFFFFFFF8000000000000000000000FFFFFFFFFFFFFFFFFFFFFF0000000000000000000001FFFFFFFFFFFFFFFFFFFFFC000000000000000000000FFFFFFFFFFFFFFFFFFFFFC0000000000000000000007FFFFFFFFFFFFFFFFFFFFC000000000000000000000FFFFFFFFFFFFFFFFFFFFF8000000000000000000003FFFFFFFFFFFFFFFFFFFFE000000000000000000000FFFFFFFFFFFFFFFFFFFFF8000000000000000000007FFFFFFFFFFFFFFFFFFFF8000000000000000000003FFFFFFFFFFFFFFFFFFFF8000000000000000000007FFFFFFFFFFFFFFFFFFFF800000000000000000000FFFFFFFFFFFFFFFFFFFF;
defparam ram_block1a2.mem_init0 = 2048'hE000000000000000000001FFFFFFFFFFFFFFFFFFFFC000000000000000000007FFFFFFFFFFFFFFFFFFFE000000000000000000003FFFFFFFFFFFFFFFFFFFF800000000000000000001FFFFFFFFFFFFFFFFFFFFC00000000000000000000FFFFFFFFFFFFFFFFFFFFC00000000000000000000FFFFFFFFFFFFFFFFFFFFE000000000000000000007FFFFFFFFFFFFFFFFFFFE00000000000000000000FFFFFFFFFFFFFFFFFFFFC00000000000000000000FFFFFFFFFFFFFFFFFFFFC00000000000000000000FFFFFFFFFFFFFFFFFFFF800000000000000000001FFFFFFFFFFFFFFFFFFFF800000000000000000003FFFFFFFFFFFFFFFFFFFF000000000000000000;

cycloneive_ram_block ram_block1a3(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a3_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a3.clk0_core_clock_enable = "ena0";
defparam ram_block1a3.clk0_input_clock_enable = "ena0";
defparam ram_block1a3.clk0_output_clock_enable = "ena0";
defparam ram_block1a3.data_interleave_offset_in_bits = 1;
defparam ram_block1a3.data_interleave_width_in_bits = 1;
defparam ram_block1a3.init_file = "oc_sin.hex";
defparam ram_block1a3.init_file_layout = "port_a";
defparam ram_block1a3.logical_ram_name = "oc_st:oc_st_inst|asj_nco_as_m_cen:ux0120|altsyncram:altsyncram_component0|altsyncram_ro81:auto_generated|ALTSYNCRAM";
defparam ram_block1a3.operation_mode = "rom";
defparam ram_block1a3.port_a_address_clear = "none";
defparam ram_block1a3.port_a_address_width = 13;
defparam ram_block1a3.port_a_data_out_clear = "none";
defparam ram_block1a3.port_a_data_out_clock = "clock0";
defparam ram_block1a3.port_a_data_width = 1;
defparam ram_block1a3.port_a_first_address = 0;
defparam ram_block1a3.port_a_first_bit_number = 3;
defparam ram_block1a3.port_a_last_address = 8191;
defparam ram_block1a3.port_a_logical_ram_depth = 8192;
defparam ram_block1a3.port_a_logical_ram_width = 9;
defparam ram_block1a3.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a3.ram_block_type = "auto";
defparam ram_block1a3.mem_init3 = 2048'hFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFF;
defparam ram_block1a3.mem_init2 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFE0000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000;
defparam ram_block1a3.mem_init1 = 2048'h00000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000;
defparam ram_block1a3.mem_init0 = 2048'h0000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000000000000000000000000000000000;

cycloneive_ram_block ram_block1a4(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a4_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a4.clk0_core_clock_enable = "ena0";
defparam ram_block1a4.clk0_input_clock_enable = "ena0";
defparam ram_block1a4.clk0_output_clock_enable = "ena0";
defparam ram_block1a4.data_interleave_offset_in_bits = 1;
defparam ram_block1a4.data_interleave_width_in_bits = 1;
defparam ram_block1a4.init_file = "oc_sin.hex";
defparam ram_block1a4.init_file_layout = "port_a";
defparam ram_block1a4.logical_ram_name = "oc_st:oc_st_inst|asj_nco_as_m_cen:ux0120|altsyncram:altsyncram_component0|altsyncram_ro81:auto_generated|ALTSYNCRAM";
defparam ram_block1a4.operation_mode = "rom";
defparam ram_block1a4.port_a_address_clear = "none";
defparam ram_block1a4.port_a_address_width = 13;
defparam ram_block1a4.port_a_data_out_clear = "none";
defparam ram_block1a4.port_a_data_out_clock = "clock0";
defparam ram_block1a4.port_a_data_width = 1;
defparam ram_block1a4.port_a_first_address = 0;
defparam ram_block1a4.port_a_first_bit_number = 4;
defparam ram_block1a4.port_a_last_address = 8191;
defparam ram_block1a4.port_a_logical_ram_depth = 8192;
defparam ram_block1a4.port_a_logical_ram_width = 9;
defparam ram_block1a4.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a4.ram_block_type = "auto";
defparam ram_block1a4.mem_init3 = 2048'h0000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFF;
defparam ram_block1a4.mem_init2 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000000000000000000000000000000000000000000000000000000000000000;
defparam ram_block1a4.mem_init1 = 2048'h00000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000000000000000000000000000000000000000;
defparam ram_block1a4.mem_init0 = 2048'h0000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000000000000000000000000000000000000000000000000000000000000000000000000000000;

cycloneive_ram_block ram_block1a5(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a5_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a5.clk0_core_clock_enable = "ena0";
defparam ram_block1a5.clk0_input_clock_enable = "ena0";
defparam ram_block1a5.clk0_output_clock_enable = "ena0";
defparam ram_block1a5.data_interleave_offset_in_bits = 1;
defparam ram_block1a5.data_interleave_width_in_bits = 1;
defparam ram_block1a5.init_file = "oc_sin.hex";
defparam ram_block1a5.init_file_layout = "port_a";
defparam ram_block1a5.logical_ram_name = "oc_st:oc_st_inst|asj_nco_as_m_cen:ux0120|altsyncram:altsyncram_component0|altsyncram_ro81:auto_generated|ALTSYNCRAM";
defparam ram_block1a5.operation_mode = "rom";
defparam ram_block1a5.port_a_address_clear = "none";
defparam ram_block1a5.port_a_address_width = 13;
defparam ram_block1a5.port_a_data_out_clear = "none";
defparam ram_block1a5.port_a_data_out_clock = "clock0";
defparam ram_block1a5.port_a_data_width = 1;
defparam ram_block1a5.port_a_first_address = 0;
defparam ram_block1a5.port_a_first_bit_number = 5;
defparam ram_block1a5.port_a_last_address = 8191;
defparam ram_block1a5.port_a_logical_ram_depth = 8192;
defparam ram_block1a5.port_a_logical_ram_width = 9;
defparam ram_block1a5.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a5.ram_block_type = "auto";
defparam ram_block1a5.mem_init3 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000000000000000000000;
defparam ram_block1a5.mem_init2 = 2048'h000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
defparam ram_block1a5.mem_init1 = 2048'h00000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
defparam ram_block1a5.mem_init0 = 2048'hFFFFFFFFFFFFFFFFFFFFFE000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;

cycloneive_ram_block ram_block1a6(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a6_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a6.clk0_core_clock_enable = "ena0";
defparam ram_block1a6.clk0_input_clock_enable = "ena0";
defparam ram_block1a6.clk0_output_clock_enable = "ena0";
defparam ram_block1a6.data_interleave_offset_in_bits = 1;
defparam ram_block1a6.data_interleave_width_in_bits = 1;
defparam ram_block1a6.init_file = "oc_sin.hex";
defparam ram_block1a6.init_file_layout = "port_a";
defparam ram_block1a6.logical_ram_name = "oc_st:oc_st_inst|asj_nco_as_m_cen:ux0120|altsyncram:altsyncram_component0|altsyncram_ro81:auto_generated|ALTSYNCRAM";
defparam ram_block1a6.operation_mode = "rom";
defparam ram_block1a6.port_a_address_clear = "none";
defparam ram_block1a6.port_a_address_width = 13;
defparam ram_block1a6.port_a_data_out_clear = "none";
defparam ram_block1a6.port_a_data_out_clock = "clock0";
defparam ram_block1a6.port_a_data_width = 1;
defparam ram_block1a6.port_a_first_address = 0;
defparam ram_block1a6.port_a_first_bit_number = 6;
defparam ram_block1a6.port_a_last_address = 8191;
defparam ram_block1a6.port_a_logical_ram_depth = 8192;
defparam ram_block1a6.port_a_logical_ram_width = 9;
defparam ram_block1a6.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a6.ram_block_type = "auto";
defparam ram_block1a6.mem_init3 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
defparam ram_block1a6.mem_init2 = 2048'h000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
defparam ram_block1a6.mem_init1 = 2048'hFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
defparam ram_block1a6.mem_init0 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;

cycloneive_ram_block ram_block1a7(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a7_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a7.clk0_core_clock_enable = "ena0";
defparam ram_block1a7.clk0_input_clock_enable = "ena0";
defparam ram_block1a7.clk0_output_clock_enable = "ena0";
defparam ram_block1a7.data_interleave_offset_in_bits = 1;
defparam ram_block1a7.data_interleave_width_in_bits = 1;
defparam ram_block1a7.init_file = "oc_sin.hex";
defparam ram_block1a7.init_file_layout = "port_a";
defparam ram_block1a7.logical_ram_name = "oc_st:oc_st_inst|asj_nco_as_m_cen:ux0120|altsyncram:altsyncram_component0|altsyncram_ro81:auto_generated|ALTSYNCRAM";
defparam ram_block1a7.operation_mode = "rom";
defparam ram_block1a7.port_a_address_clear = "none";
defparam ram_block1a7.port_a_address_width = 13;
defparam ram_block1a7.port_a_data_out_clear = "none";
defparam ram_block1a7.port_a_data_out_clock = "clock0";
defparam ram_block1a7.port_a_data_width = 1;
defparam ram_block1a7.port_a_first_address = 0;
defparam ram_block1a7.port_a_first_bit_number = 7;
defparam ram_block1a7.port_a_last_address = 8191;
defparam ram_block1a7.port_a_logical_ram_depth = 8192;
defparam ram_block1a7.port_a_logical_ram_width = 9;
defparam ram_block1a7.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a7.ram_block_type = "auto";
defparam ram_block1a7.mem_init3 = 2048'h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
defparam ram_block1a7.mem_init2 = 2048'h000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
defparam ram_block1a7.mem_init1 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
defparam ram_block1a7.mem_init0 = 2048'h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;

cycloneive_ram_block ram_block1a8(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a8_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a8.clk0_core_clock_enable = "ena0";
defparam ram_block1a8.clk0_input_clock_enable = "ena0";
defparam ram_block1a8.clk0_output_clock_enable = "ena0";
defparam ram_block1a8.data_interleave_offset_in_bits = 1;
defparam ram_block1a8.data_interleave_width_in_bits = 1;
defparam ram_block1a8.init_file = "oc_sin.hex";
defparam ram_block1a8.init_file_layout = "port_a";
defparam ram_block1a8.logical_ram_name = "oc_st:oc_st_inst|asj_nco_as_m_cen:ux0120|altsyncram:altsyncram_component0|altsyncram_ro81:auto_generated|ALTSYNCRAM";
defparam ram_block1a8.operation_mode = "rom";
defparam ram_block1a8.port_a_address_clear = "none";
defparam ram_block1a8.port_a_address_width = 13;
defparam ram_block1a8.port_a_data_out_clear = "none";
defparam ram_block1a8.port_a_data_out_clock = "clock0";
defparam ram_block1a8.port_a_data_width = 1;
defparam ram_block1a8.port_a_first_address = 0;
defparam ram_block1a8.port_a_first_bit_number = 8;
defparam ram_block1a8.port_a_last_address = 8191;
defparam ram_block1a8.port_a_logical_ram_depth = 8192;
defparam ram_block1a8.port_a_logical_ram_width = 9;
defparam ram_block1a8.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a8.ram_block_type = "auto";
defparam ram_block1a8.mem_init3 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
defparam ram_block1a8.mem_init2 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
defparam ram_block1a8.mem_init1 = 2048'h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
defparam ram_block1a8.mem_init0 = 2048'h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;

endmodule

module oc_asj_nco_as_m_cen_1 (
	q_a_0,
	q_a_1,
	q_a_2,
	q_a_3,
	q_a_4,
	q_a_5,
	q_a_6,
	q_a_7,
	q_a_8,
	rom_add_0,
	rom_add_1,
	rom_add_2,
	rom_add_3,
	rom_add_4,
	rom_add_5,
	rom_add_6,
	rom_add_7,
	rom_add_8,
	rom_add_9,
	rom_add_10,
	rom_add_11,
	rom_add_12,
	clk,
	clken)/* synthesis synthesis_greybox=1 */;
output 	q_a_0;
output 	q_a_1;
output 	q_a_2;
output 	q_a_3;
output 	q_a_4;
output 	q_a_5;
output 	q_a_6;
output 	q_a_7;
output 	q_a_8;
input 	rom_add_0;
input 	rom_add_1;
input 	rom_add_2;
input 	rom_add_3;
input 	rom_add_4;
input 	rom_add_5;
input 	rom_add_6;
input 	rom_add_7;
input 	rom_add_8;
input 	rom_add_9;
input 	rom_add_10;
input 	rom_add_11;
input 	rom_add_12;
input 	clk;
input 	clken;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



oc_altsyncram_2 altsyncram_component0(
	.q_a({q_a_8,q_a_7,q_a_6,q_a_5,q_a_4,q_a_3,q_a_2,q_a_1,q_a_0}),
	.address_a({rom_add_12,rom_add_11,rom_add_10,rom_add_9,rom_add_8,rom_add_7,rom_add_6,rom_add_5,rom_add_4,rom_add_3,rom_add_2,rom_add_1,rom_add_0}),
	.clock0(clk),
	.clocken0(clken));

endmodule

module oc_altsyncram_2 (
	q_a,
	address_a,
	clock0,
	clocken0)/* synthesis synthesis_greybox=1 */;
output 	[8:0] q_a;
input 	[12:0] address_a;
input 	clock0;
input 	clocken0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



oc_altsyncram_mo81 auto_generated(
	.q_a({q_a[8],q_a[7],q_a[6],q_a[5],q_a[4],q_a[3],q_a[2],q_a[1],q_a[0]}),
	.address_a({address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.clock0(clock0),
	.clocken0(clocken0));

endmodule

module oc_altsyncram_mo81 (
	q_a,
	address_a,
	clock0,
	clocken0)/* synthesis synthesis_greybox=1 */;
output 	[8:0] q_a;
input 	[12:0] address_a;
input 	clock0;
input 	clocken0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;


wire [143:0] ram_block1a0_PORTADATAOUT_bus;
wire [143:0] ram_block1a1_PORTADATAOUT_bus;
wire [143:0] ram_block1a2_PORTADATAOUT_bus;
wire [143:0] ram_block1a3_PORTADATAOUT_bus;
wire [143:0] ram_block1a4_PORTADATAOUT_bus;
wire [143:0] ram_block1a5_PORTADATAOUT_bus;
wire [143:0] ram_block1a6_PORTADATAOUT_bus;
wire [143:0] ram_block1a7_PORTADATAOUT_bus;
wire [143:0] ram_block1a8_PORTADATAOUT_bus;

assign q_a[0] = ram_block1a0_PORTADATAOUT_bus[0];

assign q_a[1] = ram_block1a1_PORTADATAOUT_bus[0];

assign q_a[2] = ram_block1a2_PORTADATAOUT_bus[0];

assign q_a[3] = ram_block1a3_PORTADATAOUT_bus[0];

assign q_a[4] = ram_block1a4_PORTADATAOUT_bus[0];

assign q_a[5] = ram_block1a5_PORTADATAOUT_bus[0];

assign q_a[6] = ram_block1a6_PORTADATAOUT_bus[0];

assign q_a[7] = ram_block1a7_PORTADATAOUT_bus[0];

assign q_a[8] = ram_block1a8_PORTADATAOUT_bus[0];

cycloneive_ram_block ram_block1a0(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a0_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a0.clk0_core_clock_enable = "ena0";
defparam ram_block1a0.clk0_input_clock_enable = "ena0";
defparam ram_block1a0.clk0_output_clock_enable = "ena0";
defparam ram_block1a0.data_interleave_offset_in_bits = 1;
defparam ram_block1a0.data_interleave_width_in_bits = 1;
defparam ram_block1a0.init_file = "oc_cos.hex";
defparam ram_block1a0.init_file_layout = "port_a";
defparam ram_block1a0.logical_ram_name = "oc_st:oc_st_inst|asj_nco_as_m_cen:ux0121|altsyncram:altsyncram_component0|altsyncram_mo81:auto_generated|ALTSYNCRAM";
defparam ram_block1a0.operation_mode = "rom";
defparam ram_block1a0.port_a_address_clear = "none";
defparam ram_block1a0.port_a_address_width = 13;
defparam ram_block1a0.port_a_data_out_clear = "none";
defparam ram_block1a0.port_a_data_out_clock = "clock0";
defparam ram_block1a0.port_a_data_width = 1;
defparam ram_block1a0.port_a_first_address = 0;
defparam ram_block1a0.port_a_first_bit_number = 0;
defparam ram_block1a0.port_a_last_address = 8191;
defparam ram_block1a0.port_a_logical_ram_depth = 8192;
defparam ram_block1a0.port_a_logical_ram_width = 9;
defparam ram_block1a0.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a0.ram_block_type = "auto";
defparam ram_block1a0.mem_init3 = 2048'hF00000007FFFFFFC0000001FFFFFFF80000003FFFFFFE00000007FFFFFFC0000000FFFFFFF80000001FFFFFFF80000001FFFFFFF80000001FFFFFFF80000000FFFFFFFC00000007FFFFFFE00000003FFFFFFF80000000FFFFFFFE00000003FFFFFFF800000007FFFFFFF00000000FFFFFFFE00000001FFFFFFFE00000001FFFFFFFE00000000FFFFFFFF000000007FFFFFFF800000003FFFFFFFE00000000FFFFFFFF800000001FFFFFFFF000000003FFFFFFFE000000007FFFFFFFE000000003FFFFFFFF000000003FFFFFFFF800000000FFFFFFFFE000000003FFFFFFFF8000000007FFFFFFFF800000000FFFFFFFFF0000000007FFFFFFFF8000000003FFF;
defparam ram_block1a0.mem_init2 = 2048'hFFFFFC000000001FFFFFFFFF0000000003FFFFFFFFE0000000007FFFFFFFFE0000000007FFFFFFFFF0000000003FFFFFFFFF8000000000FFFFFFFFFF0000000001FFFFFFFFFE0000000001FFFFFFFFFF00000000007FFFFFFFFFC0000000001FFFFFFFFFF00000000003FFFFFFFFFF00000000001FFFFFFFFFF80000000000FFFFFFFFFFF00000000000FFFFFFFFFFF00000000000FFFFFFFFFFF800000000003FFFFFFFFFFF000000000003FFFFFFFFFFF000000000001FFFFFFFFFFFE000000000003FFFFFFFFFFFE000000000001FFFFFFFFFFFF8000000000003FFFFFFFFFFFF8000000000001FFFFFFFFFFFFE0000000000001FFFFFFFFFFFFE00000000;
defparam ram_block1a0.mem_init1 = 2048'h000007FFFFFFFFFFFFE00000000000007FFFFFFFFFFFFF800000000000007FFFFFFFFFFFFFC00000000000001FFFFFFFFFFFFFFC000000000000003FFFFFFFFFFFFFFC000000000000000FFFFFFFFFFFFFFFC0000000000000003FFFFFFFFFFFFFFFC00000000000000007FFFFFFFFFFFFFFFF000000000000000007FFFFFFFFFFFFFFFFE000000000000000001FFFFFFFFFFFFFFFFFF8000000000000000000FFFFFFFFFFFFFFFFFFFC00000000000000000003FFFFFFFFFFFFFFFFFFFF0000000000000000000007FFFFFFFFFFFFFFFFFFFFF80000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000007FFFFFFFFFFFFFFFFF;
defparam ram_block1a0.mem_init0 = 2048'hFFFFFFFF8000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

cycloneive_ram_block ram_block1a1(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a1_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a1.clk0_core_clock_enable = "ena0";
defparam ram_block1a1.clk0_input_clock_enable = "ena0";
defparam ram_block1a1.clk0_output_clock_enable = "ena0";
defparam ram_block1a1.data_interleave_offset_in_bits = 1;
defparam ram_block1a1.data_interleave_width_in_bits = 1;
defparam ram_block1a1.init_file = "oc_cos.hex";
defparam ram_block1a1.init_file_layout = "port_a";
defparam ram_block1a1.logical_ram_name = "oc_st:oc_st_inst|asj_nco_as_m_cen:ux0121|altsyncram:altsyncram_component0|altsyncram_mo81:auto_generated|ALTSYNCRAM";
defparam ram_block1a1.operation_mode = "rom";
defparam ram_block1a1.port_a_address_clear = "none";
defparam ram_block1a1.port_a_address_width = 13;
defparam ram_block1a1.port_a_data_out_clear = "none";
defparam ram_block1a1.port_a_data_out_clock = "clock0";
defparam ram_block1a1.port_a_data_width = 1;
defparam ram_block1a1.port_a_first_address = 0;
defparam ram_block1a1.port_a_first_bit_number = 1;
defparam ram_block1a1.port_a_last_address = 8191;
defparam ram_block1a1.port_a_logical_ram_depth = 8192;
defparam ram_block1a1.port_a_logical_ram_width = 9;
defparam ram_block1a1.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a1.ram_block_type = "auto";
defparam ram_block1a1.mem_init3 = 2048'h0FFFFFFFFFFFFFFC000000000000007FFFFFFFFFFFFFE000000000000003FFFFFFFFFFFFFF8000000000000007FFFFFFFFFFFFFF8000000000000007FFFFFFFFFFFFFFC000000000000001FFFFFFFFFFFFFFF8000000000000001FFFFFFFFFFFFFFF8000000000000000FFFFFFFFFFFFFFFE0000000000000001FFFFFFFFFFFFFFFE0000000000000000FFFFFFFFFFFFFFFF80000000000000001FFFFFFFFFFFFFFFF80000000000000000FFFFFFFFFFFFFFFFE00000000000000001FFFFFFFFFFFFFFFFF000000000000000007FFFFFFFFFFFFFFFFE000000000000000007FFFFFFFFFFFFFFFFF800000000000000000FFFFFFFFFFFFFFFFFF8000000000000;
defparam ram_block1a1.mem_init2 = 2048'h000003FFFFFFFFFFFFFFFFFF0000000000000000001FFFFFFFFFFFFFFFFFFE0000000000000000000FFFFFFFFFFFFFFFFFFF80000000000000000000FFFFFFFFFFFFFFFFFFFE00000000000000000000FFFFFFFFFFFFFFFFFFFFC00000000000000000000FFFFFFFFFFFFFFFFFFFFF0000000000000000000007FFFFFFFFFFFFFFFFFFFFF0000000000000000000000FFFFFFFFFFFFFFFFFFFFFF80000000000000000000000FFFFFFFFFFFFFFFFFFFFFFF000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFE0000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFE00000000;
defparam ram_block1a1.mem_init1 = 2048'h0000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000000000000000000000000000000000000000;
defparam ram_block1a1.mem_init0 = 2048'h000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

cycloneive_ram_block ram_block1a2(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a2_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a2.clk0_core_clock_enable = "ena0";
defparam ram_block1a2.clk0_input_clock_enable = "ena0";
defparam ram_block1a2.clk0_output_clock_enable = "ena0";
defparam ram_block1a2.data_interleave_offset_in_bits = 1;
defparam ram_block1a2.data_interleave_width_in_bits = 1;
defparam ram_block1a2.init_file = "oc_cos.hex";
defparam ram_block1a2.init_file_layout = "port_a";
defparam ram_block1a2.logical_ram_name = "oc_st:oc_st_inst|asj_nco_as_m_cen:ux0121|altsyncram:altsyncram_component0|altsyncram_mo81:auto_generated|ALTSYNCRAM";
defparam ram_block1a2.operation_mode = "rom";
defparam ram_block1a2.port_a_address_clear = "none";
defparam ram_block1a2.port_a_address_width = 13;
defparam ram_block1a2.port_a_data_out_clear = "none";
defparam ram_block1a2.port_a_data_out_clock = "clock0";
defparam ram_block1a2.port_a_data_width = 1;
defparam ram_block1a2.port_a_first_address = 0;
defparam ram_block1a2.port_a_first_bit_number = 2;
defparam ram_block1a2.port_a_last_address = 8191;
defparam ram_block1a2.port_a_logical_ram_depth = 8192;
defparam ram_block1a2.port_a_logical_ram_width = 9;
defparam ram_block1a2.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a2.ram_block_type = "auto";
defparam ram_block1a2.mem_init3 = 2048'h0000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000000000;
defparam ram_block1a2.mem_init2 = 2048'h000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000;
defparam ram_block1a2.mem_init1 = 2048'h00000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
defparam ram_block1a2.mem_init0 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

cycloneive_ram_block ram_block1a3(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a3_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a3.clk0_core_clock_enable = "ena0";
defparam ram_block1a3.clk0_input_clock_enable = "ena0";
defparam ram_block1a3.clk0_output_clock_enable = "ena0";
defparam ram_block1a3.data_interleave_offset_in_bits = 1;
defparam ram_block1a3.data_interleave_width_in_bits = 1;
defparam ram_block1a3.init_file = "oc_cos.hex";
defparam ram_block1a3.init_file_layout = "port_a";
defparam ram_block1a3.logical_ram_name = "oc_st:oc_st_inst|asj_nco_as_m_cen:ux0121|altsyncram:altsyncram_component0|altsyncram_mo81:auto_generated|ALTSYNCRAM";
defparam ram_block1a3.operation_mode = "rom";
defparam ram_block1a3.port_a_address_clear = "none";
defparam ram_block1a3.port_a_address_width = 13;
defparam ram_block1a3.port_a_data_out_clear = "none";
defparam ram_block1a3.port_a_data_out_clock = "clock0";
defparam ram_block1a3.port_a_data_width = 1;
defparam ram_block1a3.port_a_first_address = 0;
defparam ram_block1a3.port_a_first_bit_number = 3;
defparam ram_block1a3.port_a_last_address = 8191;
defparam ram_block1a3.port_a_logical_ram_depth = 8192;
defparam ram_block1a3.port_a_logical_ram_width = 9;
defparam ram_block1a3.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a3.ram_block_type = "auto";
defparam ram_block1a3.mem_init3 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000000000000000000000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFF;
defparam ram_block1a3.mem_init2 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000000000000000000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001FFFFFFFF;
defparam ram_block1a3.mem_init1 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
defparam ram_block1a3.mem_init0 = 2048'h00000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

cycloneive_ram_block ram_block1a4(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a4_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a4.clk0_core_clock_enable = "ena0";
defparam ram_block1a4.clk0_input_clock_enable = "ena0";
defparam ram_block1a4.clk0_output_clock_enable = "ena0";
defparam ram_block1a4.data_interleave_offset_in_bits = 1;
defparam ram_block1a4.data_interleave_width_in_bits = 1;
defparam ram_block1a4.init_file = "oc_cos.hex";
defparam ram_block1a4.init_file_layout = "port_a";
defparam ram_block1a4.logical_ram_name = "oc_st:oc_st_inst|asj_nco_as_m_cen:ux0121|altsyncram:altsyncram_component0|altsyncram_mo81:auto_generated|ALTSYNCRAM";
defparam ram_block1a4.operation_mode = "rom";
defparam ram_block1a4.port_a_address_clear = "none";
defparam ram_block1a4.port_a_address_width = 13;
defparam ram_block1a4.port_a_data_out_clear = "none";
defparam ram_block1a4.port_a_data_out_clock = "clock0";
defparam ram_block1a4.port_a_data_width = 1;
defparam ram_block1a4.port_a_first_address = 0;
defparam ram_block1a4.port_a_first_bit_number = 4;
defparam ram_block1a4.port_a_last_address = 8191;
defparam ram_block1a4.port_a_logical_ram_depth = 8192;
defparam ram_block1a4.port_a_logical_ram_width = 9;
defparam ram_block1a4.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a4.ram_block_type = "auto";
defparam ram_block1a4.mem_init3 = 2048'h000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
defparam ram_block1a4.mem_init2 = 2048'h00000000000000000000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
defparam ram_block1a4.mem_init1 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
defparam ram_block1a4.mem_init0 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

cycloneive_ram_block ram_block1a5(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a5_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a5.clk0_core_clock_enable = "ena0";
defparam ram_block1a5.clk0_input_clock_enable = "ena0";
defparam ram_block1a5.clk0_output_clock_enable = "ena0";
defparam ram_block1a5.data_interleave_offset_in_bits = 1;
defparam ram_block1a5.data_interleave_width_in_bits = 1;
defparam ram_block1a5.init_file = "oc_cos.hex";
defparam ram_block1a5.init_file_layout = "port_a";
defparam ram_block1a5.logical_ram_name = "oc_st:oc_st_inst|asj_nco_as_m_cen:ux0121|altsyncram:altsyncram_component0|altsyncram_mo81:auto_generated|ALTSYNCRAM";
defparam ram_block1a5.operation_mode = "rom";
defparam ram_block1a5.port_a_address_clear = "none";
defparam ram_block1a5.port_a_address_width = 13;
defparam ram_block1a5.port_a_data_out_clear = "none";
defparam ram_block1a5.port_a_data_out_clock = "clock0";
defparam ram_block1a5.port_a_data_width = 1;
defparam ram_block1a5.port_a_first_address = 0;
defparam ram_block1a5.port_a_first_bit_number = 5;
defparam ram_block1a5.port_a_last_address = 8191;
defparam ram_block1a5.port_a_logical_ram_depth = 8192;
defparam ram_block1a5.port_a_logical_ram_width = 9;
defparam ram_block1a5.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a5.ram_block_type = "auto";
defparam ram_block1a5.mem_init3 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
defparam ram_block1a5.mem_init2 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
defparam ram_block1a5.mem_init1 = 2048'h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
defparam ram_block1a5.mem_init0 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

cycloneive_ram_block ram_block1a6(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a6_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a6.clk0_core_clock_enable = "ena0";
defparam ram_block1a6.clk0_input_clock_enable = "ena0";
defparam ram_block1a6.clk0_output_clock_enable = "ena0";
defparam ram_block1a6.data_interleave_offset_in_bits = 1;
defparam ram_block1a6.data_interleave_width_in_bits = 1;
defparam ram_block1a6.init_file = "oc_cos.hex";
defparam ram_block1a6.init_file_layout = "port_a";
defparam ram_block1a6.logical_ram_name = "oc_st:oc_st_inst|asj_nco_as_m_cen:ux0121|altsyncram:altsyncram_component0|altsyncram_mo81:auto_generated|ALTSYNCRAM";
defparam ram_block1a6.operation_mode = "rom";
defparam ram_block1a6.port_a_address_clear = "none";
defparam ram_block1a6.port_a_address_width = 13;
defparam ram_block1a6.port_a_data_out_clear = "none";
defparam ram_block1a6.port_a_data_out_clock = "clock0";
defparam ram_block1a6.port_a_data_width = 1;
defparam ram_block1a6.port_a_first_address = 0;
defparam ram_block1a6.port_a_first_bit_number = 6;
defparam ram_block1a6.port_a_last_address = 8191;
defparam ram_block1a6.port_a_logical_ram_depth = 8192;
defparam ram_block1a6.port_a_logical_ram_width = 9;
defparam ram_block1a6.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a6.ram_block_type = "auto";
defparam ram_block1a6.mem_init3 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
defparam ram_block1a6.mem_init2 = 2048'h000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
defparam ram_block1a6.mem_init1 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
defparam ram_block1a6.mem_init0 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

cycloneive_ram_block ram_block1a7(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a7_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a7.clk0_core_clock_enable = "ena0";
defparam ram_block1a7.clk0_input_clock_enable = "ena0";
defparam ram_block1a7.clk0_output_clock_enable = "ena0";
defparam ram_block1a7.data_interleave_offset_in_bits = 1;
defparam ram_block1a7.data_interleave_width_in_bits = 1;
defparam ram_block1a7.init_file = "oc_cos.hex";
defparam ram_block1a7.init_file_layout = "port_a";
defparam ram_block1a7.logical_ram_name = "oc_st:oc_st_inst|asj_nco_as_m_cen:ux0121|altsyncram:altsyncram_component0|altsyncram_mo81:auto_generated|ALTSYNCRAM";
defparam ram_block1a7.operation_mode = "rom";
defparam ram_block1a7.port_a_address_clear = "none";
defparam ram_block1a7.port_a_address_width = 13;
defparam ram_block1a7.port_a_data_out_clear = "none";
defparam ram_block1a7.port_a_data_out_clock = "clock0";
defparam ram_block1a7.port_a_data_width = 1;
defparam ram_block1a7.port_a_first_address = 0;
defparam ram_block1a7.port_a_first_bit_number = 7;
defparam ram_block1a7.port_a_last_address = 8191;
defparam ram_block1a7.port_a_logical_ram_depth = 8192;
defparam ram_block1a7.port_a_logical_ram_width = 9;
defparam ram_block1a7.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a7.ram_block_type = "auto";
defparam ram_block1a7.mem_init3 = 2048'h0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
defparam ram_block1a7.mem_init2 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
defparam ram_block1a7.mem_init1 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
defparam ram_block1a7.mem_init0 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

cycloneive_ram_block ram_block1a8(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a8_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a8.clk0_core_clock_enable = "ena0";
defparam ram_block1a8.clk0_input_clock_enable = "ena0";
defparam ram_block1a8.clk0_output_clock_enable = "ena0";
defparam ram_block1a8.data_interleave_offset_in_bits = 1;
defparam ram_block1a8.data_interleave_width_in_bits = 1;
defparam ram_block1a8.init_file = "oc_cos.hex";
defparam ram_block1a8.init_file_layout = "port_a";
defparam ram_block1a8.logical_ram_name = "oc_st:oc_st_inst|asj_nco_as_m_cen:ux0121|altsyncram:altsyncram_component0|altsyncram_mo81:auto_generated|ALTSYNCRAM";
defparam ram_block1a8.operation_mode = "rom";
defparam ram_block1a8.port_a_address_clear = "none";
defparam ram_block1a8.port_a_address_width = 13;
defparam ram_block1a8.port_a_data_out_clear = "none";
defparam ram_block1a8.port_a_data_out_clock = "clock0";
defparam ram_block1a8.port_a_data_width = 1;
defparam ram_block1a8.port_a_first_address = 0;
defparam ram_block1a8.port_a_first_bit_number = 8;
defparam ram_block1a8.port_a_last_address = 8191;
defparam ram_block1a8.port_a_logical_ram_depth = 8192;
defparam ram_block1a8.port_a_logical_ram_width = 9;
defparam ram_block1a8.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a8.ram_block_type = "auto";
defparam ram_block1a8.mem_init3 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
defparam ram_block1a8.mem_init2 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
defparam ram_block1a8.mem_init1 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
defparam ram_block1a8.mem_init0 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

endmodule

module oc_asj_nco_isdr (
	data_ready1,
	reset_n,
	clk,
	clken)/* synthesis synthesis_greybox=1 */;
output 	data_ready1;
input 	reset_n;
input 	clk;
input 	clken;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \lpm_counter_component|auto_generated|counter_reg_bit[0]~q ;
wire \lpm_counter_component|auto_generated|counter_reg_bit[3]~q ;
wire \lpm_counter_component|auto_generated|counter_reg_bit[2]~q ;
wire \lpm_counter_component|auto_generated|counter_reg_bit[1]~q ;
wire \always0~0_combout ;
wire \data_ready~0_combout ;


oc_lpm_counter_1 lpm_counter_component(
	.counter_reg_bit_0(\lpm_counter_component|auto_generated|counter_reg_bit[0]~q ),
	.counter_reg_bit_3(\lpm_counter_component|auto_generated|counter_reg_bit[3]~q ),
	.counter_reg_bit_2(\lpm_counter_component|auto_generated|counter_reg_bit[2]~q ),
	.counter_reg_bit_1(\lpm_counter_component|auto_generated|counter_reg_bit[1]~q ),
	.reset_n(reset_n),
	.clock(clk),
	.clken(clken));

dffeas data_ready(
	.clk(clk),
	.d(\data_ready~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(vcc),
	.q(data_ready1),
	.prn(vcc));
defparam data_ready.is_wysiwyg = "true";
defparam data_ready.power_up = "low";

cycloneive_lcell_comb \always0~0 (
	.dataa(clken),
	.datab(\lpm_counter_component|auto_generated|counter_reg_bit[3]~q ),
	.datac(\lpm_counter_component|auto_generated|counter_reg_bit[2]~q ),
	.datad(\lpm_counter_component|auto_generated|counter_reg_bit[1]~q ),
	.cin(gnd),
	.combout(\always0~0_combout ),
	.cout());
defparam \always0~0 .lut_mask = 16'hEFFF;
defparam \always0~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \data_ready~0 (
	.dataa(data_ready1),
	.datab(\lpm_counter_component|auto_generated|counter_reg_bit[0]~q ),
	.datac(\always0~0_combout ),
	.datad(gnd),
	.cin(gnd),
	.combout(\data_ready~0_combout ),
	.cout());
defparam \data_ready~0 .lut_mask = 16'hFEFE;
defparam \data_ready~0 .sum_lutc_input = "datac";

endmodule

module oc_lpm_counter_1 (
	counter_reg_bit_0,
	counter_reg_bit_3,
	counter_reg_bit_2,
	counter_reg_bit_1,
	reset_n,
	clock,
	clken)/* synthesis synthesis_greybox=1 */;
output 	counter_reg_bit_0;
output 	counter_reg_bit_3;
output 	counter_reg_bit_2;
output 	counter_reg_bit_1;
input 	reset_n;
input 	clock;
input 	clken;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



oc_cntr_ori auto_generated(
	.counter_reg_bit_0(counter_reg_bit_0),
	.counter_reg_bit_3(counter_reg_bit_3),
	.counter_reg_bit_2(counter_reg_bit_2),
	.counter_reg_bit_1(counter_reg_bit_1),
	.reset_n(reset_n),
	.clock(clock),
	.clken(clken));

endmodule

module oc_cntr_ori (
	counter_reg_bit_0,
	counter_reg_bit_3,
	counter_reg_bit_2,
	counter_reg_bit_1,
	reset_n,
	clock,
	clken)/* synthesis synthesis_greybox=1 */;
output 	counter_reg_bit_0;
output 	counter_reg_bit_3;
output 	counter_reg_bit_2;
output 	counter_reg_bit_1;
input 	reset_n;
input 	clock;
input 	clken;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \counter_comb_bita0~combout ;
wire \counter_comb_bita0~COUT ;
wire \counter_comb_bita1~COUT ;
wire \counter_comb_bita2~COUT ;
wire \counter_comb_bita3~combout ;
wire \counter_comb_bita2~combout ;
wire \counter_comb_bita1~combout ;


dffeas \counter_reg_bit[0] (
	.clk(clock),
	.d(\counter_comb_bita0~combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(counter_reg_bit_0),
	.prn(vcc));
defparam \counter_reg_bit[0] .is_wysiwyg = "true";
defparam \counter_reg_bit[0] .power_up = "low";

dffeas \counter_reg_bit[3] (
	.clk(clock),
	.d(\counter_comb_bita3~combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(counter_reg_bit_3),
	.prn(vcc));
defparam \counter_reg_bit[3] .is_wysiwyg = "true";
defparam \counter_reg_bit[3] .power_up = "low";

dffeas \counter_reg_bit[2] (
	.clk(clock),
	.d(\counter_comb_bita2~combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(counter_reg_bit_2),
	.prn(vcc));
defparam \counter_reg_bit[2] .is_wysiwyg = "true";
defparam \counter_reg_bit[2] .power_up = "low";

dffeas \counter_reg_bit[1] (
	.clk(clock),
	.d(\counter_comb_bita1~combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(counter_reg_bit_1),
	.prn(vcc));
defparam \counter_reg_bit[1] .is_wysiwyg = "true";
defparam \counter_reg_bit[1] .power_up = "low";

cycloneive_lcell_comb counter_comb_bita0(
	.dataa(counter_reg_bit_0),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(\counter_comb_bita0~combout ),
	.cout(\counter_comb_bita0~COUT ));
defparam counter_comb_bita0.lut_mask = 16'h55AA;
defparam counter_comb_bita0.sum_lutc_input = "cin";

cycloneive_lcell_comb counter_comb_bita1(
	.dataa(counter_reg_bit_1),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\counter_comb_bita0~COUT ),
	.combout(\counter_comb_bita1~combout ),
	.cout(\counter_comb_bita1~COUT ));
defparam counter_comb_bita1.lut_mask = 16'h5A5F;
defparam counter_comb_bita1.sum_lutc_input = "cin";

cycloneive_lcell_comb counter_comb_bita2(
	.dataa(counter_reg_bit_2),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\counter_comb_bita1~COUT ),
	.combout(\counter_comb_bita2~combout ),
	.cout(\counter_comb_bita2~COUT ));
defparam counter_comb_bita2.lut_mask = 16'h5AAF;
defparam counter_comb_bita2.sum_lutc_input = "cin";

cycloneive_lcell_comb counter_comb_bita3(
	.dataa(counter_reg_bit_3),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(\counter_comb_bita2~COUT ),
	.combout(\counter_comb_bita3~combout ),
	.cout());
defparam counter_comb_bita3.lut_mask = 16'h5A5A;
defparam counter_comb_bita3.sum_lutc_input = "cin";

endmodule

module oc_asj_nco_mob_rw (
	sin_o_0,
	sin_o_1,
	sin_o_2,
	sin_o_3,
	sin_o_4,
	sin_o_5,
	sin_o_6,
	sin_o_7,
	sin_o_8,
	sin_o_9,
	data_out_0,
	data_out_1,
	data_out_2,
	data_out_3,
	data_out_4,
	data_out_5,
	data_out_6,
	data_out_7,
	data_out_8,
	data_out_9,
	sin_o_91,
	reset_n,
	clk)/* synthesis synthesis_greybox=1 */;
input 	sin_o_0;
input 	sin_o_1;
input 	sin_o_2;
input 	sin_o_3;
input 	sin_o_4;
input 	sin_o_5;
input 	sin_o_6;
input 	sin_o_7;
input 	sin_o_8;
input 	sin_o_9;
output 	data_out_0;
output 	data_out_1;
output 	data_out_2;
output 	data_out_3;
output 	data_out_4;
output 	data_out_5;
output 	data_out_6;
output 	data_out_7;
output 	data_out_8;
output 	data_out_9;
input 	sin_o_91;
input 	reset_n;
input 	clk;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \data_out~0_combout ;
wire \data_out~1_combout ;
wire \data_out~2_combout ;
wire \data_out~3_combout ;
wire \data_out~4_combout ;
wire \data_out~5_combout ;
wire \data_out~6_combout ;
wire \data_out~7_combout ;
wire \data_out~8_combout ;
wire \data_out~9_combout ;


dffeas \data_out[0] (
	.clk(clk),
	.d(\data_out~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_91),
	.q(data_out_0),
	.prn(vcc));
defparam \data_out[0] .is_wysiwyg = "true";
defparam \data_out[0] .power_up = "low";

dffeas \data_out[1] (
	.clk(clk),
	.d(\data_out~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_91),
	.q(data_out_1),
	.prn(vcc));
defparam \data_out[1] .is_wysiwyg = "true";
defparam \data_out[1] .power_up = "low";

dffeas \data_out[2] (
	.clk(clk),
	.d(\data_out~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_91),
	.q(data_out_2),
	.prn(vcc));
defparam \data_out[2] .is_wysiwyg = "true";
defparam \data_out[2] .power_up = "low";

dffeas \data_out[3] (
	.clk(clk),
	.d(\data_out~3_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_91),
	.q(data_out_3),
	.prn(vcc));
defparam \data_out[3] .is_wysiwyg = "true";
defparam \data_out[3] .power_up = "low";

dffeas \data_out[4] (
	.clk(clk),
	.d(\data_out~4_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_91),
	.q(data_out_4),
	.prn(vcc));
defparam \data_out[4] .is_wysiwyg = "true";
defparam \data_out[4] .power_up = "low";

dffeas \data_out[5] (
	.clk(clk),
	.d(\data_out~5_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_91),
	.q(data_out_5),
	.prn(vcc));
defparam \data_out[5] .is_wysiwyg = "true";
defparam \data_out[5] .power_up = "low";

dffeas \data_out[6] (
	.clk(clk),
	.d(\data_out~6_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_91),
	.q(data_out_6),
	.prn(vcc));
defparam \data_out[6] .is_wysiwyg = "true";
defparam \data_out[6] .power_up = "low";

dffeas \data_out[7] (
	.clk(clk),
	.d(\data_out~7_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_91),
	.q(data_out_7),
	.prn(vcc));
defparam \data_out[7] .is_wysiwyg = "true";
defparam \data_out[7] .power_up = "low";

dffeas \data_out[8] (
	.clk(clk),
	.d(\data_out~8_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_91),
	.q(data_out_8),
	.prn(vcc));
defparam \data_out[8] .is_wysiwyg = "true";
defparam \data_out[8] .power_up = "low";

dffeas \data_out[9] (
	.clk(clk),
	.d(\data_out~9_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_91),
	.q(data_out_9),
	.prn(vcc));
defparam \data_out[9] .is_wysiwyg = "true";
defparam \data_out[9] .power_up = "low";

cycloneive_lcell_comb \data_out~0 (
	.dataa(reset_n),
	.datab(sin_o_0),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\data_out~0_combout ),
	.cout());
defparam \data_out~0 .lut_mask = 16'hEEEE;
defparam \data_out~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \data_out~1 (
	.dataa(reset_n),
	.datab(sin_o_1),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\data_out~1_combout ),
	.cout());
defparam \data_out~1 .lut_mask = 16'hEEEE;
defparam \data_out~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \data_out~2 (
	.dataa(reset_n),
	.datab(sin_o_2),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\data_out~2_combout ),
	.cout());
defparam \data_out~2 .lut_mask = 16'hEEEE;
defparam \data_out~2 .sum_lutc_input = "datac";

cycloneive_lcell_comb \data_out~3 (
	.dataa(reset_n),
	.datab(sin_o_3),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\data_out~3_combout ),
	.cout());
defparam \data_out~3 .lut_mask = 16'hEEEE;
defparam \data_out~3 .sum_lutc_input = "datac";

cycloneive_lcell_comb \data_out~4 (
	.dataa(reset_n),
	.datab(sin_o_4),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\data_out~4_combout ),
	.cout());
defparam \data_out~4 .lut_mask = 16'hEEEE;
defparam \data_out~4 .sum_lutc_input = "datac";

cycloneive_lcell_comb \data_out~5 (
	.dataa(reset_n),
	.datab(sin_o_5),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\data_out~5_combout ),
	.cout());
defparam \data_out~5 .lut_mask = 16'hEEEE;
defparam \data_out~5 .sum_lutc_input = "datac";

cycloneive_lcell_comb \data_out~6 (
	.dataa(reset_n),
	.datab(sin_o_6),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\data_out~6_combout ),
	.cout());
defparam \data_out~6 .lut_mask = 16'hEEEE;
defparam \data_out~6 .sum_lutc_input = "datac";

cycloneive_lcell_comb \data_out~7 (
	.dataa(reset_n),
	.datab(sin_o_7),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\data_out~7_combout ),
	.cout());
defparam \data_out~7 .lut_mask = 16'hEEEE;
defparam \data_out~7 .sum_lutc_input = "datac";

cycloneive_lcell_comb \data_out~8 (
	.dataa(reset_n),
	.datab(sin_o_8),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\data_out~8_combout ),
	.cout());
defparam \data_out~8 .lut_mask = 16'hEEEE;
defparam \data_out~8 .sum_lutc_input = "datac";

cycloneive_lcell_comb \data_out~9 (
	.dataa(reset_n),
	.datab(sin_o_9),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\data_out~9_combout ),
	.cout());
defparam \data_out~9 .lut_mask = 16'hEEEE;
defparam \data_out~9 .sum_lutc_input = "datac";

endmodule

module oc_segment_arr_tdl (
	sin_o_9,
	seg_rot_2,
	seg_rot_1,
	seg_rot_0,
	dxxpdo_18,
	dxxpdo_20,
	dxxpdo_19,
	reset_n,
	clk)/* synthesis synthesis_greybox=1 */;
input 	sin_o_9;
output 	seg_rot_2;
output 	seg_rot_1;
output 	seg_rot_0;
input 	dxxpdo_18;
input 	dxxpdo_20;
input 	dxxpdo_19;
input 	reset_n;
input 	clk;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \segment_arr~9_combout ;
wire \segment_arr[0][2]~q ;
wire \segment_arr~6_combout ;
wire \segment_arr[1][2]~q ;
wire \segment_arr~3_combout ;
wire \segment_arr[2][2]~q ;
wire \segment_arr~0_combout ;
wire \segment_arr[3][2]~q ;
wire \seg_rot~0_combout ;
wire \segment_arr~10_combout ;
wire \segment_arr[0][1]~q ;
wire \segment_arr~7_combout ;
wire \segment_arr[1][1]~q ;
wire \segment_arr~4_combout ;
wire \segment_arr[2][1]~q ;
wire \segment_arr~1_combout ;
wire \segment_arr[3][1]~q ;
wire \seg_rot~1_combout ;
wire \segment_arr~11_combout ;
wire \segment_arr[0][0]~q ;
wire \segment_arr~8_combout ;
wire \segment_arr[1][0]~q ;
wire \segment_arr~5_combout ;
wire \segment_arr[2][0]~q ;
wire \segment_arr~2_combout ;
wire \segment_arr[3][0]~q ;
wire \seg_rot~2_combout ;


dffeas \seg_rot[2] (
	.clk(clk),
	.d(\seg_rot~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(seg_rot_2),
	.prn(vcc));
defparam \seg_rot[2] .is_wysiwyg = "true";
defparam \seg_rot[2] .power_up = "low";

dffeas \seg_rot[1] (
	.clk(clk),
	.d(\seg_rot~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(seg_rot_1),
	.prn(vcc));
defparam \seg_rot[1] .is_wysiwyg = "true";
defparam \seg_rot[1] .power_up = "low";

dffeas \seg_rot[0] (
	.clk(clk),
	.d(\seg_rot~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(seg_rot_0),
	.prn(vcc));
defparam \seg_rot[0] .is_wysiwyg = "true";
defparam \seg_rot[0] .power_up = "low";

cycloneive_lcell_comb \segment_arr~9 (
	.dataa(reset_n),
	.datab(dxxpdo_20),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\segment_arr~9_combout ),
	.cout());
defparam \segment_arr~9 .lut_mask = 16'hEEEE;
defparam \segment_arr~9 .sum_lutc_input = "datac";

dffeas \segment_arr[0][2] (
	.clk(clk),
	.d(\segment_arr~9_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\segment_arr[0][2]~q ),
	.prn(vcc));
defparam \segment_arr[0][2] .is_wysiwyg = "true";
defparam \segment_arr[0][2] .power_up = "low";

cycloneive_lcell_comb \segment_arr~6 (
	.dataa(reset_n),
	.datab(\segment_arr[0][2]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\segment_arr~6_combout ),
	.cout());
defparam \segment_arr~6 .lut_mask = 16'hEEEE;
defparam \segment_arr~6 .sum_lutc_input = "datac";

dffeas \segment_arr[1][2] (
	.clk(clk),
	.d(\segment_arr~6_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\segment_arr[1][2]~q ),
	.prn(vcc));
defparam \segment_arr[1][2] .is_wysiwyg = "true";
defparam \segment_arr[1][2] .power_up = "low";

cycloneive_lcell_comb \segment_arr~3 (
	.dataa(reset_n),
	.datab(\segment_arr[1][2]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\segment_arr~3_combout ),
	.cout());
defparam \segment_arr~3 .lut_mask = 16'hEEEE;
defparam \segment_arr~3 .sum_lutc_input = "datac";

dffeas \segment_arr[2][2] (
	.clk(clk),
	.d(\segment_arr~3_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\segment_arr[2][2]~q ),
	.prn(vcc));
defparam \segment_arr[2][2] .is_wysiwyg = "true";
defparam \segment_arr[2][2] .power_up = "low";

cycloneive_lcell_comb \segment_arr~0 (
	.dataa(reset_n),
	.datab(\segment_arr[2][2]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\segment_arr~0_combout ),
	.cout());
defparam \segment_arr~0 .lut_mask = 16'hEEEE;
defparam \segment_arr~0 .sum_lutc_input = "datac";

dffeas \segment_arr[3][2] (
	.clk(clk),
	.d(\segment_arr~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\segment_arr[3][2]~q ),
	.prn(vcc));
defparam \segment_arr[3][2] .is_wysiwyg = "true";
defparam \segment_arr[3][2] .power_up = "low";

cycloneive_lcell_comb \seg_rot~0 (
	.dataa(reset_n),
	.datab(\segment_arr[3][2]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\seg_rot~0_combout ),
	.cout());
defparam \seg_rot~0 .lut_mask = 16'hEEEE;
defparam \seg_rot~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \segment_arr~10 (
	.dataa(reset_n),
	.datab(dxxpdo_19),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\segment_arr~10_combout ),
	.cout());
defparam \segment_arr~10 .lut_mask = 16'hEEEE;
defparam \segment_arr~10 .sum_lutc_input = "datac";

dffeas \segment_arr[0][1] (
	.clk(clk),
	.d(\segment_arr~10_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\segment_arr[0][1]~q ),
	.prn(vcc));
defparam \segment_arr[0][1] .is_wysiwyg = "true";
defparam \segment_arr[0][1] .power_up = "low";

cycloneive_lcell_comb \segment_arr~7 (
	.dataa(reset_n),
	.datab(\segment_arr[0][1]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\segment_arr~7_combout ),
	.cout());
defparam \segment_arr~7 .lut_mask = 16'hEEEE;
defparam \segment_arr~7 .sum_lutc_input = "datac";

dffeas \segment_arr[1][1] (
	.clk(clk),
	.d(\segment_arr~7_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\segment_arr[1][1]~q ),
	.prn(vcc));
defparam \segment_arr[1][1] .is_wysiwyg = "true";
defparam \segment_arr[1][1] .power_up = "low";

cycloneive_lcell_comb \segment_arr~4 (
	.dataa(reset_n),
	.datab(\segment_arr[1][1]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\segment_arr~4_combout ),
	.cout());
defparam \segment_arr~4 .lut_mask = 16'hEEEE;
defparam \segment_arr~4 .sum_lutc_input = "datac";

dffeas \segment_arr[2][1] (
	.clk(clk),
	.d(\segment_arr~4_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\segment_arr[2][1]~q ),
	.prn(vcc));
defparam \segment_arr[2][1] .is_wysiwyg = "true";
defparam \segment_arr[2][1] .power_up = "low";

cycloneive_lcell_comb \segment_arr~1 (
	.dataa(reset_n),
	.datab(\segment_arr[2][1]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\segment_arr~1_combout ),
	.cout());
defparam \segment_arr~1 .lut_mask = 16'hEEEE;
defparam \segment_arr~1 .sum_lutc_input = "datac";

dffeas \segment_arr[3][1] (
	.clk(clk),
	.d(\segment_arr~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\segment_arr[3][1]~q ),
	.prn(vcc));
defparam \segment_arr[3][1] .is_wysiwyg = "true";
defparam \segment_arr[3][1] .power_up = "low";

cycloneive_lcell_comb \seg_rot~1 (
	.dataa(reset_n),
	.datab(\segment_arr[3][1]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\seg_rot~1_combout ),
	.cout());
defparam \seg_rot~1 .lut_mask = 16'hEEEE;
defparam \seg_rot~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \segment_arr~11 (
	.dataa(reset_n),
	.datab(dxxpdo_18),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\segment_arr~11_combout ),
	.cout());
defparam \segment_arr~11 .lut_mask = 16'hEEEE;
defparam \segment_arr~11 .sum_lutc_input = "datac";

dffeas \segment_arr[0][0] (
	.clk(clk),
	.d(\segment_arr~11_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\segment_arr[0][0]~q ),
	.prn(vcc));
defparam \segment_arr[0][0] .is_wysiwyg = "true";
defparam \segment_arr[0][0] .power_up = "low";

cycloneive_lcell_comb \segment_arr~8 (
	.dataa(reset_n),
	.datab(\segment_arr[0][0]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\segment_arr~8_combout ),
	.cout());
defparam \segment_arr~8 .lut_mask = 16'hEEEE;
defparam \segment_arr~8 .sum_lutc_input = "datac";

dffeas \segment_arr[1][0] (
	.clk(clk),
	.d(\segment_arr~8_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\segment_arr[1][0]~q ),
	.prn(vcc));
defparam \segment_arr[1][0] .is_wysiwyg = "true";
defparam \segment_arr[1][0] .power_up = "low";

cycloneive_lcell_comb \segment_arr~5 (
	.dataa(reset_n),
	.datab(\segment_arr[1][0]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\segment_arr~5_combout ),
	.cout());
defparam \segment_arr~5 .lut_mask = 16'hEEEE;
defparam \segment_arr~5 .sum_lutc_input = "datac";

dffeas \segment_arr[2][0] (
	.clk(clk),
	.d(\segment_arr~5_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\segment_arr[2][0]~q ),
	.prn(vcc));
defparam \segment_arr[2][0] .is_wysiwyg = "true";
defparam \segment_arr[2][0] .power_up = "low";

cycloneive_lcell_comb \segment_arr~2 (
	.dataa(reset_n),
	.datab(\segment_arr[2][0]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\segment_arr~2_combout ),
	.cout());
defparam \segment_arr~2 .lut_mask = 16'hEEEE;
defparam \segment_arr~2 .sum_lutc_input = "datac";

dffeas \segment_arr[3][0] (
	.clk(clk),
	.d(\segment_arr~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\segment_arr[3][0]~q ),
	.prn(vcc));
defparam \segment_arr[3][0] .is_wysiwyg = "true";
defparam \segment_arr[3][0] .power_up = "low";

cycloneive_lcell_comb \seg_rot~2 (
	.dataa(reset_n),
	.datab(\segment_arr[3][0]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\seg_rot~2_combout ),
	.cout());
defparam \seg_rot~2 .lut_mask = 16'hEEEE;
defparam \seg_rot~2 .sum_lutc_input = "datac";

endmodule

module oc_segment_sel_sgl (
	sin_o_0,
	sin_o_1,
	sin_o_2,
	sin_o_3,
	sin_o_4,
	sin_o_5,
	sin_o_6,
	sin_o_7,
	sin_o_8,
	sin_o_9,
	sin_rom_2c_0,
	cos_rom_2c_0,
	sin_rom_2c_1,
	cos_rom_2c_1,
	sin_rom_2c_2,
	cos_rom_2c_2,
	sin_rom_2c_3,
	cos_rom_2c_3,
	sin_rom_2c_4,
	cos_rom_2c_4,
	sin_rom_2c_5,
	cos_rom_2c_5,
	sin_rom_2c_6,
	cos_rom_2c_6,
	sin_rom_2c_7,
	cos_rom_2c_7,
	sin_rom_2c_8,
	cos_rom_2c_8,
	cos_rom_2c_9,
	sin_rom_2c_9,
	sin_o_91,
	seg_rot_2,
	cos_rom_d_0,
	seg_rot_1,
	seg_rot_0,
	sin_rom_d_0,
	cos_rom_d_1,
	sin_rom_d_1,
	cos_rom_d_2,
	sin_rom_d_2,
	cos_rom_d_3,
	sin_rom_d_3,
	cos_rom_d_4,
	sin_rom_d_4,
	cos_rom_d_5,
	sin_rom_d_5,
	cos_rom_d_6,
	sin_rom_d_6,
	cos_rom_d_7,
	sin_rom_d_7,
	cos_rom_d_8,
	sin_rom_d_8,
	reset_n,
	clk,
	clken)/* synthesis synthesis_greybox=1 */;
output 	sin_o_0;
output 	sin_o_1;
output 	sin_o_2;
output 	sin_o_3;
output 	sin_o_4;
output 	sin_o_5;
output 	sin_o_6;
output 	sin_o_7;
output 	sin_o_8;
output 	sin_o_9;
input 	sin_rom_2c_0;
input 	cos_rom_2c_0;
input 	sin_rom_2c_1;
input 	cos_rom_2c_1;
input 	sin_rom_2c_2;
input 	cos_rom_2c_2;
input 	sin_rom_2c_3;
input 	cos_rom_2c_3;
input 	sin_rom_2c_4;
input 	cos_rom_2c_4;
input 	sin_rom_2c_5;
input 	cos_rom_2c_5;
input 	sin_rom_2c_6;
input 	cos_rom_2c_6;
input 	sin_rom_2c_7;
input 	cos_rom_2c_7;
input 	sin_rom_2c_8;
input 	cos_rom_2c_8;
input 	cos_rom_2c_9;
input 	sin_rom_2c_9;
output 	sin_o_91;
input 	seg_rot_2;
input 	cos_rom_d_0;
input 	seg_rot_1;
input 	seg_rot_0;
input 	sin_rom_d_0;
input 	cos_rom_d_1;
input 	sin_rom_d_1;
input 	cos_rom_d_2;
input 	sin_rom_d_2;
input 	cos_rom_d_3;
input 	sin_rom_d_3;
input 	cos_rom_d_4;
input 	sin_rom_d_4;
input 	cos_rom_d_5;
input 	sin_rom_d_5;
input 	cos_rom_d_6;
input 	sin_rom_d_6;
input 	cos_rom_d_7;
input 	sin_rom_d_7;
input 	cos_rom_d_8;
input 	sin_rom_d_8;
input 	reset_n;
input 	clk;
input 	clken;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \sin_o[0]~1_combout ;
wire \sin_o~2_combout ;
wire \sin_o~3_combout ;
wire \sin_o~4_combout ;
wire \sin_o~5_combout ;
wire \sin_o~6_combout ;
wire \sin_o~7_combout ;
wire \sin_o~8_combout ;
wire \sin_o~9_combout ;
wire \sin_o~10_combout ;
wire \sin_o~11_combout ;
wire \sin_o~12_combout ;
wire \sin_o~13_combout ;
wire \sin_o~14_combout ;
wire \sin_o~15_combout ;
wire \sin_o~16_combout ;
wire \sin_o~17_combout ;
wire \sin_o~18_combout ;
wire \sin_o~19_combout ;
wire \Mux0~0_combout ;


dffeas \sin_o[0] (
	.clk(clk),
	.d(\sin_o~3_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(sin_o_91),
	.q(sin_o_0),
	.prn(vcc));
defparam \sin_o[0] .is_wysiwyg = "true";
defparam \sin_o[0] .power_up = "low";

dffeas \sin_o[1] (
	.clk(clk),
	.d(\sin_o~5_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(sin_o_91),
	.q(sin_o_1),
	.prn(vcc));
defparam \sin_o[1] .is_wysiwyg = "true";
defparam \sin_o[1] .power_up = "low";

dffeas \sin_o[2] (
	.clk(clk),
	.d(\sin_o~7_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(sin_o_91),
	.q(sin_o_2),
	.prn(vcc));
defparam \sin_o[2] .is_wysiwyg = "true";
defparam \sin_o[2] .power_up = "low";

dffeas \sin_o[3] (
	.clk(clk),
	.d(\sin_o~9_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(sin_o_91),
	.q(sin_o_3),
	.prn(vcc));
defparam \sin_o[3] .is_wysiwyg = "true";
defparam \sin_o[3] .power_up = "low";

dffeas \sin_o[4] (
	.clk(clk),
	.d(\sin_o~11_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(sin_o_91),
	.q(sin_o_4),
	.prn(vcc));
defparam \sin_o[4] .is_wysiwyg = "true";
defparam \sin_o[4] .power_up = "low";

dffeas \sin_o[5] (
	.clk(clk),
	.d(\sin_o~13_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(sin_o_91),
	.q(sin_o_5),
	.prn(vcc));
defparam \sin_o[5] .is_wysiwyg = "true";
defparam \sin_o[5] .power_up = "low";

dffeas \sin_o[6] (
	.clk(clk),
	.d(\sin_o~15_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(sin_o_91),
	.q(sin_o_6),
	.prn(vcc));
defparam \sin_o[6] .is_wysiwyg = "true";
defparam \sin_o[6] .power_up = "low";

dffeas \sin_o[7] (
	.clk(clk),
	.d(\sin_o~17_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(sin_o_91),
	.q(sin_o_7),
	.prn(vcc));
defparam \sin_o[7] .is_wysiwyg = "true";
defparam \sin_o[7] .power_up = "low";

dffeas \sin_o[8] (
	.clk(clk),
	.d(\sin_o~19_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(sin_o_91),
	.q(sin_o_8),
	.prn(vcc));
defparam \sin_o[8] .is_wysiwyg = "true";
defparam \sin_o[8] .power_up = "low";

dffeas \sin_o[9] (
	.clk(clk),
	.d(\Mux0~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(sin_o_91),
	.q(sin_o_9),
	.prn(vcc));
defparam \sin_o[9] .is_wysiwyg = "true";
defparam \sin_o[9] .power_up = "low";

cycloneive_lcell_comb \sin_o[9]~0 (
	.dataa(clken),
	.datab(gnd),
	.datac(gnd),
	.datad(reset_n),
	.cin(gnd),
	.combout(sin_o_91),
	.cout());
defparam \sin_o[9]~0 .lut_mask = 16'hAAFF;
defparam \sin_o[9]~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_o[0]~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(seg_rot_1),
	.datad(seg_rot_0),
	.cin(gnd),
	.combout(\sin_o[0]~1_combout ),
	.cout());
defparam \sin_o[0]~1 .lut_mask = 16'h0FF0;
defparam \sin_o[0]~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_o~2 (
	.dataa(seg_rot_2),
	.datab(cos_rom_d_0),
	.datac(\sin_o[0]~1_combout ),
	.datad(sin_rom_d_0),
	.cin(gnd),
	.combout(\sin_o~2_combout ),
	.cout());
defparam \sin_o~2 .lut_mask = 16'hFFDE;
defparam \sin_o~2 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_o~3 (
	.dataa(sin_rom_2c_0),
	.datab(seg_rot_2),
	.datac(\sin_o~2_combout ),
	.datad(cos_rom_2c_0),
	.cin(gnd),
	.combout(\sin_o~3_combout ),
	.cout());
defparam \sin_o~3 .lut_mask = 16'hFFBE;
defparam \sin_o~3 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_o~4 (
	.dataa(\sin_o[0]~1_combout ),
	.datab(sin_rom_2c_1),
	.datac(seg_rot_2),
	.datad(sin_rom_d_1),
	.cin(gnd),
	.combout(\sin_o~4_combout ),
	.cout());
defparam \sin_o~4 .lut_mask = 16'hFFDE;
defparam \sin_o~4 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_o~5 (
	.dataa(cos_rom_d_1),
	.datab(\sin_o[0]~1_combout ),
	.datac(\sin_o~4_combout ),
	.datad(cos_rom_2c_1),
	.cin(gnd),
	.combout(\sin_o~5_combout ),
	.cout());
defparam \sin_o~5 .lut_mask = 16'hFFBE;
defparam \sin_o~5 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_o~6 (
	.dataa(seg_rot_2),
	.datab(cos_rom_d_2),
	.datac(\sin_o[0]~1_combout ),
	.datad(sin_rom_d_2),
	.cin(gnd),
	.combout(\sin_o~6_combout ),
	.cout());
defparam \sin_o~6 .lut_mask = 16'hFFDE;
defparam \sin_o~6 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_o~7 (
	.dataa(sin_rom_2c_2),
	.datab(seg_rot_2),
	.datac(\sin_o~6_combout ),
	.datad(cos_rom_2c_2),
	.cin(gnd),
	.combout(\sin_o~7_combout ),
	.cout());
defparam \sin_o~7 .lut_mask = 16'hFFBE;
defparam \sin_o~7 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_o~8 (
	.dataa(\sin_o[0]~1_combout ),
	.datab(sin_rom_2c_3),
	.datac(seg_rot_2),
	.datad(sin_rom_d_3),
	.cin(gnd),
	.combout(\sin_o~8_combout ),
	.cout());
defparam \sin_o~8 .lut_mask = 16'hFFDE;
defparam \sin_o~8 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_o~9 (
	.dataa(cos_rom_d_3),
	.datab(\sin_o[0]~1_combout ),
	.datac(\sin_o~8_combout ),
	.datad(cos_rom_2c_3),
	.cin(gnd),
	.combout(\sin_o~9_combout ),
	.cout());
defparam \sin_o~9 .lut_mask = 16'hFFBE;
defparam \sin_o~9 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_o~10 (
	.dataa(seg_rot_2),
	.datab(cos_rom_d_4),
	.datac(\sin_o[0]~1_combout ),
	.datad(sin_rom_d_4),
	.cin(gnd),
	.combout(\sin_o~10_combout ),
	.cout());
defparam \sin_o~10 .lut_mask = 16'hFFDE;
defparam \sin_o~10 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_o~11 (
	.dataa(sin_rom_2c_4),
	.datab(seg_rot_2),
	.datac(\sin_o~10_combout ),
	.datad(cos_rom_2c_4),
	.cin(gnd),
	.combout(\sin_o~11_combout ),
	.cout());
defparam \sin_o~11 .lut_mask = 16'hFFBE;
defparam \sin_o~11 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_o~12 (
	.dataa(\sin_o[0]~1_combout ),
	.datab(sin_rom_2c_5),
	.datac(seg_rot_2),
	.datad(sin_rom_d_5),
	.cin(gnd),
	.combout(\sin_o~12_combout ),
	.cout());
defparam \sin_o~12 .lut_mask = 16'hFFDE;
defparam \sin_o~12 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_o~13 (
	.dataa(cos_rom_d_5),
	.datab(\sin_o[0]~1_combout ),
	.datac(\sin_o~12_combout ),
	.datad(cos_rom_2c_5),
	.cin(gnd),
	.combout(\sin_o~13_combout ),
	.cout());
defparam \sin_o~13 .lut_mask = 16'hFFBE;
defparam \sin_o~13 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_o~14 (
	.dataa(seg_rot_2),
	.datab(cos_rom_d_6),
	.datac(\sin_o[0]~1_combout ),
	.datad(sin_rom_d_6),
	.cin(gnd),
	.combout(\sin_o~14_combout ),
	.cout());
defparam \sin_o~14 .lut_mask = 16'hFFDE;
defparam \sin_o~14 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_o~15 (
	.dataa(sin_rom_2c_6),
	.datab(seg_rot_2),
	.datac(\sin_o~14_combout ),
	.datad(cos_rom_2c_6),
	.cin(gnd),
	.combout(\sin_o~15_combout ),
	.cout());
defparam \sin_o~15 .lut_mask = 16'hFFBE;
defparam \sin_o~15 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_o~16 (
	.dataa(\sin_o[0]~1_combout ),
	.datab(sin_rom_2c_7),
	.datac(seg_rot_2),
	.datad(sin_rom_d_7),
	.cin(gnd),
	.combout(\sin_o~16_combout ),
	.cout());
defparam \sin_o~16 .lut_mask = 16'hFFDE;
defparam \sin_o~16 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_o~17 (
	.dataa(cos_rom_d_7),
	.datab(\sin_o[0]~1_combout ),
	.datac(\sin_o~16_combout ),
	.datad(cos_rom_2c_7),
	.cin(gnd),
	.combout(\sin_o~17_combout ),
	.cout());
defparam \sin_o~17 .lut_mask = 16'hFFBE;
defparam \sin_o~17 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_o~18 (
	.dataa(seg_rot_2),
	.datab(cos_rom_d_8),
	.datac(\sin_o[0]~1_combout ),
	.datad(sin_rom_d_8),
	.cin(gnd),
	.combout(\sin_o~18_combout ),
	.cout());
defparam \sin_o~18 .lut_mask = 16'hFFDE;
defparam \sin_o~18 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_o~19 (
	.dataa(sin_rom_2c_8),
	.datab(seg_rot_2),
	.datac(\sin_o~18_combout ),
	.datad(cos_rom_2c_8),
	.cin(gnd),
	.combout(\sin_o~19_combout ),
	.cout());
defparam \sin_o~19 .lut_mask = 16'hFFBE;
defparam \sin_o~19 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Mux0~0 (
	.dataa(seg_rot_2),
	.datab(cos_rom_2c_9),
	.datac(sin_rom_2c_9),
	.datad(\sin_o[0]~1_combout ),
	.cin(gnd),
	.combout(\Mux0~0_combout ),
	.cout());
defparam \Mux0~0 .lut_mask = 16'hFAFC;
defparam \Mux0~0 .sum_lutc_input = "datac";

endmodule

module oc_sid_2c_1p (
	sin_rom_2c_0,
	cos_rom_2c_0,
	sin_rom_2c_1,
	cos_rom_2c_1,
	sin_rom_2c_2,
	cos_rom_2c_2,
	sin_rom_2c_3,
	cos_rom_2c_3,
	sin_rom_2c_4,
	cos_rom_2c_4,
	sin_rom_2c_5,
	cos_rom_2c_5,
	sin_rom_2c_6,
	cos_rom_2c_6,
	sin_rom_2c_7,
	cos_rom_2c_7,
	sin_rom_2c_8,
	cos_rom_2c_8,
	cos_rom_2c_9,
	sin_rom_2c_9,
	q_a_0,
	q_a_01,
	q_a_1,
	q_a_11,
	q_a_2,
	q_a_21,
	q_a_3,
	q_a_31,
	q_a_4,
	q_a_41,
	q_a_5,
	q_a_51,
	q_a_6,
	q_a_61,
	q_a_7,
	q_a_71,
	q_a_8,
	q_a_81,
	sin_o_9,
	cos_rom_d_0,
	sin_rom_d_0,
	cos_rom_d_1,
	sin_rom_d_1,
	cos_rom_d_2,
	sin_rom_d_2,
	cos_rom_d_3,
	sin_rom_d_3,
	cos_rom_d_4,
	sin_rom_d_4,
	cos_rom_d_5,
	sin_rom_d_5,
	cos_rom_d_6,
	sin_rom_d_6,
	cos_rom_d_7,
	sin_rom_d_7,
	cos_rom_d_8,
	sin_rom_d_8,
	reset_n,
	clk)/* synthesis synthesis_greybox=1 */;
output 	sin_rom_2c_0;
output 	cos_rom_2c_0;
output 	sin_rom_2c_1;
output 	cos_rom_2c_1;
output 	sin_rom_2c_2;
output 	cos_rom_2c_2;
output 	sin_rom_2c_3;
output 	cos_rom_2c_3;
output 	sin_rom_2c_4;
output 	cos_rom_2c_4;
output 	sin_rom_2c_5;
output 	cos_rom_2c_5;
output 	sin_rom_2c_6;
output 	cos_rom_2c_6;
output 	sin_rom_2c_7;
output 	cos_rom_2c_7;
output 	sin_rom_2c_8;
output 	cos_rom_2c_8;
output 	cos_rom_2c_9;
output 	sin_rom_2c_9;
input 	q_a_0;
input 	q_a_01;
input 	q_a_1;
input 	q_a_11;
input 	q_a_2;
input 	q_a_21;
input 	q_a_3;
input 	q_a_31;
input 	q_a_4;
input 	q_a_41;
input 	q_a_5;
input 	q_a_51;
input 	q_a_6;
input 	q_a_61;
input 	q_a_7;
input 	q_a_71;
input 	q_a_8;
input 	q_a_81;
input 	sin_o_9;
output 	cos_rom_d_0;
output 	sin_rom_d_0;
output 	cos_rom_d_1;
output 	sin_rom_d_1;
output 	cos_rom_d_2;
output 	sin_rom_d_2;
output 	cos_rom_d_3;
output 	sin_rom_d_3;
output 	cos_rom_d_4;
output 	sin_rom_d_4;
output 	cos_rom_d_5;
output 	sin_rom_d_5;
output 	cos_rom_d_6;
output 	sin_rom_d_6;
output 	cos_rom_d_7;
output 	sin_rom_d_7;
output 	cos_rom_d_8;
output 	sin_rom_d_8;
input 	reset_n;
input 	clk;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \sin_reg~0_combout ;
wire \sin_reg[0]~q ;
wire \sin_rom_2c[0]~10_combout ;
wire \cos_reg~0_combout ;
wire \cos_reg[0]~q ;
wire \cos_rom_2c[0]~10_combout ;
wire \sin_reg~1_combout ;
wire \sin_reg[1]~q ;
wire \sin_rom_2c[0]~11 ;
wire \sin_rom_2c[1]~12_combout ;
wire \cos_reg~1_combout ;
wire \cos_reg[1]~q ;
wire \cos_rom_2c[0]~11 ;
wire \cos_rom_2c[1]~12_combout ;
wire \sin_reg~2_combout ;
wire \sin_reg[2]~q ;
wire \sin_rom_2c[1]~13 ;
wire \sin_rom_2c[2]~14_combout ;
wire \cos_reg~2_combout ;
wire \cos_reg[2]~q ;
wire \cos_rom_2c[1]~13 ;
wire \cos_rom_2c[2]~14_combout ;
wire \sin_reg~3_combout ;
wire \sin_reg[3]~q ;
wire \sin_rom_2c[2]~15 ;
wire \sin_rom_2c[3]~16_combout ;
wire \cos_reg~3_combout ;
wire \cos_reg[3]~q ;
wire \cos_rom_2c[2]~15 ;
wire \cos_rom_2c[3]~16_combout ;
wire \sin_reg~4_combout ;
wire \sin_reg[4]~q ;
wire \sin_rom_2c[3]~17 ;
wire \sin_rom_2c[4]~18_combout ;
wire \cos_reg~4_combout ;
wire \cos_reg[4]~q ;
wire \cos_rom_2c[3]~17 ;
wire \cos_rom_2c[4]~18_combout ;
wire \sin_reg~5_combout ;
wire \sin_reg[5]~q ;
wire \sin_rom_2c[4]~19 ;
wire \sin_rom_2c[5]~20_combout ;
wire \cos_reg~5_combout ;
wire \cos_reg[5]~q ;
wire \cos_rom_2c[4]~19 ;
wire \cos_rom_2c[5]~20_combout ;
wire \sin_reg~6_combout ;
wire \sin_reg[6]~q ;
wire \sin_rom_2c[5]~21 ;
wire \sin_rom_2c[6]~22_combout ;
wire \cos_reg~6_combout ;
wire \cos_reg[6]~q ;
wire \cos_rom_2c[5]~21 ;
wire \cos_rom_2c[6]~22_combout ;
wire \sin_reg~7_combout ;
wire \sin_reg[7]~q ;
wire \sin_rom_2c[6]~23 ;
wire \sin_rom_2c[7]~24_combout ;
wire \cos_reg~7_combout ;
wire \cos_reg[7]~q ;
wire \cos_rom_2c[6]~23 ;
wire \cos_rom_2c[7]~24_combout ;
wire \sin_reg~8_combout ;
wire \sin_reg[8]~q ;
wire \sin_rom_2c[7]~25 ;
wire \sin_rom_2c[8]~26_combout ;
wire \cos_reg~8_combout ;
wire \cos_reg[8]~q ;
wire \cos_rom_2c[7]~25 ;
wire \cos_rom_2c[8]~26_combout ;
wire \cos_rom_2c[8]~27 ;
wire \cos_rom_2c[9]~28_combout ;
wire \sin_rom_2c[8]~27 ;
wire \sin_rom_2c[9]~28_combout ;
wire \cos_rom_d~0_combout ;
wire \sin_rom_d~0_combout ;
wire \cos_rom_d~1_combout ;
wire \sin_rom_d~1_combout ;
wire \cos_rom_d~2_combout ;
wire \sin_rom_d~2_combout ;
wire \cos_rom_d~3_combout ;
wire \sin_rom_d~3_combout ;
wire \cos_rom_d~4_combout ;
wire \sin_rom_d~4_combout ;
wire \cos_rom_d~5_combout ;
wire \sin_rom_d~5_combout ;
wire \cos_rom_d~6_combout ;
wire \sin_rom_d~6_combout ;
wire \cos_rom_d~7_combout ;
wire \sin_rom_d~7_combout ;
wire \cos_rom_d~8_combout ;
wire \sin_rom_d~8_combout ;


dffeas \sin_rom_2c[0] (
	.clk(clk),
	.d(\sin_rom_2c[0]~10_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(sin_o_9),
	.q(sin_rom_2c_0),
	.prn(vcc));
defparam \sin_rom_2c[0] .is_wysiwyg = "true";
defparam \sin_rom_2c[0] .power_up = "low";

dffeas \cos_rom_2c[0] (
	.clk(clk),
	.d(\cos_rom_2c[0]~10_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(sin_o_9),
	.q(cos_rom_2c_0),
	.prn(vcc));
defparam \cos_rom_2c[0] .is_wysiwyg = "true";
defparam \cos_rom_2c[0] .power_up = "low";

dffeas \sin_rom_2c[1] (
	.clk(clk),
	.d(\sin_rom_2c[1]~12_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(sin_o_9),
	.q(sin_rom_2c_1),
	.prn(vcc));
defparam \sin_rom_2c[1] .is_wysiwyg = "true";
defparam \sin_rom_2c[1] .power_up = "low";

dffeas \cos_rom_2c[1] (
	.clk(clk),
	.d(\cos_rom_2c[1]~12_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(sin_o_9),
	.q(cos_rom_2c_1),
	.prn(vcc));
defparam \cos_rom_2c[1] .is_wysiwyg = "true";
defparam \cos_rom_2c[1] .power_up = "low";

dffeas \sin_rom_2c[2] (
	.clk(clk),
	.d(\sin_rom_2c[2]~14_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(sin_o_9),
	.q(sin_rom_2c_2),
	.prn(vcc));
defparam \sin_rom_2c[2] .is_wysiwyg = "true";
defparam \sin_rom_2c[2] .power_up = "low";

dffeas \cos_rom_2c[2] (
	.clk(clk),
	.d(\cos_rom_2c[2]~14_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(sin_o_9),
	.q(cos_rom_2c_2),
	.prn(vcc));
defparam \cos_rom_2c[2] .is_wysiwyg = "true";
defparam \cos_rom_2c[2] .power_up = "low";

dffeas \sin_rom_2c[3] (
	.clk(clk),
	.d(\sin_rom_2c[3]~16_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(sin_o_9),
	.q(sin_rom_2c_3),
	.prn(vcc));
defparam \sin_rom_2c[3] .is_wysiwyg = "true";
defparam \sin_rom_2c[3] .power_up = "low";

dffeas \cos_rom_2c[3] (
	.clk(clk),
	.d(\cos_rom_2c[3]~16_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(sin_o_9),
	.q(cos_rom_2c_3),
	.prn(vcc));
defparam \cos_rom_2c[3] .is_wysiwyg = "true";
defparam \cos_rom_2c[3] .power_up = "low";

dffeas \sin_rom_2c[4] (
	.clk(clk),
	.d(\sin_rom_2c[4]~18_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(sin_o_9),
	.q(sin_rom_2c_4),
	.prn(vcc));
defparam \sin_rom_2c[4] .is_wysiwyg = "true";
defparam \sin_rom_2c[4] .power_up = "low";

dffeas \cos_rom_2c[4] (
	.clk(clk),
	.d(\cos_rom_2c[4]~18_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(sin_o_9),
	.q(cos_rom_2c_4),
	.prn(vcc));
defparam \cos_rom_2c[4] .is_wysiwyg = "true";
defparam \cos_rom_2c[4] .power_up = "low";

dffeas \sin_rom_2c[5] (
	.clk(clk),
	.d(\sin_rom_2c[5]~20_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(sin_o_9),
	.q(sin_rom_2c_5),
	.prn(vcc));
defparam \sin_rom_2c[5] .is_wysiwyg = "true";
defparam \sin_rom_2c[5] .power_up = "low";

dffeas \cos_rom_2c[5] (
	.clk(clk),
	.d(\cos_rom_2c[5]~20_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(sin_o_9),
	.q(cos_rom_2c_5),
	.prn(vcc));
defparam \cos_rom_2c[5] .is_wysiwyg = "true";
defparam \cos_rom_2c[5] .power_up = "low";

dffeas \sin_rom_2c[6] (
	.clk(clk),
	.d(\sin_rom_2c[6]~22_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(sin_o_9),
	.q(sin_rom_2c_6),
	.prn(vcc));
defparam \sin_rom_2c[6] .is_wysiwyg = "true";
defparam \sin_rom_2c[6] .power_up = "low";

dffeas \cos_rom_2c[6] (
	.clk(clk),
	.d(\cos_rom_2c[6]~22_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(sin_o_9),
	.q(cos_rom_2c_6),
	.prn(vcc));
defparam \cos_rom_2c[6] .is_wysiwyg = "true";
defparam \cos_rom_2c[6] .power_up = "low";

dffeas \sin_rom_2c[7] (
	.clk(clk),
	.d(\sin_rom_2c[7]~24_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(sin_o_9),
	.q(sin_rom_2c_7),
	.prn(vcc));
defparam \sin_rom_2c[7] .is_wysiwyg = "true";
defparam \sin_rom_2c[7] .power_up = "low";

dffeas \cos_rom_2c[7] (
	.clk(clk),
	.d(\cos_rom_2c[7]~24_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(sin_o_9),
	.q(cos_rom_2c_7),
	.prn(vcc));
defparam \cos_rom_2c[7] .is_wysiwyg = "true";
defparam \cos_rom_2c[7] .power_up = "low";

dffeas \sin_rom_2c[8] (
	.clk(clk),
	.d(\sin_rom_2c[8]~26_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(sin_o_9),
	.q(sin_rom_2c_8),
	.prn(vcc));
defparam \sin_rom_2c[8] .is_wysiwyg = "true";
defparam \sin_rom_2c[8] .power_up = "low";

dffeas \cos_rom_2c[8] (
	.clk(clk),
	.d(\cos_rom_2c[8]~26_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(sin_o_9),
	.q(cos_rom_2c_8),
	.prn(vcc));
defparam \cos_rom_2c[8] .is_wysiwyg = "true";
defparam \cos_rom_2c[8] .power_up = "low";

dffeas \cos_rom_2c[9] (
	.clk(clk),
	.d(\cos_rom_2c[9]~28_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(sin_o_9),
	.q(cos_rom_2c_9),
	.prn(vcc));
defparam \cos_rom_2c[9] .is_wysiwyg = "true";
defparam \cos_rom_2c[9] .power_up = "low";

dffeas \sin_rom_2c[9] (
	.clk(clk),
	.d(\sin_rom_2c[9]~28_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(sin_o_9),
	.q(sin_rom_2c_9),
	.prn(vcc));
defparam \sin_rom_2c[9] .is_wysiwyg = "true";
defparam \sin_rom_2c[9] .power_up = "low";

dffeas \cos_rom_d[0] (
	.clk(clk),
	.d(\cos_rom_d~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(cos_rom_d_0),
	.prn(vcc));
defparam \cos_rom_d[0] .is_wysiwyg = "true";
defparam \cos_rom_d[0] .power_up = "low";

dffeas \sin_rom_d[0] (
	.clk(clk),
	.d(\sin_rom_d~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(sin_rom_d_0),
	.prn(vcc));
defparam \sin_rom_d[0] .is_wysiwyg = "true";
defparam \sin_rom_d[0] .power_up = "low";

dffeas \cos_rom_d[1] (
	.clk(clk),
	.d(\cos_rom_d~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(cos_rom_d_1),
	.prn(vcc));
defparam \cos_rom_d[1] .is_wysiwyg = "true";
defparam \cos_rom_d[1] .power_up = "low";

dffeas \sin_rom_d[1] (
	.clk(clk),
	.d(\sin_rom_d~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(sin_rom_d_1),
	.prn(vcc));
defparam \sin_rom_d[1] .is_wysiwyg = "true";
defparam \sin_rom_d[1] .power_up = "low";

dffeas \cos_rom_d[2] (
	.clk(clk),
	.d(\cos_rom_d~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(cos_rom_d_2),
	.prn(vcc));
defparam \cos_rom_d[2] .is_wysiwyg = "true";
defparam \cos_rom_d[2] .power_up = "low";

dffeas \sin_rom_d[2] (
	.clk(clk),
	.d(\sin_rom_d~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(sin_rom_d_2),
	.prn(vcc));
defparam \sin_rom_d[2] .is_wysiwyg = "true";
defparam \sin_rom_d[2] .power_up = "low";

dffeas \cos_rom_d[3] (
	.clk(clk),
	.d(\cos_rom_d~3_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(cos_rom_d_3),
	.prn(vcc));
defparam \cos_rom_d[3] .is_wysiwyg = "true";
defparam \cos_rom_d[3] .power_up = "low";

dffeas \sin_rom_d[3] (
	.clk(clk),
	.d(\sin_rom_d~3_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(sin_rom_d_3),
	.prn(vcc));
defparam \sin_rom_d[3] .is_wysiwyg = "true";
defparam \sin_rom_d[3] .power_up = "low";

dffeas \cos_rom_d[4] (
	.clk(clk),
	.d(\cos_rom_d~4_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(cos_rom_d_4),
	.prn(vcc));
defparam \cos_rom_d[4] .is_wysiwyg = "true";
defparam \cos_rom_d[4] .power_up = "low";

dffeas \sin_rom_d[4] (
	.clk(clk),
	.d(\sin_rom_d~4_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(sin_rom_d_4),
	.prn(vcc));
defparam \sin_rom_d[4] .is_wysiwyg = "true";
defparam \sin_rom_d[4] .power_up = "low";

dffeas \cos_rom_d[5] (
	.clk(clk),
	.d(\cos_rom_d~5_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(cos_rom_d_5),
	.prn(vcc));
defparam \cos_rom_d[5] .is_wysiwyg = "true";
defparam \cos_rom_d[5] .power_up = "low";

dffeas \sin_rom_d[5] (
	.clk(clk),
	.d(\sin_rom_d~5_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(sin_rom_d_5),
	.prn(vcc));
defparam \sin_rom_d[5] .is_wysiwyg = "true";
defparam \sin_rom_d[5] .power_up = "low";

dffeas \cos_rom_d[6] (
	.clk(clk),
	.d(\cos_rom_d~6_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(cos_rom_d_6),
	.prn(vcc));
defparam \cos_rom_d[6] .is_wysiwyg = "true";
defparam \cos_rom_d[6] .power_up = "low";

dffeas \sin_rom_d[6] (
	.clk(clk),
	.d(\sin_rom_d~6_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(sin_rom_d_6),
	.prn(vcc));
defparam \sin_rom_d[6] .is_wysiwyg = "true";
defparam \sin_rom_d[6] .power_up = "low";

dffeas \cos_rom_d[7] (
	.clk(clk),
	.d(\cos_rom_d~7_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(cos_rom_d_7),
	.prn(vcc));
defparam \cos_rom_d[7] .is_wysiwyg = "true";
defparam \cos_rom_d[7] .power_up = "low";

dffeas \sin_rom_d[7] (
	.clk(clk),
	.d(\sin_rom_d~7_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(sin_rom_d_7),
	.prn(vcc));
defparam \sin_rom_d[7] .is_wysiwyg = "true";
defparam \sin_rom_d[7] .power_up = "low";

dffeas \cos_rom_d[8] (
	.clk(clk),
	.d(\cos_rom_d~8_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(cos_rom_d_8),
	.prn(vcc));
defparam \cos_rom_d[8] .is_wysiwyg = "true";
defparam \cos_rom_d[8] .power_up = "low";

dffeas \sin_rom_d[8] (
	.clk(clk),
	.d(\sin_rom_d~8_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(sin_rom_d_8),
	.prn(vcc));
defparam \sin_rom_d[8] .is_wysiwyg = "true";
defparam \sin_rom_d[8] .power_up = "low";

cycloneive_lcell_comb \sin_reg~0 (
	.dataa(reset_n),
	.datab(q_a_0),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\sin_reg~0_combout ),
	.cout());
defparam \sin_reg~0 .lut_mask = 16'hEEEE;
defparam \sin_reg~0 .sum_lutc_input = "datac";

dffeas \sin_reg[0] (
	.clk(clk),
	.d(\sin_reg~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\sin_reg[0]~q ),
	.prn(vcc));
defparam \sin_reg[0] .is_wysiwyg = "true";
defparam \sin_reg[0] .power_up = "low";

cycloneive_lcell_comb \sin_rom_2c[0]~10 (
	.dataa(\sin_reg[0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(\sin_rom_2c[0]~10_combout ),
	.cout(\sin_rom_2c[0]~11 ));
defparam \sin_rom_2c[0]~10 .lut_mask = 16'hAA55;
defparam \sin_rom_2c[0]~10 .sum_lutc_input = "datac";

cycloneive_lcell_comb \cos_reg~0 (
	.dataa(reset_n),
	.datab(q_a_01),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\cos_reg~0_combout ),
	.cout());
defparam \cos_reg~0 .lut_mask = 16'hEEEE;
defparam \cos_reg~0 .sum_lutc_input = "datac";

dffeas \cos_reg[0] (
	.clk(clk),
	.d(\cos_reg~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\cos_reg[0]~q ),
	.prn(vcc));
defparam \cos_reg[0] .is_wysiwyg = "true";
defparam \cos_reg[0] .power_up = "low";

cycloneive_lcell_comb \cos_rom_2c[0]~10 (
	.dataa(\cos_reg[0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(\cos_rom_2c[0]~10_combout ),
	.cout(\cos_rom_2c[0]~11 ));
defparam \cos_rom_2c[0]~10 .lut_mask = 16'hAA55;
defparam \cos_rom_2c[0]~10 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_reg~1 (
	.dataa(reset_n),
	.datab(q_a_11),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\sin_reg~1_combout ),
	.cout());
defparam \sin_reg~1 .lut_mask = 16'hEEEE;
defparam \sin_reg~1 .sum_lutc_input = "datac";

dffeas \sin_reg[1] (
	.clk(clk),
	.d(\sin_reg~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\sin_reg[1]~q ),
	.prn(vcc));
defparam \sin_reg[1] .is_wysiwyg = "true";
defparam \sin_reg[1] .power_up = "low";

cycloneive_lcell_comb \sin_rom_2c[1]~12 (
	.dataa(\sin_reg[1]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\sin_rom_2c[0]~11 ),
	.combout(\sin_rom_2c[1]~12_combout ),
	.cout(\sin_rom_2c[1]~13 ));
defparam \sin_rom_2c[1]~12 .lut_mask = 16'h5AAF;
defparam \sin_rom_2c[1]~12 .sum_lutc_input = "cin";

cycloneive_lcell_comb \cos_reg~1 (
	.dataa(reset_n),
	.datab(q_a_1),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\cos_reg~1_combout ),
	.cout());
defparam \cos_reg~1 .lut_mask = 16'hEEEE;
defparam \cos_reg~1 .sum_lutc_input = "datac";

dffeas \cos_reg[1] (
	.clk(clk),
	.d(\cos_reg~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\cos_reg[1]~q ),
	.prn(vcc));
defparam \cos_reg[1] .is_wysiwyg = "true";
defparam \cos_reg[1] .power_up = "low";

cycloneive_lcell_comb \cos_rom_2c[1]~12 (
	.dataa(\cos_reg[1]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\cos_rom_2c[0]~11 ),
	.combout(\cos_rom_2c[1]~12_combout ),
	.cout(\cos_rom_2c[1]~13 ));
defparam \cos_rom_2c[1]~12 .lut_mask = 16'h5AAF;
defparam \cos_rom_2c[1]~12 .sum_lutc_input = "cin";

cycloneive_lcell_comb \sin_reg~2 (
	.dataa(reset_n),
	.datab(q_a_2),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\sin_reg~2_combout ),
	.cout());
defparam \sin_reg~2 .lut_mask = 16'hEEEE;
defparam \sin_reg~2 .sum_lutc_input = "datac";

dffeas \sin_reg[2] (
	.clk(clk),
	.d(\sin_reg~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\sin_reg[2]~q ),
	.prn(vcc));
defparam \sin_reg[2] .is_wysiwyg = "true";
defparam \sin_reg[2] .power_up = "low";

cycloneive_lcell_comb \sin_rom_2c[2]~14 (
	.dataa(\sin_reg[2]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\sin_rom_2c[1]~13 ),
	.combout(\sin_rom_2c[2]~14_combout ),
	.cout(\sin_rom_2c[2]~15 ));
defparam \sin_rom_2c[2]~14 .lut_mask = 16'h5A5F;
defparam \sin_rom_2c[2]~14 .sum_lutc_input = "cin";

cycloneive_lcell_comb \cos_reg~2 (
	.dataa(reset_n),
	.datab(q_a_21),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\cos_reg~2_combout ),
	.cout());
defparam \cos_reg~2 .lut_mask = 16'hEEEE;
defparam \cos_reg~2 .sum_lutc_input = "datac";

dffeas \cos_reg[2] (
	.clk(clk),
	.d(\cos_reg~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\cos_reg[2]~q ),
	.prn(vcc));
defparam \cos_reg[2] .is_wysiwyg = "true";
defparam \cos_reg[2] .power_up = "low";

cycloneive_lcell_comb \cos_rom_2c[2]~14 (
	.dataa(\cos_reg[2]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\cos_rom_2c[1]~13 ),
	.combout(\cos_rom_2c[2]~14_combout ),
	.cout(\cos_rom_2c[2]~15 ));
defparam \cos_rom_2c[2]~14 .lut_mask = 16'h5A5F;
defparam \cos_rom_2c[2]~14 .sum_lutc_input = "cin";

cycloneive_lcell_comb \sin_reg~3 (
	.dataa(reset_n),
	.datab(q_a_31),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\sin_reg~3_combout ),
	.cout());
defparam \sin_reg~3 .lut_mask = 16'hEEEE;
defparam \sin_reg~3 .sum_lutc_input = "datac";

dffeas \sin_reg[3] (
	.clk(clk),
	.d(\sin_reg~3_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\sin_reg[3]~q ),
	.prn(vcc));
defparam \sin_reg[3] .is_wysiwyg = "true";
defparam \sin_reg[3] .power_up = "low";

cycloneive_lcell_comb \sin_rom_2c[3]~16 (
	.dataa(\sin_reg[3]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\sin_rom_2c[2]~15 ),
	.combout(\sin_rom_2c[3]~16_combout ),
	.cout(\sin_rom_2c[3]~17 ));
defparam \sin_rom_2c[3]~16 .lut_mask = 16'h5AAF;
defparam \sin_rom_2c[3]~16 .sum_lutc_input = "cin";

cycloneive_lcell_comb \cos_reg~3 (
	.dataa(reset_n),
	.datab(q_a_3),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\cos_reg~3_combout ),
	.cout());
defparam \cos_reg~3 .lut_mask = 16'hEEEE;
defparam \cos_reg~3 .sum_lutc_input = "datac";

dffeas \cos_reg[3] (
	.clk(clk),
	.d(\cos_reg~3_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\cos_reg[3]~q ),
	.prn(vcc));
defparam \cos_reg[3] .is_wysiwyg = "true";
defparam \cos_reg[3] .power_up = "low";

cycloneive_lcell_comb \cos_rom_2c[3]~16 (
	.dataa(\cos_reg[3]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\cos_rom_2c[2]~15 ),
	.combout(\cos_rom_2c[3]~16_combout ),
	.cout(\cos_rom_2c[3]~17 ));
defparam \cos_rom_2c[3]~16 .lut_mask = 16'h5AAF;
defparam \cos_rom_2c[3]~16 .sum_lutc_input = "cin";

cycloneive_lcell_comb \sin_reg~4 (
	.dataa(reset_n),
	.datab(q_a_4),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\sin_reg~4_combout ),
	.cout());
defparam \sin_reg~4 .lut_mask = 16'hEEEE;
defparam \sin_reg~4 .sum_lutc_input = "datac";

dffeas \sin_reg[4] (
	.clk(clk),
	.d(\sin_reg~4_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\sin_reg[4]~q ),
	.prn(vcc));
defparam \sin_reg[4] .is_wysiwyg = "true";
defparam \sin_reg[4] .power_up = "low";

cycloneive_lcell_comb \sin_rom_2c[4]~18 (
	.dataa(\sin_reg[4]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\sin_rom_2c[3]~17 ),
	.combout(\sin_rom_2c[4]~18_combout ),
	.cout(\sin_rom_2c[4]~19 ));
defparam \sin_rom_2c[4]~18 .lut_mask = 16'h5A5F;
defparam \sin_rom_2c[4]~18 .sum_lutc_input = "cin";

cycloneive_lcell_comb \cos_reg~4 (
	.dataa(reset_n),
	.datab(q_a_41),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\cos_reg~4_combout ),
	.cout());
defparam \cos_reg~4 .lut_mask = 16'hEEEE;
defparam \cos_reg~4 .sum_lutc_input = "datac";

dffeas \cos_reg[4] (
	.clk(clk),
	.d(\cos_reg~4_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\cos_reg[4]~q ),
	.prn(vcc));
defparam \cos_reg[4] .is_wysiwyg = "true";
defparam \cos_reg[4] .power_up = "low";

cycloneive_lcell_comb \cos_rom_2c[4]~18 (
	.dataa(\cos_reg[4]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\cos_rom_2c[3]~17 ),
	.combout(\cos_rom_2c[4]~18_combout ),
	.cout(\cos_rom_2c[4]~19 ));
defparam \cos_rom_2c[4]~18 .lut_mask = 16'h5A5F;
defparam \cos_rom_2c[4]~18 .sum_lutc_input = "cin";

cycloneive_lcell_comb \sin_reg~5 (
	.dataa(reset_n),
	.datab(q_a_51),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\sin_reg~5_combout ),
	.cout());
defparam \sin_reg~5 .lut_mask = 16'hEEEE;
defparam \sin_reg~5 .sum_lutc_input = "datac";

dffeas \sin_reg[5] (
	.clk(clk),
	.d(\sin_reg~5_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\sin_reg[5]~q ),
	.prn(vcc));
defparam \sin_reg[5] .is_wysiwyg = "true";
defparam \sin_reg[5] .power_up = "low";

cycloneive_lcell_comb \sin_rom_2c[5]~20 (
	.dataa(\sin_reg[5]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\sin_rom_2c[4]~19 ),
	.combout(\sin_rom_2c[5]~20_combout ),
	.cout(\sin_rom_2c[5]~21 ));
defparam \sin_rom_2c[5]~20 .lut_mask = 16'h5AAF;
defparam \sin_rom_2c[5]~20 .sum_lutc_input = "cin";

cycloneive_lcell_comb \cos_reg~5 (
	.dataa(reset_n),
	.datab(q_a_5),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\cos_reg~5_combout ),
	.cout());
defparam \cos_reg~5 .lut_mask = 16'hEEEE;
defparam \cos_reg~5 .sum_lutc_input = "datac";

dffeas \cos_reg[5] (
	.clk(clk),
	.d(\cos_reg~5_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\cos_reg[5]~q ),
	.prn(vcc));
defparam \cos_reg[5] .is_wysiwyg = "true";
defparam \cos_reg[5] .power_up = "low";

cycloneive_lcell_comb \cos_rom_2c[5]~20 (
	.dataa(\cos_reg[5]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\cos_rom_2c[4]~19 ),
	.combout(\cos_rom_2c[5]~20_combout ),
	.cout(\cos_rom_2c[5]~21 ));
defparam \cos_rom_2c[5]~20 .lut_mask = 16'h5AAF;
defparam \cos_rom_2c[5]~20 .sum_lutc_input = "cin";

cycloneive_lcell_comb \sin_reg~6 (
	.dataa(reset_n),
	.datab(q_a_6),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\sin_reg~6_combout ),
	.cout());
defparam \sin_reg~6 .lut_mask = 16'hEEEE;
defparam \sin_reg~6 .sum_lutc_input = "datac";

dffeas \sin_reg[6] (
	.clk(clk),
	.d(\sin_reg~6_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\sin_reg[6]~q ),
	.prn(vcc));
defparam \sin_reg[6] .is_wysiwyg = "true";
defparam \sin_reg[6] .power_up = "low";

cycloneive_lcell_comb \sin_rom_2c[6]~22 (
	.dataa(\sin_reg[6]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\sin_rom_2c[5]~21 ),
	.combout(\sin_rom_2c[6]~22_combout ),
	.cout(\sin_rom_2c[6]~23 ));
defparam \sin_rom_2c[6]~22 .lut_mask = 16'h5A5F;
defparam \sin_rom_2c[6]~22 .sum_lutc_input = "cin";

cycloneive_lcell_comb \cos_reg~6 (
	.dataa(reset_n),
	.datab(q_a_61),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\cos_reg~6_combout ),
	.cout());
defparam \cos_reg~6 .lut_mask = 16'hEEEE;
defparam \cos_reg~6 .sum_lutc_input = "datac";

dffeas \cos_reg[6] (
	.clk(clk),
	.d(\cos_reg~6_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\cos_reg[6]~q ),
	.prn(vcc));
defparam \cos_reg[6] .is_wysiwyg = "true";
defparam \cos_reg[6] .power_up = "low";

cycloneive_lcell_comb \cos_rom_2c[6]~22 (
	.dataa(\cos_reg[6]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\cos_rom_2c[5]~21 ),
	.combout(\cos_rom_2c[6]~22_combout ),
	.cout(\cos_rom_2c[6]~23 ));
defparam \cos_rom_2c[6]~22 .lut_mask = 16'h5A5F;
defparam \cos_rom_2c[6]~22 .sum_lutc_input = "cin";

cycloneive_lcell_comb \sin_reg~7 (
	.dataa(reset_n),
	.datab(q_a_71),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\sin_reg~7_combout ),
	.cout());
defparam \sin_reg~7 .lut_mask = 16'hEEEE;
defparam \sin_reg~7 .sum_lutc_input = "datac";

dffeas \sin_reg[7] (
	.clk(clk),
	.d(\sin_reg~7_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\sin_reg[7]~q ),
	.prn(vcc));
defparam \sin_reg[7] .is_wysiwyg = "true";
defparam \sin_reg[7] .power_up = "low";

cycloneive_lcell_comb \sin_rom_2c[7]~24 (
	.dataa(\sin_reg[7]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\sin_rom_2c[6]~23 ),
	.combout(\sin_rom_2c[7]~24_combout ),
	.cout(\sin_rom_2c[7]~25 ));
defparam \sin_rom_2c[7]~24 .lut_mask = 16'h5AAF;
defparam \sin_rom_2c[7]~24 .sum_lutc_input = "cin";

cycloneive_lcell_comb \cos_reg~7 (
	.dataa(reset_n),
	.datab(q_a_7),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\cos_reg~7_combout ),
	.cout());
defparam \cos_reg~7 .lut_mask = 16'hEEEE;
defparam \cos_reg~7 .sum_lutc_input = "datac";

dffeas \cos_reg[7] (
	.clk(clk),
	.d(\cos_reg~7_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\cos_reg[7]~q ),
	.prn(vcc));
defparam \cos_reg[7] .is_wysiwyg = "true";
defparam \cos_reg[7] .power_up = "low";

cycloneive_lcell_comb \cos_rom_2c[7]~24 (
	.dataa(\cos_reg[7]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\cos_rom_2c[6]~23 ),
	.combout(\cos_rom_2c[7]~24_combout ),
	.cout(\cos_rom_2c[7]~25 ));
defparam \cos_rom_2c[7]~24 .lut_mask = 16'h5AAF;
defparam \cos_rom_2c[7]~24 .sum_lutc_input = "cin";

cycloneive_lcell_comb \sin_reg~8 (
	.dataa(reset_n),
	.datab(q_a_8),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\sin_reg~8_combout ),
	.cout());
defparam \sin_reg~8 .lut_mask = 16'hEEEE;
defparam \sin_reg~8 .sum_lutc_input = "datac";

dffeas \sin_reg[8] (
	.clk(clk),
	.d(\sin_reg~8_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\sin_reg[8]~q ),
	.prn(vcc));
defparam \sin_reg[8] .is_wysiwyg = "true";
defparam \sin_reg[8] .power_up = "low";

cycloneive_lcell_comb \sin_rom_2c[8]~26 (
	.dataa(\sin_reg[8]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\sin_rom_2c[7]~25 ),
	.combout(\sin_rom_2c[8]~26_combout ),
	.cout(\sin_rom_2c[8]~27 ));
defparam \sin_rom_2c[8]~26 .lut_mask = 16'h5A5F;
defparam \sin_rom_2c[8]~26 .sum_lutc_input = "cin";

cycloneive_lcell_comb \cos_reg~8 (
	.dataa(reset_n),
	.datab(q_a_81),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\cos_reg~8_combout ),
	.cout());
defparam \cos_reg~8 .lut_mask = 16'hEEEE;
defparam \cos_reg~8 .sum_lutc_input = "datac";

dffeas \cos_reg[8] (
	.clk(clk),
	.d(\cos_reg~8_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sin_o_9),
	.q(\cos_reg[8]~q ),
	.prn(vcc));
defparam \cos_reg[8] .is_wysiwyg = "true";
defparam \cos_reg[8] .power_up = "low";

cycloneive_lcell_comb \cos_rom_2c[8]~26 (
	.dataa(\cos_reg[8]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\cos_rom_2c[7]~25 ),
	.combout(\cos_rom_2c[8]~26_combout ),
	.cout(\cos_rom_2c[8]~27 ));
defparam \cos_rom_2c[8]~26 .lut_mask = 16'h5A5F;
defparam \cos_rom_2c[8]~26 .sum_lutc_input = "cin";

cycloneive_lcell_comb \cos_rom_2c[9]~28 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(\cos_rom_2c[8]~27 ),
	.combout(\cos_rom_2c[9]~28_combout ),
	.cout());
defparam \cos_rom_2c[9]~28 .lut_mask = 16'h0F0F;
defparam \cos_rom_2c[9]~28 .sum_lutc_input = "cin";

cycloneive_lcell_comb \sin_rom_2c[9]~28 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(\sin_rom_2c[8]~27 ),
	.combout(\sin_rom_2c[9]~28_combout ),
	.cout());
defparam \sin_rom_2c[9]~28 .lut_mask = 16'h0F0F;
defparam \sin_rom_2c[9]~28 .sum_lutc_input = "cin";

cycloneive_lcell_comb \cos_rom_d~0 (
	.dataa(reset_n),
	.datab(\cos_reg[0]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\cos_rom_d~0_combout ),
	.cout());
defparam \cos_rom_d~0 .lut_mask = 16'hEEEE;
defparam \cos_rom_d~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_rom_d~0 (
	.dataa(reset_n),
	.datab(\sin_reg[0]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\sin_rom_d~0_combout ),
	.cout());
defparam \sin_rom_d~0 .lut_mask = 16'hEEEE;
defparam \sin_rom_d~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \cos_rom_d~1 (
	.dataa(reset_n),
	.datab(\cos_reg[1]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\cos_rom_d~1_combout ),
	.cout());
defparam \cos_rom_d~1 .lut_mask = 16'hEEEE;
defparam \cos_rom_d~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_rom_d~1 (
	.dataa(reset_n),
	.datab(\sin_reg[1]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\sin_rom_d~1_combout ),
	.cout());
defparam \sin_rom_d~1 .lut_mask = 16'hEEEE;
defparam \sin_rom_d~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \cos_rom_d~2 (
	.dataa(reset_n),
	.datab(\cos_reg[2]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\cos_rom_d~2_combout ),
	.cout());
defparam \cos_rom_d~2 .lut_mask = 16'hEEEE;
defparam \cos_rom_d~2 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_rom_d~2 (
	.dataa(reset_n),
	.datab(\sin_reg[2]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\sin_rom_d~2_combout ),
	.cout());
defparam \sin_rom_d~2 .lut_mask = 16'hEEEE;
defparam \sin_rom_d~2 .sum_lutc_input = "datac";

cycloneive_lcell_comb \cos_rom_d~3 (
	.dataa(reset_n),
	.datab(\cos_reg[3]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\cos_rom_d~3_combout ),
	.cout());
defparam \cos_rom_d~3 .lut_mask = 16'hEEEE;
defparam \cos_rom_d~3 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_rom_d~3 (
	.dataa(reset_n),
	.datab(\sin_reg[3]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\sin_rom_d~3_combout ),
	.cout());
defparam \sin_rom_d~3 .lut_mask = 16'hEEEE;
defparam \sin_rom_d~3 .sum_lutc_input = "datac";

cycloneive_lcell_comb \cos_rom_d~4 (
	.dataa(reset_n),
	.datab(\cos_reg[4]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\cos_rom_d~4_combout ),
	.cout());
defparam \cos_rom_d~4 .lut_mask = 16'hEEEE;
defparam \cos_rom_d~4 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_rom_d~4 (
	.dataa(reset_n),
	.datab(\sin_reg[4]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\sin_rom_d~4_combout ),
	.cout());
defparam \sin_rom_d~4 .lut_mask = 16'hEEEE;
defparam \sin_rom_d~4 .sum_lutc_input = "datac";

cycloneive_lcell_comb \cos_rom_d~5 (
	.dataa(reset_n),
	.datab(\cos_reg[5]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\cos_rom_d~5_combout ),
	.cout());
defparam \cos_rom_d~5 .lut_mask = 16'hEEEE;
defparam \cos_rom_d~5 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_rom_d~5 (
	.dataa(reset_n),
	.datab(\sin_reg[5]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\sin_rom_d~5_combout ),
	.cout());
defparam \sin_rom_d~5 .lut_mask = 16'hEEEE;
defparam \sin_rom_d~5 .sum_lutc_input = "datac";

cycloneive_lcell_comb \cos_rom_d~6 (
	.dataa(reset_n),
	.datab(\cos_reg[6]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\cos_rom_d~6_combout ),
	.cout());
defparam \cos_rom_d~6 .lut_mask = 16'hEEEE;
defparam \cos_rom_d~6 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_rom_d~6 (
	.dataa(reset_n),
	.datab(\sin_reg[6]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\sin_rom_d~6_combout ),
	.cout());
defparam \sin_rom_d~6 .lut_mask = 16'hEEEE;
defparam \sin_rom_d~6 .sum_lutc_input = "datac";

cycloneive_lcell_comb \cos_rom_d~7 (
	.dataa(reset_n),
	.datab(\cos_reg[7]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\cos_rom_d~7_combout ),
	.cout());
defparam \cos_rom_d~7 .lut_mask = 16'hEEEE;
defparam \cos_rom_d~7 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_rom_d~7 (
	.dataa(reset_n),
	.datab(\sin_reg[7]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\sin_rom_d~7_combout ),
	.cout());
defparam \sin_rom_d~7 .lut_mask = 16'hEEEE;
defparam \sin_rom_d~7 .sum_lutc_input = "datac";

cycloneive_lcell_comb \cos_rom_d~8 (
	.dataa(reset_n),
	.datab(\cos_reg[8]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\cos_rom_d~8_combout ),
	.cout());
defparam \cos_rom_d~8 .lut_mask = 16'hEEEE;
defparam \cos_rom_d~8 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sin_rom_d~8 (
	.dataa(reset_n),
	.datab(\sin_reg[8]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\sin_rom_d~8_combout ),
	.cout());
defparam \sin_rom_d~8 .lut_mask = 16'hEEEE;
defparam \sin_rom_d~8 .sum_lutc_input = "datac";

endmodule
