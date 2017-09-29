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

// DATE "06/03/2014 23:27:49"

// 
// Device: Altera EP4CE6E22C6 Package TQFP144
// 

// 
// This greybox netlist file is for third party Synthesis Tools
// for timing and resource estimation only.
// 


module CicFilter (
	clk,
	clken,
	reset_n,
	in_data,
	in_valid,
	out_ready,
	in_error,
	out_data,
	in_ready,
	out_valid,
	out_error)/* synthesis synthesis_greybox=1 */;
input 	clk;
input 	clken;
input 	reset_n;
input 	[9:0] in_data;
input 	in_valid;
input 	out_ready;
input 	[1:0] in_error;
output 	[16:0] out_data;
output 	in_ready;
output 	out_valid;
output 	[1:0] out_error;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \CicFilter_cic_inst|aii_source|at_source_data[0]~q ;
wire \CicFilter_cic_inst|aii_source|at_source_data[1]~q ;
wire \CicFilter_cic_inst|aii_source|at_source_data[2]~q ;
wire \CicFilter_cic_inst|aii_source|at_source_data[3]~q ;
wire \CicFilter_cic_inst|aii_source|at_source_data[4]~q ;
wire \CicFilter_cic_inst|aii_source|at_source_data[5]~q ;
wire \CicFilter_cic_inst|aii_source|at_source_data[6]~q ;
wire \CicFilter_cic_inst|aii_source|at_source_data[7]~q ;
wire \CicFilter_cic_inst|aii_source|at_source_data[8]~q ;
wire \CicFilter_cic_inst|aii_source|at_source_data[9]~q ;
wire \CicFilter_cic_inst|aii_source|at_source_data[10]~q ;
wire \CicFilter_cic_inst|aii_source|at_source_data[11]~q ;
wire \CicFilter_cic_inst|aii_source|at_source_data[12]~q ;
wire \CicFilter_cic_inst|aii_source|at_source_data[13]~q ;
wire \CicFilter_cic_inst|aii_source|at_source_data[14]~q ;
wire \CicFilter_cic_inst|aii_source|at_source_data[15]~q ;
wire \CicFilter_cic_inst|aii_source|at_source_data[16]~q ;
wire \CicFilter_cic_inst|aii_sink|at_sink_ready_s~q ;
wire \CicFilter_cic_inst|aii_source|at_source_valid_s~q ;
wire \CicFilter_cic_inst|aii_source|at_source_error[0]~q ;
wire \in_error[1]~input_o ;
wire \clk~input_o ;
wire \reset_n~input_o ;
wire \out_ready~input_o ;
wire \clken~input_o ;
wire \in_valid~input_o ;
wire \in_error[0]~input_o ;
wire \in_data[0]~input_o ;
wire \in_data[1]~input_o ;
wire \in_data[2]~input_o ;
wire \in_data[3]~input_o ;
wire \in_data[4]~input_o ;
wire \in_data[5]~input_o ;
wire \in_data[6]~input_o ;
wire \in_data[7]~input_o ;
wire \in_data[8]~input_o ;
wire \in_data[9]~input_o ;


CicFilter_CicFilter_cic CicFilter_cic_inst(
	.at_source_data_0(\CicFilter_cic_inst|aii_source|at_source_data[0]~q ),
	.at_source_data_1(\CicFilter_cic_inst|aii_source|at_source_data[1]~q ),
	.at_source_data_2(\CicFilter_cic_inst|aii_source|at_source_data[2]~q ),
	.at_source_data_3(\CicFilter_cic_inst|aii_source|at_source_data[3]~q ),
	.at_source_data_4(\CicFilter_cic_inst|aii_source|at_source_data[4]~q ),
	.at_source_data_5(\CicFilter_cic_inst|aii_source|at_source_data[5]~q ),
	.at_source_data_6(\CicFilter_cic_inst|aii_source|at_source_data[6]~q ),
	.at_source_data_7(\CicFilter_cic_inst|aii_source|at_source_data[7]~q ),
	.at_source_data_8(\CicFilter_cic_inst|aii_source|at_source_data[8]~q ),
	.at_source_data_9(\CicFilter_cic_inst|aii_source|at_source_data[9]~q ),
	.at_source_data_10(\CicFilter_cic_inst|aii_source|at_source_data[10]~q ),
	.at_source_data_11(\CicFilter_cic_inst|aii_source|at_source_data[11]~q ),
	.at_source_data_12(\CicFilter_cic_inst|aii_source|at_source_data[12]~q ),
	.at_source_data_13(\CicFilter_cic_inst|aii_source|at_source_data[13]~q ),
	.at_source_data_14(\CicFilter_cic_inst|aii_source|at_source_data[14]~q ),
	.at_source_data_15(\CicFilter_cic_inst|aii_source|at_source_data[15]~q ),
	.at_source_data_16(\CicFilter_cic_inst|aii_source|at_source_data[16]~q ),
	.at_sink_ready_s(\CicFilter_cic_inst|aii_sink|at_sink_ready_s~q ),
	.at_source_valid_s(\CicFilter_cic_inst|aii_source|at_source_valid_s~q ),
	.at_source_error_0(\CicFilter_cic_inst|aii_source|at_source_error[0]~q ),
	.clk(\clk~input_o ),
	.reset_n(\reset_n~input_o ),
	.out_ready(\out_ready~input_o ),
	.clken(\clken~input_o ),
	.in_valid(\in_valid~input_o ),
	.in_error_0(\in_error[0]~input_o ),
	.in_data({\in_data[9]~input_o ,\in_data[8]~input_o ,\in_data[7]~input_o ,\in_data[6]~input_o ,\in_data[5]~input_o ,\in_data[4]~input_o ,\in_data[3]~input_o ,\in_data[2]~input_o ,\in_data[1]~input_o ,\in_data[0]~input_o }));

assign \clk~input_o  = clk;

assign \reset_n~input_o  = reset_n;

assign \out_ready~input_o  = out_ready;

assign \clken~input_o  = clken;

assign \in_valid~input_o  = in_valid;

assign \in_error[0]~input_o  = in_error[0];

assign \in_data[0]~input_o  = in_data[0];

assign \in_data[1]~input_o  = in_data[1];

assign \in_data[2]~input_o  = in_data[2];

assign \in_data[3]~input_o  = in_data[3];

assign \in_data[4]~input_o  = in_data[4];

assign \in_data[5]~input_o  = in_data[5];

assign \in_data[6]~input_o  = in_data[6];

assign \in_data[7]~input_o  = in_data[7];

assign \in_data[8]~input_o  = in_data[8];

assign \in_data[9]~input_o  = in_data[9];

assign out_data[0] = \CicFilter_cic_inst|aii_source|at_source_data[0]~q ;

assign out_data[1] = \CicFilter_cic_inst|aii_source|at_source_data[1]~q ;

assign out_data[2] = \CicFilter_cic_inst|aii_source|at_source_data[2]~q ;

assign out_data[3] = \CicFilter_cic_inst|aii_source|at_source_data[3]~q ;

assign out_data[4] = \CicFilter_cic_inst|aii_source|at_source_data[4]~q ;

assign out_data[5] = \CicFilter_cic_inst|aii_source|at_source_data[5]~q ;

assign out_data[6] = \CicFilter_cic_inst|aii_source|at_source_data[6]~q ;

assign out_data[7] = \CicFilter_cic_inst|aii_source|at_source_data[7]~q ;

assign out_data[8] = \CicFilter_cic_inst|aii_source|at_source_data[8]~q ;

assign out_data[9] = \CicFilter_cic_inst|aii_source|at_source_data[9]~q ;

assign out_data[10] = \CicFilter_cic_inst|aii_source|at_source_data[10]~q ;

assign out_data[11] = \CicFilter_cic_inst|aii_source|at_source_data[11]~q ;

assign out_data[12] = \CicFilter_cic_inst|aii_source|at_source_data[12]~q ;

assign out_data[13] = \CicFilter_cic_inst|aii_source|at_source_data[13]~q ;

assign out_data[14] = \CicFilter_cic_inst|aii_source|at_source_data[14]~q ;

assign out_data[15] = \CicFilter_cic_inst|aii_source|at_source_data[15]~q ;

assign out_data[16] = \CicFilter_cic_inst|aii_source|at_source_data[16]~q ;

assign in_ready = \CicFilter_cic_inst|aii_sink|at_sink_ready_s~q ;

assign out_valid = \CicFilter_cic_inst|aii_source|at_source_valid_s~q ;

assign out_error[0] = \CicFilter_cic_inst|aii_source|at_source_error[0]~q ;

assign out_error[1] = gnd;

assign \in_error[1]~input_o  = in_error[1];

endmodule

module CicFilter_CicFilter_cic (
	at_source_data_0,
	at_source_data_1,
	at_source_data_2,
	at_source_data_3,
	at_source_data_4,
	at_source_data_5,
	at_source_data_6,
	at_source_data_7,
	at_source_data_8,
	at_source_data_9,
	at_source_data_10,
	at_source_data_11,
	at_source_data_12,
	at_source_data_13,
	at_source_data_14,
	at_source_data_15,
	at_source_data_16,
	at_sink_ready_s,
	at_source_valid_s,
	at_source_error_0,
	clk,
	reset_n,
	out_ready,
	clken,
	in_valid,
	in_error_0,
	in_data)/* synthesis synthesis_greybox=1 */;
output 	at_source_data_0;
output 	at_source_data_1;
output 	at_source_data_2;
output 	at_source_data_3;
output 	at_source_data_4;
output 	at_source_data_5;
output 	at_source_data_6;
output 	at_source_data_7;
output 	at_source_data_8;
output 	at_source_data_9;
output 	at_source_data_10;
output 	at_source_data_11;
output 	at_source_data_12;
output 	at_source_data_13;
output 	at_source_data_14;
output 	at_source_data_15;
output 	at_source_data_16;
output 	at_sink_ready_s;
output 	at_source_valid_s;
output 	at_source_error_0;
input 	clk;
input 	reset_n;
input 	out_ready;
input 	clken;
input 	in_valid;
input 	in_error_0;
input 	[9:0] in_data;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \cic_core|auk_dspip_differentiator_2|dout[0]~q ;
wire \cic_core|auk_dspip_differentiator_2|dout[1]~q ;
wire \cic_core|auk_dspip_differentiator_2|dout[2]~q ;
wire \cic_core|auk_dspip_differentiator_2|dout[3]~q ;
wire \cic_core|auk_dspip_differentiator_2|dout[4]~q ;
wire \cic_core|auk_dspip_differentiator_2|dout[5]~q ;
wire \cic_core|auk_dspip_differentiator_2|dout[6]~q ;
wire \cic_core|auk_dspip_differentiator_2|dout[7]~q ;
wire \cic_core|auk_dspip_differentiator_2|dout[8]~q ;
wire \cic_core|auk_dspip_differentiator_2|dout[9]~q ;
wire \cic_core|auk_dspip_differentiator_2|dout[10]~q ;
wire \cic_core|auk_dspip_differentiator_2|dout[11]~q ;
wire \cic_core|auk_dspip_differentiator_2|dout[12]~q ;
wire \cic_core|auk_dspip_differentiator_2|dout[13]~q ;
wire \cic_core|auk_dspip_differentiator_2|dout[14]~q ;
wire \cic_core|auk_dspip_differentiator_2|dout[15]~q ;
wire \cic_core|auk_dspip_differentiator_2|dout[16]~q ;
wire \aii_sink|normal_fifo:fifo_eab_on:in_fifo|auto_generated|dpfifo|FIFOram|q_b[0] ;
wire \aii_sink|normal_fifo:fifo_eab_on:in_fifo|auto_generated|dpfifo|FIFOram|q_b[1] ;
wire \aii_sink|normal_fifo:fifo_eab_on:in_fifo|auto_generated|dpfifo|FIFOram|q_b[2] ;
wire \aii_sink|normal_fifo:fifo_eab_on:in_fifo|auto_generated|dpfifo|FIFOram|q_b[3] ;
wire \aii_sink|normal_fifo:fifo_eab_on:in_fifo|auto_generated|dpfifo|FIFOram|q_b[4] ;
wire \aii_sink|normal_fifo:fifo_eab_on:in_fifo|auto_generated|dpfifo|FIFOram|q_b[5] ;
wire \aii_sink|normal_fifo:fifo_eab_on:in_fifo|auto_generated|dpfifo|FIFOram|q_b[6] ;
wire \aii_sink|normal_fifo:fifo_eab_on:in_fifo|auto_generated|dpfifo|FIFOram|q_b[7] ;
wire \aii_sink|normal_fifo:fifo_eab_on:in_fifo|auto_generated|dpfifo|FIFOram|q_b[8] ;
wire \aii_sink|normal_fifo:fifo_eab_on:in_fifo|auto_generated|dpfifo|FIFOram|q_b[9] ;
wire \aii_controller|source_packet_error[0]~q ;
wire \aii_controller|stall_reg~q ;
wire \aii_controller|sink_stall_reg~q ;
wire \aii_controller|source_stall_reg~q ;
wire \cic_core|ena_diff[4]~q ;
wire \cic_core|state~q ;
wire \aii_sink|sink_start~q ;
wire \aii_sink|normal_fifo:fifo_eab_on:in_fifo|auto_generated|dpfifo|empty_dff~q ;
wire \aii_sink|packet_error_s[0]~q ;
wire \aii_sink|sink_stall~combout ;
wire \aii_source|Mux0~2_combout ;
wire \aii_controller|stall~0_combout ;


CicFilter_CicFilter_cic_core cic_core(
	.dout_0(\cic_core|auk_dspip_differentiator_2|dout[0]~q ),
	.dout_1(\cic_core|auk_dspip_differentiator_2|dout[1]~q ),
	.dout_2(\cic_core|auk_dspip_differentiator_2|dout[2]~q ),
	.dout_3(\cic_core|auk_dspip_differentiator_2|dout[3]~q ),
	.dout_4(\cic_core|auk_dspip_differentiator_2|dout[4]~q ),
	.dout_5(\cic_core|auk_dspip_differentiator_2|dout[5]~q ),
	.dout_6(\cic_core|auk_dspip_differentiator_2|dout[6]~q ),
	.dout_7(\cic_core|auk_dspip_differentiator_2|dout[7]~q ),
	.dout_8(\cic_core|auk_dspip_differentiator_2|dout[8]~q ),
	.dout_9(\cic_core|auk_dspip_differentiator_2|dout[9]~q ),
	.dout_10(\cic_core|auk_dspip_differentiator_2|dout[10]~q ),
	.dout_11(\cic_core|auk_dspip_differentiator_2|dout[11]~q ),
	.dout_12(\cic_core|auk_dspip_differentiator_2|dout[12]~q ),
	.dout_13(\cic_core|auk_dspip_differentiator_2|dout[13]~q ),
	.dout_14(\cic_core|auk_dspip_differentiator_2|dout[14]~q ),
	.dout_15(\cic_core|auk_dspip_differentiator_2|dout[15]~q ),
	.dout_16(\cic_core|auk_dspip_differentiator_2|dout[16]~q ),
	.q_b_0(\aii_sink|normal_fifo:fifo_eab_on:in_fifo|auto_generated|dpfifo|FIFOram|q_b[0] ),
	.q_b_1(\aii_sink|normal_fifo:fifo_eab_on:in_fifo|auto_generated|dpfifo|FIFOram|q_b[1] ),
	.q_b_2(\aii_sink|normal_fifo:fifo_eab_on:in_fifo|auto_generated|dpfifo|FIFOram|q_b[2] ),
	.q_b_3(\aii_sink|normal_fifo:fifo_eab_on:in_fifo|auto_generated|dpfifo|FIFOram|q_b[3] ),
	.q_b_4(\aii_sink|normal_fifo:fifo_eab_on:in_fifo|auto_generated|dpfifo|FIFOram|q_b[4] ),
	.q_b_5(\aii_sink|normal_fifo:fifo_eab_on:in_fifo|auto_generated|dpfifo|FIFOram|q_b[5] ),
	.q_b_6(\aii_sink|normal_fifo:fifo_eab_on:in_fifo|auto_generated|dpfifo|FIFOram|q_b[6] ),
	.q_b_7(\aii_sink|normal_fifo:fifo_eab_on:in_fifo|auto_generated|dpfifo|FIFOram|q_b[7] ),
	.q_b_8(\aii_sink|normal_fifo:fifo_eab_on:in_fifo|auto_generated|dpfifo|FIFOram|q_b[8] ),
	.q_b_9(\aii_sink|normal_fifo:fifo_eab_on:in_fifo|auto_generated|dpfifo|FIFOram|q_b[9] ),
	.stall_reg(\aii_controller|stall_reg~q ),
	.ena_diff_4(\cic_core|ena_diff[4]~q ),
	.state1(\cic_core|state~q ),
	.stall(\aii_controller|stall~0_combout ),
	.clk(clk),
	.reset(reset_n),
	.clken(clken));

CicFilter_auk_dspip_avalon_streaming_controller_cic_121 aii_controller(
	.source_packet_error_0(\aii_controller|source_packet_error[0]~q ),
	.stall_reg1(\aii_controller|stall_reg~q ),
	.sink_stall_reg1(\aii_controller|sink_stall_reg~q ),
	.source_stall_reg1(\aii_controller|source_stall_reg~q ),
	.sink_start(\aii_sink|sink_start~q ),
	.empty_dff(\aii_sink|normal_fifo:fifo_eab_on:in_fifo|auto_generated|dpfifo|empty_dff~q ),
	.packet_error_s_0(\aii_sink|packet_error_s[0]~q ),
	.sink_stall(\aii_sink|sink_stall~combout ),
	.Mux0(\aii_source|Mux0~2_combout ),
	.stall(\aii_controller|stall~0_combout ),
	.clk(clk),
	.reset_n(reset_n),
	.clken(clken));

CicFilter_auk_dspip_avalon_streaming_source_cic_121 aii_source(
	.data({\cic_core|auk_dspip_differentiator_2|dout[16]~q ,\cic_core|auk_dspip_differentiator_2|dout[15]~q ,\cic_core|auk_dspip_differentiator_2|dout[14]~q ,\cic_core|auk_dspip_differentiator_2|dout[13]~q ,\cic_core|auk_dspip_differentiator_2|dout[12]~q ,
\cic_core|auk_dspip_differentiator_2|dout[11]~q ,\cic_core|auk_dspip_differentiator_2|dout[10]~q ,\cic_core|auk_dspip_differentiator_2|dout[9]~q ,\cic_core|auk_dspip_differentiator_2|dout[8]~q ,\cic_core|auk_dspip_differentiator_2|dout[7]~q ,
\cic_core|auk_dspip_differentiator_2|dout[6]~q ,\cic_core|auk_dspip_differentiator_2|dout[5]~q ,\cic_core|auk_dspip_differentiator_2|dout[4]~q ,\cic_core|auk_dspip_differentiator_2|dout[3]~q ,\cic_core|auk_dspip_differentiator_2|dout[2]~q ,
\cic_core|auk_dspip_differentiator_2|dout[1]~q ,\cic_core|auk_dspip_differentiator_2|dout[0]~q }),
	.at_source_data_0(at_source_data_0),
	.at_source_data_1(at_source_data_1),
	.at_source_data_2(at_source_data_2),
	.at_source_data_3(at_source_data_3),
	.at_source_data_4(at_source_data_4),
	.at_source_data_5(at_source_data_5),
	.at_source_data_6(at_source_data_6),
	.at_source_data_7(at_source_data_7),
	.at_source_data_8(at_source_data_8),
	.at_source_data_9(at_source_data_9),
	.at_source_data_10(at_source_data_10),
	.at_source_data_11(at_source_data_11),
	.at_source_data_12(at_source_data_12),
	.at_source_data_13(at_source_data_13),
	.at_source_data_14(at_source_data_14),
	.at_source_data_15(at_source_data_15),
	.at_source_data_16(at_source_data_16),
	.at_source_valid_s1(at_source_valid_s),
	.at_source_error_0(at_source_error_0),
	.source_packet_error_0(\aii_controller|source_packet_error[0]~q ),
	.stall_reg(\aii_controller|stall_reg~q ),
	.sink_stall_reg(\aii_controller|sink_stall_reg~q ),
	.source_stall_reg(\aii_controller|source_stall_reg~q ),
	.ena_diff_4(\cic_core|ena_diff[4]~q ),
	.state(\cic_core|state~q ),
	.Mux0(\aii_source|Mux0~2_combout ),
	.clk(clk),
	.reset_n(reset_n),
	.out_ready(out_ready),
	.clken(clken));

CicFilter_auk_dspip_avalon_streaming_sink_cic_121 aii_sink(
	.q_b_0(\aii_sink|normal_fifo:fifo_eab_on:in_fifo|auto_generated|dpfifo|FIFOram|q_b[0] ),
	.q_b_1(\aii_sink|normal_fifo:fifo_eab_on:in_fifo|auto_generated|dpfifo|FIFOram|q_b[1] ),
	.q_b_2(\aii_sink|normal_fifo:fifo_eab_on:in_fifo|auto_generated|dpfifo|FIFOram|q_b[2] ),
	.q_b_3(\aii_sink|normal_fifo:fifo_eab_on:in_fifo|auto_generated|dpfifo|FIFOram|q_b[3] ),
	.q_b_4(\aii_sink|normal_fifo:fifo_eab_on:in_fifo|auto_generated|dpfifo|FIFOram|q_b[4] ),
	.q_b_5(\aii_sink|normal_fifo:fifo_eab_on:in_fifo|auto_generated|dpfifo|FIFOram|q_b[5] ),
	.q_b_6(\aii_sink|normal_fifo:fifo_eab_on:in_fifo|auto_generated|dpfifo|FIFOram|q_b[6] ),
	.q_b_7(\aii_sink|normal_fifo:fifo_eab_on:in_fifo|auto_generated|dpfifo|FIFOram|q_b[7] ),
	.q_b_8(\aii_sink|normal_fifo:fifo_eab_on:in_fifo|auto_generated|dpfifo|FIFOram|q_b[8] ),
	.q_b_9(\aii_sink|normal_fifo:fifo_eab_on:in_fifo|auto_generated|dpfifo|FIFOram|q_b[9] ),
	.at_sink_ready_s1(at_sink_ready_s),
	.sink_stall_reg(\aii_controller|sink_stall_reg~q ),
	.source_stall_reg(\aii_controller|source_stall_reg~q ),
	.sink_start1(\aii_sink|sink_start~q ),
	.empty_dff(\aii_sink|normal_fifo:fifo_eab_on:in_fifo|auto_generated|dpfifo|empty_dff~q ),
	.packet_error_s_0(\aii_sink|packet_error_s[0]~q ),
	.sink_stall1(\aii_sink|sink_stall~combout ),
	.clk(clk),
	.reset_n(reset_n),
	.clken(clken),
	.in_valid(in_valid),
	.in_error_0(in_error_0),
	.at_sink_data({in_data[9],in_data[8],in_data[7],in_data[6],in_data[5],in_data[4],in_data[3],in_data[2],in_data[1],in_data[0]}));

endmodule

module CicFilter_auk_dspip_avalon_streaming_controller_cic_121 (
	source_packet_error_0,
	stall_reg1,
	sink_stall_reg1,
	source_stall_reg1,
	sink_start,
	empty_dff,
	packet_error_s_0,
	sink_stall,
	Mux0,
	stall,
	clk,
	reset_n,
	clken)/* synthesis synthesis_greybox=1 */;
output 	source_packet_error_0;
output 	stall_reg1;
output 	sink_stall_reg1;
output 	source_stall_reg1;
input 	sink_start;
input 	empty_dff;
input 	packet_error_s_0;
input 	sink_stall;
input 	Mux0;
output 	stall;
input 	clk;
input 	reset_n;
input 	clken;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \stall_int~combout ;
wire \sink_stall_reg~0_combout ;
wire \source_stall_reg~0_combout ;


dffeas \source_packet_error[0] (
	.clk(clk),
	.d(packet_error_s_0),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(source_packet_error_0),
	.prn(vcc));
defparam \source_packet_error[0] .is_wysiwyg = "true";
defparam \source_packet_error[0] .power_up = "low";

dffeas stall_reg(
	.clk(clk),
	.d(\stall_int~combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(stall_reg1),
	.prn(vcc));
defparam stall_reg.is_wysiwyg = "true";
defparam stall_reg.power_up = "low";

dffeas sink_stall_reg(
	.clk(clk),
	.d(\sink_stall_reg~0_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(sink_stall_reg1),
	.prn(vcc));
defparam sink_stall_reg.is_wysiwyg = "true";
defparam sink_stall_reg.power_up = "low";

dffeas source_stall_reg(
	.clk(clk),
	.d(\source_stall_reg~0_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(source_stall_reg1),
	.prn(vcc));
defparam source_stall_reg.is_wysiwyg = "true";
defparam source_stall_reg.power_up = "low";

cycloneive_lcell_comb \stall~0 (
	.dataa(gnd),
	.datab(gnd),
	.datac(clken),
	.datad(stall_reg1),
	.cin(gnd),
	.combout(stall),
	.cout());
defparam \stall~0 .lut_mask = 16'hFFF0;
defparam \stall~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb stall_int(
	.dataa(sink_start),
	.datab(empty_dff),
	.datac(Mux0),
	.datad(gnd),
	.cin(gnd),
	.combout(\stall_int~combout ),
	.cout());
defparam stall_int.lut_mask = 16'hEFEF;
defparam stall_int.sum_lutc_input = "datac";

cycloneive_lcell_comb \sink_stall_reg~0 (
	.dataa(sink_stall),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\sink_stall_reg~0_combout ),
	.cout());
defparam \sink_stall_reg~0 .lut_mask = 16'h5555;
defparam \sink_stall_reg~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \source_stall_reg~0 (
	.dataa(Mux0),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\source_stall_reg~0_combout ),
	.cout());
defparam \source_stall_reg~0 .lut_mask = 16'h5555;
defparam \source_stall_reg~0 .sum_lutc_input = "datac";

endmodule

module CicFilter_auk_dspip_avalon_streaming_sink_cic_121 (
	q_b_0,
	q_b_1,
	q_b_2,
	q_b_3,
	q_b_4,
	q_b_5,
	q_b_6,
	q_b_7,
	q_b_8,
	q_b_9,
	at_sink_ready_s1,
	sink_stall_reg,
	source_stall_reg,
	sink_start1,
	empty_dff,
	packet_error_s_0,
	sink_stall1,
	clk,
	reset_n,
	clken,
	in_valid,
	in_error_0,
	at_sink_data)/* synthesis synthesis_greybox=1 */;
output 	q_b_0;
output 	q_b_1;
output 	q_b_2;
output 	q_b_3;
output 	q_b_4;
output 	q_b_5;
output 	q_b_6;
output 	q_b_7;
output 	q_b_8;
output 	q_b_9;
output 	at_sink_ready_s1;
input 	sink_stall_reg;
input 	source_stall_reg;
output 	sink_start1;
output 	empty_dff;
output 	packet_error_s_0;
output 	sink_stall1;
input 	clk;
input 	reset_n;
input 	clken;
input 	in_valid;
input 	in_error_0;
input 	[9:0] at_sink_data;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \normal_fifo:fifo_eab_on:in_fifo|auto_generated|dffe_af~q ;
wire \sink_out_state.empty_and_ready~q ;
wire \sink_out_state.normal~q ;
wire \Selector4~0_combout ;
wire \Selector4~1_combout ;
wire \sink_state.run1~q ;
wire \normal_fifo:fifo_eab_on:in_fifo|auto_generated|dpfifo|usedw_counter|counter_reg_bit[0]~q ;
wire \sink_stall_s~q ;
wire \Selector7~0_combout ;
wire \Selector7~1_combout ;
wire \sink_next_state~0_combout ;
wire \at_sink_data_int[0]~q ;
wire \at_sink_data_int[1]~q ;
wire \at_sink_data_int[2]~q ;
wire \at_sink_data_int[3]~q ;
wire \at_sink_data_int[4]~q ;
wire \at_sink_data_int[5]~q ;
wire \at_sink_data_int[6]~q ;
wire \at_sink_data_int[7]~q ;
wire \at_sink_data_int[8]~q ;
wire \at_sink_data_int[9]~q ;
wire \data_take~combout ;
wire \Selector5~2_combout ;
wire \at_sink_ready_s~0_combout ;
wire \sink_start~0_combout ;


CicFilter_scfifo_1 \normal_fifo:fifo_eab_on:in_fifo (
	.q({q_unconnected_wire_16,q_unconnected_wire_15,q_unconnected_wire_14,q_unconnected_wire_13,q_unconnected_wire_12,q_unconnected_wire_11,q_unconnected_wire_10,q_b_9,q_b_8,q_b_7,q_b_6,q_b_5,q_b_4,q_b_3,q_b_2,q_b_1,q_b_0}),
	.dffe_af(\normal_fifo:fifo_eab_on:in_fifo|auto_generated|dffe_af~q ),
	.empty_dff(empty_dff),
	.sink_out_stateempty_and_ready(\sink_out_state.empty_and_ready~q ),
	.Selector4(\Selector4~0_combout ),
	.rdreq(\Selector4~1_combout ),
	.wrreq(\sink_state.run1~q ),
	.counter_reg_bit_0(\normal_fifo:fifo_eab_on:in_fifo|auto_generated|dpfifo|usedw_counter|counter_reg_bit[0]~q ),
	.sink_stall(sink_stall1),
	.data({gnd,gnd,gnd,gnd,gnd,gnd,gnd,\at_sink_data_int[9]~q ,\at_sink_data_int[8]~q ,\at_sink_data_int[7]~q ,\at_sink_data_int[6]~q ,\at_sink_data_int[5]~q ,\at_sink_data_int[4]~q ,\at_sink_data_int[3]~q ,\at_sink_data_int[2]~q ,\at_sink_data_int[1]~q ,\at_sink_data_int[0]~q }),
	.clock(clk),
	.reset_n(reset_n));

dffeas \sink_out_state.empty_and_ready (
	.clk(clk),
	.d(\Selector7~1_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\sink_out_state.empty_and_ready~q ),
	.prn(vcc));
defparam \sink_out_state.empty_and_ready .is_wysiwyg = "true";
defparam \sink_out_state.empty_and_ready .power_up = "low";

dffeas \sink_out_state.normal (
	.clk(clk),
	.d(\Selector5~2_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\sink_out_state.normal~q ),
	.prn(vcc));
defparam \sink_out_state.normal .is_wysiwyg = "true";
defparam \sink_out_state.normal .power_up = "low";

cycloneive_lcell_comb \Selector4~0 (
	.dataa(clken),
	.datab(source_stall_reg),
	.datac(sink_stall_reg),
	.datad(\sink_out_state.normal~q ),
	.cin(gnd),
	.combout(\Selector4~0_combout ),
	.cout());
defparam \Selector4~0 .lut_mask = 16'hEFFF;
defparam \Selector4~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Selector4~1 (
	.dataa(sink_start1),
	.datab(empty_dff),
	.datac(\sink_out_state.empty_and_ready~q ),
	.datad(\Selector4~0_combout ),
	.cin(gnd),
	.combout(\Selector4~1_combout ),
	.cout());
defparam \Selector4~1 .lut_mask = 16'hFFFE;
defparam \Selector4~1 .sum_lutc_input = "datac";

dffeas \sink_state.run1 (
	.clk(clk),
	.d(\sink_next_state~0_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\sink_state.run1~q ),
	.prn(vcc));
defparam \sink_state.run1 .is_wysiwyg = "true";
defparam \sink_state.run1 .power_up = "low";

dffeas sink_stall_s(
	.clk(clk),
	.d(sink_stall1),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\sink_stall_s~q ),
	.prn(vcc));
defparam sink_stall_s.is_wysiwyg = "true";
defparam sink_stall_s.power_up = "low";

cycloneive_lcell_comb \Selector7~0 (
	.dataa(sink_stall_reg),
	.datab(clken),
	.datac(source_stall_reg),
	.datad(\sink_stall_s~q ),
	.cin(gnd),
	.combout(\Selector7~0_combout ),
	.cout());
defparam \Selector7~0 .lut_mask = 16'h6996;
defparam \Selector7~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Selector7~1 (
	.dataa(sink_stall1),
	.datab(\sink_out_state.empty_and_ready~q ),
	.datac(\Selector7~0_combout ),
	.datad(\sink_out_state.normal~q ),
	.cin(gnd),
	.combout(\Selector7~1_combout ),
	.cout());
defparam \Selector7~1 .lut_mask = 16'hFEFF;
defparam \Selector7~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sink_next_state~0 (
	.dataa(at_sink_ready_s1),
	.datab(in_valid),
	.datac(gnd),
	.datad(in_error_0),
	.cin(gnd),
	.combout(\sink_next_state~0_combout ),
	.cout());
defparam \sink_next_state~0 .lut_mask = 16'hEEFF;
defparam \sink_next_state~0 .sum_lutc_input = "datac";

dffeas \at_sink_data_int[0] (
	.clk(clk),
	.d(at_sink_data[0]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\data_take~combout ),
	.q(\at_sink_data_int[0]~q ),
	.prn(vcc));
defparam \at_sink_data_int[0] .is_wysiwyg = "true";
defparam \at_sink_data_int[0] .power_up = "low";

dffeas \at_sink_data_int[1] (
	.clk(clk),
	.d(at_sink_data[1]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\data_take~combout ),
	.q(\at_sink_data_int[1]~q ),
	.prn(vcc));
defparam \at_sink_data_int[1] .is_wysiwyg = "true";
defparam \at_sink_data_int[1] .power_up = "low";

dffeas \at_sink_data_int[2] (
	.clk(clk),
	.d(at_sink_data[2]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\data_take~combout ),
	.q(\at_sink_data_int[2]~q ),
	.prn(vcc));
defparam \at_sink_data_int[2] .is_wysiwyg = "true";
defparam \at_sink_data_int[2] .power_up = "low";

dffeas \at_sink_data_int[3] (
	.clk(clk),
	.d(at_sink_data[3]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\data_take~combout ),
	.q(\at_sink_data_int[3]~q ),
	.prn(vcc));
defparam \at_sink_data_int[3] .is_wysiwyg = "true";
defparam \at_sink_data_int[3] .power_up = "low";

dffeas \at_sink_data_int[4] (
	.clk(clk),
	.d(at_sink_data[4]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\data_take~combout ),
	.q(\at_sink_data_int[4]~q ),
	.prn(vcc));
defparam \at_sink_data_int[4] .is_wysiwyg = "true";
defparam \at_sink_data_int[4] .power_up = "low";

dffeas \at_sink_data_int[5] (
	.clk(clk),
	.d(at_sink_data[5]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\data_take~combout ),
	.q(\at_sink_data_int[5]~q ),
	.prn(vcc));
defparam \at_sink_data_int[5] .is_wysiwyg = "true";
defparam \at_sink_data_int[5] .power_up = "low";

dffeas \at_sink_data_int[6] (
	.clk(clk),
	.d(at_sink_data[6]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\data_take~combout ),
	.q(\at_sink_data_int[6]~q ),
	.prn(vcc));
defparam \at_sink_data_int[6] .is_wysiwyg = "true";
defparam \at_sink_data_int[6] .power_up = "low";

dffeas \at_sink_data_int[7] (
	.clk(clk),
	.d(at_sink_data[7]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\data_take~combout ),
	.q(\at_sink_data_int[7]~q ),
	.prn(vcc));
defparam \at_sink_data_int[7] .is_wysiwyg = "true";
defparam \at_sink_data_int[7] .power_up = "low";

dffeas \at_sink_data_int[8] (
	.clk(clk),
	.d(at_sink_data[8]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\data_take~combout ),
	.q(\at_sink_data_int[8]~q ),
	.prn(vcc));
defparam \at_sink_data_int[8] .is_wysiwyg = "true";
defparam \at_sink_data_int[8] .power_up = "low";

dffeas \at_sink_data_int[9] (
	.clk(clk),
	.d(at_sink_data[9]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\data_take~combout ),
	.q(\at_sink_data_int[9]~q ),
	.prn(vcc));
defparam \at_sink_data_int[9] .is_wysiwyg = "true";
defparam \at_sink_data_int[9] .power_up = "low";

cycloneive_lcell_comb data_take(
	.dataa(\sink_state.run1~q ),
	.datab(at_sink_ready_s1),
	.datac(in_valid),
	.datad(in_error_0),
	.cin(gnd),
	.combout(\data_take~combout ),
	.cout());
defparam data_take.lut_mask = 16'hFEFF;
defparam data_take.sum_lutc_input = "datac";

cycloneive_lcell_comb \Selector5~2 (
	.dataa(sink_start1),
	.datab(empty_dff),
	.datac(\Selector4~0_combout ),
	.datad(\sink_stall_s~q ),
	.cin(gnd),
	.combout(\Selector5~2_combout ),
	.cout());
defparam \Selector5~2 .lut_mask = 16'h7FFF;
defparam \Selector5~2 .sum_lutc_input = "datac";

dffeas at_sink_ready_s(
	.clk(clk),
	.d(\at_sink_ready_s~0_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(at_sink_ready_s1),
	.prn(vcc));
defparam at_sink_ready_s.is_wysiwyg = "true";
defparam at_sink_ready_s.power_up = "low";

dffeas sink_start(
	.clk(clk),
	.d(\sink_start~0_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(sink_start1),
	.prn(vcc));
defparam sink_start.is_wysiwyg = "true";
defparam sink_start.power_up = "low";

dffeas \packet_error_s[0] (
	.clk(clk),
	.d(in_error_0),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(packet_error_s_0),
	.prn(vcc));
defparam \packet_error_s[0] .is_wysiwyg = "true";
defparam \packet_error_s[0] .power_up = "low";

cycloneive_lcell_comb sink_stall(
	.dataa(gnd),
	.datab(gnd),
	.datac(sink_start1),
	.datad(empty_dff),
	.cin(gnd),
	.combout(sink_stall1),
	.cout());
defparam sink_stall.lut_mask = 16'h0FFF;
defparam sink_stall.sum_lutc_input = "datac";

cycloneive_lcell_comb \at_sink_ready_s~0 (
	.dataa(\normal_fifo:fifo_eab_on:in_fifo|auto_generated|dffe_af~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\at_sink_ready_s~0_combout ),
	.cout());
defparam \at_sink_ready_s~0 .lut_mask = 16'h5555;
defparam \at_sink_ready_s~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \sink_start~0 (
	.dataa(sink_start1),
	.datab(\normal_fifo:fifo_eab_on:in_fifo|auto_generated|dpfifo|usedw_counter|counter_reg_bit[0]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\sink_start~0_combout ),
	.cout());
defparam \sink_start~0 .lut_mask = 16'hEEEE;
defparam \sink_start~0 .sum_lutc_input = "datac";

endmodule

module CicFilter_scfifo_1 (
	q,
	dffe_af,
	empty_dff,
	sink_out_stateempty_and_ready,
	Selector4,
	rdreq,
	wrreq,
	counter_reg_bit_0,
	sink_stall,
	data,
	clock,
	reset_n)/* synthesis synthesis_greybox=1 */;
output 	[16:0] q;
output 	dffe_af;
output 	empty_dff;
input 	sink_out_stateempty_and_ready;
input 	Selector4;
input 	rdreq;
input 	wrreq;
output 	counter_reg_bit_0;
input 	sink_stall;
input 	[16:0] data;
input 	clock;
input 	reset_n;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



CicFilter_scfifo_ahh1 auto_generated(
	.q({q_unconnected_wire_11,q_unconnected_wire_10,q[9],q[8],q[7],q[6],q[5],q[4],q[3],q[2],q[1],q[0]}),
	.dffe_af1(dffe_af),
	.empty_dff(empty_dff),
	.sink_out_stateempty_and_ready(sink_out_stateempty_and_ready),
	.Selector4(Selector4),
	.rdreq(rdreq),
	.wrreq(wrreq),
	.counter_reg_bit_0(counter_reg_bit_0),
	.sink_stall(sink_stall),
	.data({gnd,gnd,data[9],data[8],data[7],data[6],data[5],data[4],data[3],data[2],data[1],data[0]}),
	.clock(clock),
	.reset_n(reset_n));

endmodule

module CicFilter_scfifo_ahh1 (
	q,
	dffe_af1,
	empty_dff,
	sink_out_stateempty_and_ready,
	Selector4,
	rdreq,
	wrreq,
	counter_reg_bit_0,
	sink_stall,
	data,
	clock,
	reset_n)/* synthesis synthesis_greybox=1 */;
output 	[11:0] q;
output 	dffe_af1;
output 	empty_dff;
input 	sink_out_stateempty_and_ready;
input 	Selector4;
input 	rdreq;
input 	wrreq;
output 	counter_reg_bit_0;
input 	sink_stall;
input 	[11:0] data;
input 	clock;
input 	reset_n;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \dpfifo|usedw_counter|counter_reg_bit[1]~q ;
wire \dpfifo|usedw_counter|counter_reg_bit[2]~q ;
wire \dffe_af~0_combout ;
wire \dffe_af~1_combout ;


CicFilter_a_dpfifo_3s81 dpfifo(
	.q({q_unconnected_wire_11,q_unconnected_wire_10,q[9],q[8],q[7],q[6],q[5],q[4],q[3],q[2],q[1],q[0]}),
	.counter_reg_bit_1(\dpfifo|usedw_counter|counter_reg_bit[1]~q ),
	.empty_dff1(empty_dff),
	.sink_out_stateempty_and_ready(sink_out_stateempty_and_ready),
	.Selector4(Selector4),
	.rreq(rdreq),
	.wreq(wrreq),
	.counter_reg_bit_2(\dpfifo|usedw_counter|counter_reg_bit[2]~q ),
	.counter_reg_bit_0(counter_reg_bit_0),
	.sink_stall(sink_stall),
	.data({gnd,gnd,data[9],data[8],data[7],data[6],data[5],data[4],data[3],data[2],data[1],data[0]}),
	.clock(clock),
	.reset_n(reset_n));

dffeas dffe_af(
	.clk(clock),
	.d(\dffe_af~1_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(dffe_af1),
	.prn(vcc));
defparam dffe_af.is_wysiwyg = "true";
defparam dffe_af.power_up = "low";

cycloneive_lcell_comb \dffe_af~0 (
	.dataa(wrreq),
	.datab(\dpfifo|usedw_counter|counter_reg_bit[2]~q ),
	.datac(counter_reg_bit_0),
	.datad(dffe_af1),
	.cin(gnd),
	.combout(\dffe_af~0_combout ),
	.cout());
defparam \dffe_af~0 .lut_mask = 16'hEDDE;
defparam \dffe_af~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \dffe_af~1 (
	.dataa(\dpfifo|usedw_counter|counter_reg_bit[1]~q ),
	.datab(rdreq),
	.datac(dffe_af1),
	.datad(\dffe_af~0_combout ),
	.cin(gnd),
	.combout(\dffe_af~1_combout ),
	.cout());
defparam \dffe_af~1 .lut_mask = 16'hF7FB;
defparam \dffe_af~1 .sum_lutc_input = "datac";

endmodule

module CicFilter_a_dpfifo_3s81 (
	q,
	counter_reg_bit_1,
	empty_dff1,
	sink_out_stateempty_and_ready,
	Selector4,
	rreq,
	wreq,
	counter_reg_bit_2,
	counter_reg_bit_0,
	sink_stall,
	data,
	clock,
	reset_n)/* synthesis synthesis_greybox=1 */;
output 	[11:0] q;
output 	counter_reg_bit_1;
output 	empty_dff1;
input 	sink_out_stateempty_and_ready;
input 	Selector4;
input 	rreq;
input 	wreq;
output 	counter_reg_bit_2;
output 	counter_reg_bit_0;
input 	sink_stall;
input 	[11:0] data;
input 	clock;
input 	reset_n;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \_~0_combout ;
wire \usedw_will_be_1~0_combout ;
wire \wr_ptr|counter_reg_bit[0]~q ;
wire \wr_ptr|counter_reg_bit[1]~q ;
wire \wr_ptr|counter_reg_bit[2]~q ;
wire \low_addressa[0]~q ;
wire \rd_ptr_lsb~q ;
wire \ram_read_address[0]~0_combout ;
wire \rd_ptr_msb|counter_reg_bit[0]~q ;
wire \low_addressa[1]~q ;
wire \ram_read_address[1]~1_combout ;
wire \rd_ptr_msb|counter_reg_bit[1]~q ;
wire \low_addressa[2]~q ;
wire \ram_read_address[2]~2_combout ;
wire \_~4_combout ;
wire \rd_ptr_lsb~0_combout ;
wire \_~2_combout ;
wire \usedw_will_be_1~1_combout ;
wire \usedw_is_1_dff~q ;
wire \_~3_combout ;
wire \usedw_is_0_dff~q ;
wire \_~1_combout ;


CicFilter_cntr_unb wr_ptr(
	.sink_staterun1(wreq),
	.counter_reg_bit_0(\wr_ptr|counter_reg_bit[0]~q ),
	.counter_reg_bit_1(\wr_ptr|counter_reg_bit[1]~q ),
	.counter_reg_bit_2(\wr_ptr|counter_reg_bit[2]~q ),
	.clock(clock),
	.reset_n(reset_n));

CicFilter_cntr_ao7 usedw_counter(
	.counter_reg_bit_1(counter_reg_bit_1),
	.updown(wreq),
	.counter_reg_bit_2(counter_reg_bit_2),
	.counter_reg_bit_0(counter_reg_bit_0),
	._(\_~0_combout ),
	.clock(clock),
	.reset_n(reset_n));

CicFilter_cntr_tnb rd_ptr_msb(
	.counter_reg_bit_0(\rd_ptr_msb|counter_reg_bit[0]~q ),
	.counter_reg_bit_1(\rd_ptr_msb|counter_reg_bit[1]~q ),
	._(\_~4_combout ),
	.clock(clock),
	.reset_n(reset_n));

CicFilter_altsyncram_ksf1 FIFOram(
	.q_b({q_b_unconnected_wire_11,q_b_unconnected_wire_10,q[9],q[8],q[7],q[6],q[5],q[4],q[3],q[2],q[1],q[0]}),
	.clocken1(rreq),
	.wren_a(wreq),
	.data_a({gnd,gnd,data[9],data[8],data[7],data[6],data[5],data[4],data[3],data[2],data[1],data[0]}),
	.address_a({\wr_ptr|counter_reg_bit[2]~q ,\wr_ptr|counter_reg_bit[1]~q ,\wr_ptr|counter_reg_bit[0]~q }),
	.address_b({\ram_read_address[2]~2_combout ,\ram_read_address[1]~1_combout ,\ram_read_address[0]~0_combout }),
	.clock0(clock),
	.clock1(clock));

cycloneive_lcell_comb \_~0 (
	.dataa(wreq),
	.datab(sink_stall),
	.datac(sink_out_stateempty_and_ready),
	.datad(Selector4),
	.cin(gnd),
	.combout(\_~0_combout ),
	.cout());
defparam \_~0 .lut_mask = 16'h6996;
defparam \_~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \usedw_will_be_1~0 (
	.dataa(\usedw_is_1_dff~q ),
	.datab(wreq),
	.datac(rreq),
	.datad(\usedw_is_0_dff~q ),
	.cin(gnd),
	.combout(\usedw_will_be_1~0_combout ),
	.cout());
defparam \usedw_will_be_1~0 .lut_mask = 16'hBEFF;
defparam \usedw_will_be_1~0 .sum_lutc_input = "datac";

dffeas \low_addressa[0] (
	.clk(clock),
	.d(\ram_read_address[0]~0_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\low_addressa[0]~q ),
	.prn(vcc));
defparam \low_addressa[0] .is_wysiwyg = "true";
defparam \low_addressa[0] .power_up = "low";

dffeas rd_ptr_lsb(
	.clk(clock),
	.d(\rd_ptr_lsb~0_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(rreq),
	.q(\rd_ptr_lsb~q ),
	.prn(vcc));
defparam rd_ptr_lsb.is_wysiwyg = "true";
defparam rd_ptr_lsb.power_up = "low";

cycloneive_lcell_comb \ram_read_address[0]~0 (
	.dataa(\low_addressa[0]~q ),
	.datab(gnd),
	.datac(rreq),
	.datad(\rd_ptr_lsb~q ),
	.cin(gnd),
	.combout(\ram_read_address[0]~0_combout ),
	.cout());
defparam \ram_read_address[0]~0 .lut_mask = 16'hA0AF;
defparam \ram_read_address[0]~0 .sum_lutc_input = "datac";

dffeas \low_addressa[1] (
	.clk(clock),
	.d(\ram_read_address[1]~1_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\low_addressa[1]~q ),
	.prn(vcc));
defparam \low_addressa[1] .is_wysiwyg = "true";
defparam \low_addressa[1] .power_up = "low";

cycloneive_lcell_comb \ram_read_address[1]~1 (
	.dataa(\rd_ptr_msb|counter_reg_bit[0]~q ),
	.datab(\low_addressa[1]~q ),
	.datac(gnd),
	.datad(rreq),
	.cin(gnd),
	.combout(\ram_read_address[1]~1_combout ),
	.cout());
defparam \ram_read_address[1]~1 .lut_mask = 16'hAACC;
defparam \ram_read_address[1]~1 .sum_lutc_input = "datac";

dffeas \low_addressa[2] (
	.clk(clock),
	.d(\ram_read_address[2]~2_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\low_addressa[2]~q ),
	.prn(vcc));
defparam \low_addressa[2] .is_wysiwyg = "true";
defparam \low_addressa[2] .power_up = "low";

cycloneive_lcell_comb \ram_read_address[2]~2 (
	.dataa(\rd_ptr_msb|counter_reg_bit[1]~q ),
	.datab(\low_addressa[2]~q ),
	.datac(gnd),
	.datad(rreq),
	.cin(gnd),
	.combout(\ram_read_address[2]~2_combout ),
	.cout());
defparam \ram_read_address[2]~2 .lut_mask = 16'hAACC;
defparam \ram_read_address[2]~2 .sum_lutc_input = "datac";

cycloneive_lcell_comb \_~4 (
	.dataa(sink_out_stateempty_and_ready),
	.datab(Selector4),
	.datac(sink_stall),
	.datad(\rd_ptr_lsb~q ),
	.cin(gnd),
	.combout(\_~4_combout ),
	.cout());
defparam \_~4 .lut_mask = 16'hEFFF;
defparam \_~4 .sum_lutc_input = "datac";

cycloneive_lcell_comb \rd_ptr_lsb~0 (
	.dataa(\rd_ptr_lsb~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\rd_ptr_lsb~0_combout ),
	.cout());
defparam \rd_ptr_lsb~0 .lut_mask = 16'h5555;
defparam \rd_ptr_lsb~0 .sum_lutc_input = "datac";

dffeas empty_dff(
	.clk(clock),
	.d(\_~1_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(empty_dff1),
	.prn(vcc));
defparam empty_dff.is_wysiwyg = "true";
defparam empty_dff.power_up = "low";

cycloneive_lcell_comb \_~2 (
	.dataa(counter_reg_bit_1),
	.datab(counter_reg_bit_2),
	.datac(counter_reg_bit_0),
	.datad(wreq),
	.cin(gnd),
	.combout(\_~2_combout ),
	.cout());
defparam \_~2 .lut_mask = 16'hBFFF;
defparam \_~2 .sum_lutc_input = "datac";

cycloneive_lcell_comb \usedw_will_be_1~1 (
	.dataa(\usedw_will_be_1~0_combout ),
	.datab(rreq),
	.datac(\_~2_combout ),
	.datad(gnd),
	.cin(gnd),
	.combout(\usedw_will_be_1~1_combout ),
	.cout());
defparam \usedw_will_be_1~1 .lut_mask = 16'hFEFE;
defparam \usedw_will_be_1~1 .sum_lutc_input = "datac";

dffeas usedw_is_1_dff(
	.clk(clock),
	.d(\usedw_will_be_1~1_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\usedw_is_1_dff~q ),
	.prn(vcc));
defparam usedw_is_1_dff.is_wysiwyg = "true";
defparam usedw_is_1_dff.power_up = "low";

cycloneive_lcell_comb \_~3 (
	.dataa(rreq),
	.datab(\usedw_is_1_dff~q ),
	.datac(wreq),
	.datad(\usedw_is_0_dff~q ),
	.cin(gnd),
	.combout(\_~3_combout ),
	.cout());
defparam \_~3 .lut_mask = 16'hFF7B;
defparam \_~3 .sum_lutc_input = "datac";

dffeas usedw_is_0_dff(
	.clk(clock),
	.d(\_~3_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\usedw_is_0_dff~q ),
	.prn(vcc));
defparam usedw_is_0_dff.is_wysiwyg = "true";
defparam usedw_is_0_dff.power_up = "low";

cycloneive_lcell_comb \_~1 (
	.dataa(\usedw_is_1_dff~q ),
	.datab(rreq),
	.datac(wreq),
	.datad(\usedw_is_0_dff~q ),
	.cin(gnd),
	.combout(\_~1_combout ),
	.cout());
defparam \_~1 .lut_mask = 16'hDF1F;
defparam \_~1 .sum_lutc_input = "datac";

endmodule

module CicFilter_altsyncram_ksf1 (
	q_b,
	clocken1,
	wren_a,
	data_a,
	address_a,
	address_b,
	clock0,
	clock1)/* synthesis synthesis_greybox=1 */;
output 	[11:0] q_b;
input 	clocken1;
input 	wren_a;
input 	[11:0] data_a;
input 	[2:0] address_a;
input 	[2:0] address_b;
input 	clock0;
input 	clock1;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;


wire [143:0] ram_block1a0_PORTBDATAOUT_bus;
wire [143:0] ram_block1a1_PORTBDATAOUT_bus;
wire [143:0] ram_block1a2_PORTBDATAOUT_bus;
wire [143:0] ram_block1a3_PORTBDATAOUT_bus;
wire [143:0] ram_block1a4_PORTBDATAOUT_bus;
wire [143:0] ram_block1a5_PORTBDATAOUT_bus;
wire [143:0] ram_block1a6_PORTBDATAOUT_bus;
wire [143:0] ram_block1a7_PORTBDATAOUT_bus;
wire [143:0] ram_block1a8_PORTBDATAOUT_bus;
wire [143:0] ram_block1a9_PORTBDATAOUT_bus;

assign q_b[0] = ram_block1a0_PORTBDATAOUT_bus[0];

assign q_b[1] = ram_block1a1_PORTBDATAOUT_bus[0];

assign q_b[2] = ram_block1a2_PORTBDATAOUT_bus[0];

assign q_b[3] = ram_block1a3_PORTBDATAOUT_bus[0];

assign q_b[4] = ram_block1a4_PORTBDATAOUT_bus[0];

assign q_b[5] = ram_block1a5_PORTBDATAOUT_bus[0];

assign q_b[6] = ram_block1a6_PORTBDATAOUT_bus[0];

assign q_b[7] = ram_block1a7_PORTBDATAOUT_bus[0];

assign q_b[8] = ram_block1a8_PORTBDATAOUT_bus[0];

assign q_b[9] = ram_block1a9_PORTBDATAOUT_bus[0];

cycloneive_ram_block ram_block1a0(
	.portawe(wren_a),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(vcc),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[0]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a0_PORTBDATAOUT_bus));
defparam ram_block1a0.clk1_output_clock_enable = "ena1";
defparam ram_block1a0.data_interleave_offset_in_bits = 1;
defparam ram_block1a0.data_interleave_width_in_bits = 1;
defparam ram_block1a0.logical_ram_name = "CicFilter_cic:CicFilter_cic_inst|auk_dspip_avalon_streaming_sink_cic_121:aii_sink|scfifo:\\normal_fifo:fifo_eab_on:in_fifo|scfifo_ahh1:auto_generated|a_dpfifo_3s81:dpfifo|altsyncram_ksf1:FIFOram|ALTSYNCRAM";
defparam ram_block1a0.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a0.operation_mode = "dual_port";
defparam ram_block1a0.port_a_address_clear = "none";
defparam ram_block1a0.port_a_address_width = 3;
defparam ram_block1a0.port_a_data_out_clear = "none";
defparam ram_block1a0.port_a_data_out_clock = "none";
defparam ram_block1a0.port_a_data_width = 1;
defparam ram_block1a0.port_a_first_address = 0;
defparam ram_block1a0.port_a_first_bit_number = 0;
defparam ram_block1a0.port_a_last_address = 7;
defparam ram_block1a0.port_a_logical_ram_depth = 8;
defparam ram_block1a0.port_a_logical_ram_width = 12;
defparam ram_block1a0.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a0.port_b_address_clear = "none";
defparam ram_block1a0.port_b_address_clock = "clock1";
defparam ram_block1a0.port_b_address_width = 3;
defparam ram_block1a0.port_b_data_out_clear = "none";
defparam ram_block1a0.port_b_data_out_clock = "clock1";
defparam ram_block1a0.port_b_data_width = 1;
defparam ram_block1a0.port_b_first_address = 0;
defparam ram_block1a0.port_b_first_bit_number = 0;
defparam ram_block1a0.port_b_last_address = 7;
defparam ram_block1a0.port_b_logical_ram_depth = 8;
defparam ram_block1a0.port_b_logical_ram_width = 12;
defparam ram_block1a0.port_b_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a0.port_b_read_enable_clock = "clock1";
defparam ram_block1a0.ram_block_type = "auto";

cycloneive_ram_block ram_block1a1(
	.portawe(wren_a),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(vcc),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[1]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a1_PORTBDATAOUT_bus));
defparam ram_block1a1.clk1_output_clock_enable = "ena1";
defparam ram_block1a1.data_interleave_offset_in_bits = 1;
defparam ram_block1a1.data_interleave_width_in_bits = 1;
defparam ram_block1a1.logical_ram_name = "CicFilter_cic:CicFilter_cic_inst|auk_dspip_avalon_streaming_sink_cic_121:aii_sink|scfifo:\\normal_fifo:fifo_eab_on:in_fifo|scfifo_ahh1:auto_generated|a_dpfifo_3s81:dpfifo|altsyncram_ksf1:FIFOram|ALTSYNCRAM";
defparam ram_block1a1.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a1.operation_mode = "dual_port";
defparam ram_block1a1.port_a_address_clear = "none";
defparam ram_block1a1.port_a_address_width = 3;
defparam ram_block1a1.port_a_data_out_clear = "none";
defparam ram_block1a1.port_a_data_out_clock = "none";
defparam ram_block1a1.port_a_data_width = 1;
defparam ram_block1a1.port_a_first_address = 0;
defparam ram_block1a1.port_a_first_bit_number = 1;
defparam ram_block1a1.port_a_last_address = 7;
defparam ram_block1a1.port_a_logical_ram_depth = 8;
defparam ram_block1a1.port_a_logical_ram_width = 12;
defparam ram_block1a1.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a1.port_b_address_clear = "none";
defparam ram_block1a1.port_b_address_clock = "clock1";
defparam ram_block1a1.port_b_address_width = 3;
defparam ram_block1a1.port_b_data_out_clear = "none";
defparam ram_block1a1.port_b_data_out_clock = "clock1";
defparam ram_block1a1.port_b_data_width = 1;
defparam ram_block1a1.port_b_first_address = 0;
defparam ram_block1a1.port_b_first_bit_number = 1;
defparam ram_block1a1.port_b_last_address = 7;
defparam ram_block1a1.port_b_logical_ram_depth = 8;
defparam ram_block1a1.port_b_logical_ram_width = 12;
defparam ram_block1a1.port_b_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a1.port_b_read_enable_clock = "clock1";
defparam ram_block1a1.ram_block_type = "auto";

cycloneive_ram_block ram_block1a2(
	.portawe(wren_a),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(vcc),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[2]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a2_PORTBDATAOUT_bus));
defparam ram_block1a2.clk1_output_clock_enable = "ena1";
defparam ram_block1a2.data_interleave_offset_in_bits = 1;
defparam ram_block1a2.data_interleave_width_in_bits = 1;
defparam ram_block1a2.logical_ram_name = "CicFilter_cic:CicFilter_cic_inst|auk_dspip_avalon_streaming_sink_cic_121:aii_sink|scfifo:\\normal_fifo:fifo_eab_on:in_fifo|scfifo_ahh1:auto_generated|a_dpfifo_3s81:dpfifo|altsyncram_ksf1:FIFOram|ALTSYNCRAM";
defparam ram_block1a2.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a2.operation_mode = "dual_port";
defparam ram_block1a2.port_a_address_clear = "none";
defparam ram_block1a2.port_a_address_width = 3;
defparam ram_block1a2.port_a_data_out_clear = "none";
defparam ram_block1a2.port_a_data_out_clock = "none";
defparam ram_block1a2.port_a_data_width = 1;
defparam ram_block1a2.port_a_first_address = 0;
defparam ram_block1a2.port_a_first_bit_number = 2;
defparam ram_block1a2.port_a_last_address = 7;
defparam ram_block1a2.port_a_logical_ram_depth = 8;
defparam ram_block1a2.port_a_logical_ram_width = 12;
defparam ram_block1a2.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a2.port_b_address_clear = "none";
defparam ram_block1a2.port_b_address_clock = "clock1";
defparam ram_block1a2.port_b_address_width = 3;
defparam ram_block1a2.port_b_data_out_clear = "none";
defparam ram_block1a2.port_b_data_out_clock = "clock1";
defparam ram_block1a2.port_b_data_width = 1;
defparam ram_block1a2.port_b_first_address = 0;
defparam ram_block1a2.port_b_first_bit_number = 2;
defparam ram_block1a2.port_b_last_address = 7;
defparam ram_block1a2.port_b_logical_ram_depth = 8;
defparam ram_block1a2.port_b_logical_ram_width = 12;
defparam ram_block1a2.port_b_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a2.port_b_read_enable_clock = "clock1";
defparam ram_block1a2.ram_block_type = "auto";

cycloneive_ram_block ram_block1a3(
	.portawe(wren_a),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(vcc),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[3]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a3_PORTBDATAOUT_bus));
defparam ram_block1a3.clk1_output_clock_enable = "ena1";
defparam ram_block1a3.data_interleave_offset_in_bits = 1;
defparam ram_block1a3.data_interleave_width_in_bits = 1;
defparam ram_block1a3.logical_ram_name = "CicFilter_cic:CicFilter_cic_inst|auk_dspip_avalon_streaming_sink_cic_121:aii_sink|scfifo:\\normal_fifo:fifo_eab_on:in_fifo|scfifo_ahh1:auto_generated|a_dpfifo_3s81:dpfifo|altsyncram_ksf1:FIFOram|ALTSYNCRAM";
defparam ram_block1a3.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a3.operation_mode = "dual_port";
defparam ram_block1a3.port_a_address_clear = "none";
defparam ram_block1a3.port_a_address_width = 3;
defparam ram_block1a3.port_a_data_out_clear = "none";
defparam ram_block1a3.port_a_data_out_clock = "none";
defparam ram_block1a3.port_a_data_width = 1;
defparam ram_block1a3.port_a_first_address = 0;
defparam ram_block1a3.port_a_first_bit_number = 3;
defparam ram_block1a3.port_a_last_address = 7;
defparam ram_block1a3.port_a_logical_ram_depth = 8;
defparam ram_block1a3.port_a_logical_ram_width = 12;
defparam ram_block1a3.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a3.port_b_address_clear = "none";
defparam ram_block1a3.port_b_address_clock = "clock1";
defparam ram_block1a3.port_b_address_width = 3;
defparam ram_block1a3.port_b_data_out_clear = "none";
defparam ram_block1a3.port_b_data_out_clock = "clock1";
defparam ram_block1a3.port_b_data_width = 1;
defparam ram_block1a3.port_b_first_address = 0;
defparam ram_block1a3.port_b_first_bit_number = 3;
defparam ram_block1a3.port_b_last_address = 7;
defparam ram_block1a3.port_b_logical_ram_depth = 8;
defparam ram_block1a3.port_b_logical_ram_width = 12;
defparam ram_block1a3.port_b_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a3.port_b_read_enable_clock = "clock1";
defparam ram_block1a3.ram_block_type = "auto";

cycloneive_ram_block ram_block1a4(
	.portawe(wren_a),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(vcc),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[4]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a4_PORTBDATAOUT_bus));
defparam ram_block1a4.clk1_output_clock_enable = "ena1";
defparam ram_block1a4.data_interleave_offset_in_bits = 1;
defparam ram_block1a4.data_interleave_width_in_bits = 1;
defparam ram_block1a4.logical_ram_name = "CicFilter_cic:CicFilter_cic_inst|auk_dspip_avalon_streaming_sink_cic_121:aii_sink|scfifo:\\normal_fifo:fifo_eab_on:in_fifo|scfifo_ahh1:auto_generated|a_dpfifo_3s81:dpfifo|altsyncram_ksf1:FIFOram|ALTSYNCRAM";
defparam ram_block1a4.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a4.operation_mode = "dual_port";
defparam ram_block1a4.port_a_address_clear = "none";
defparam ram_block1a4.port_a_address_width = 3;
defparam ram_block1a4.port_a_data_out_clear = "none";
defparam ram_block1a4.port_a_data_out_clock = "none";
defparam ram_block1a4.port_a_data_width = 1;
defparam ram_block1a4.port_a_first_address = 0;
defparam ram_block1a4.port_a_first_bit_number = 4;
defparam ram_block1a4.port_a_last_address = 7;
defparam ram_block1a4.port_a_logical_ram_depth = 8;
defparam ram_block1a4.port_a_logical_ram_width = 12;
defparam ram_block1a4.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a4.port_b_address_clear = "none";
defparam ram_block1a4.port_b_address_clock = "clock1";
defparam ram_block1a4.port_b_address_width = 3;
defparam ram_block1a4.port_b_data_out_clear = "none";
defparam ram_block1a4.port_b_data_out_clock = "clock1";
defparam ram_block1a4.port_b_data_width = 1;
defparam ram_block1a4.port_b_first_address = 0;
defparam ram_block1a4.port_b_first_bit_number = 4;
defparam ram_block1a4.port_b_last_address = 7;
defparam ram_block1a4.port_b_logical_ram_depth = 8;
defparam ram_block1a4.port_b_logical_ram_width = 12;
defparam ram_block1a4.port_b_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a4.port_b_read_enable_clock = "clock1";
defparam ram_block1a4.ram_block_type = "auto";

cycloneive_ram_block ram_block1a5(
	.portawe(wren_a),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(vcc),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[5]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a5_PORTBDATAOUT_bus));
defparam ram_block1a5.clk1_output_clock_enable = "ena1";
defparam ram_block1a5.data_interleave_offset_in_bits = 1;
defparam ram_block1a5.data_interleave_width_in_bits = 1;
defparam ram_block1a5.logical_ram_name = "CicFilter_cic:CicFilter_cic_inst|auk_dspip_avalon_streaming_sink_cic_121:aii_sink|scfifo:\\normal_fifo:fifo_eab_on:in_fifo|scfifo_ahh1:auto_generated|a_dpfifo_3s81:dpfifo|altsyncram_ksf1:FIFOram|ALTSYNCRAM";
defparam ram_block1a5.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a5.operation_mode = "dual_port";
defparam ram_block1a5.port_a_address_clear = "none";
defparam ram_block1a5.port_a_address_width = 3;
defparam ram_block1a5.port_a_data_out_clear = "none";
defparam ram_block1a5.port_a_data_out_clock = "none";
defparam ram_block1a5.port_a_data_width = 1;
defparam ram_block1a5.port_a_first_address = 0;
defparam ram_block1a5.port_a_first_bit_number = 5;
defparam ram_block1a5.port_a_last_address = 7;
defparam ram_block1a5.port_a_logical_ram_depth = 8;
defparam ram_block1a5.port_a_logical_ram_width = 12;
defparam ram_block1a5.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a5.port_b_address_clear = "none";
defparam ram_block1a5.port_b_address_clock = "clock1";
defparam ram_block1a5.port_b_address_width = 3;
defparam ram_block1a5.port_b_data_out_clear = "none";
defparam ram_block1a5.port_b_data_out_clock = "clock1";
defparam ram_block1a5.port_b_data_width = 1;
defparam ram_block1a5.port_b_first_address = 0;
defparam ram_block1a5.port_b_first_bit_number = 5;
defparam ram_block1a5.port_b_last_address = 7;
defparam ram_block1a5.port_b_logical_ram_depth = 8;
defparam ram_block1a5.port_b_logical_ram_width = 12;
defparam ram_block1a5.port_b_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a5.port_b_read_enable_clock = "clock1";
defparam ram_block1a5.ram_block_type = "auto";

cycloneive_ram_block ram_block1a6(
	.portawe(wren_a),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(vcc),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[6]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a6_PORTBDATAOUT_bus));
defparam ram_block1a6.clk1_output_clock_enable = "ena1";
defparam ram_block1a6.data_interleave_offset_in_bits = 1;
defparam ram_block1a6.data_interleave_width_in_bits = 1;
defparam ram_block1a6.logical_ram_name = "CicFilter_cic:CicFilter_cic_inst|auk_dspip_avalon_streaming_sink_cic_121:aii_sink|scfifo:\\normal_fifo:fifo_eab_on:in_fifo|scfifo_ahh1:auto_generated|a_dpfifo_3s81:dpfifo|altsyncram_ksf1:FIFOram|ALTSYNCRAM";
defparam ram_block1a6.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a6.operation_mode = "dual_port";
defparam ram_block1a6.port_a_address_clear = "none";
defparam ram_block1a6.port_a_address_width = 3;
defparam ram_block1a6.port_a_data_out_clear = "none";
defparam ram_block1a6.port_a_data_out_clock = "none";
defparam ram_block1a6.port_a_data_width = 1;
defparam ram_block1a6.port_a_first_address = 0;
defparam ram_block1a6.port_a_first_bit_number = 6;
defparam ram_block1a6.port_a_last_address = 7;
defparam ram_block1a6.port_a_logical_ram_depth = 8;
defparam ram_block1a6.port_a_logical_ram_width = 12;
defparam ram_block1a6.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a6.port_b_address_clear = "none";
defparam ram_block1a6.port_b_address_clock = "clock1";
defparam ram_block1a6.port_b_address_width = 3;
defparam ram_block1a6.port_b_data_out_clear = "none";
defparam ram_block1a6.port_b_data_out_clock = "clock1";
defparam ram_block1a6.port_b_data_width = 1;
defparam ram_block1a6.port_b_first_address = 0;
defparam ram_block1a6.port_b_first_bit_number = 6;
defparam ram_block1a6.port_b_last_address = 7;
defparam ram_block1a6.port_b_logical_ram_depth = 8;
defparam ram_block1a6.port_b_logical_ram_width = 12;
defparam ram_block1a6.port_b_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a6.port_b_read_enable_clock = "clock1";
defparam ram_block1a6.ram_block_type = "auto";

cycloneive_ram_block ram_block1a7(
	.portawe(wren_a),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(vcc),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[7]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a7_PORTBDATAOUT_bus));
defparam ram_block1a7.clk1_output_clock_enable = "ena1";
defparam ram_block1a7.data_interleave_offset_in_bits = 1;
defparam ram_block1a7.data_interleave_width_in_bits = 1;
defparam ram_block1a7.logical_ram_name = "CicFilter_cic:CicFilter_cic_inst|auk_dspip_avalon_streaming_sink_cic_121:aii_sink|scfifo:\\normal_fifo:fifo_eab_on:in_fifo|scfifo_ahh1:auto_generated|a_dpfifo_3s81:dpfifo|altsyncram_ksf1:FIFOram|ALTSYNCRAM";
defparam ram_block1a7.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a7.operation_mode = "dual_port";
defparam ram_block1a7.port_a_address_clear = "none";
defparam ram_block1a7.port_a_address_width = 3;
defparam ram_block1a7.port_a_data_out_clear = "none";
defparam ram_block1a7.port_a_data_out_clock = "none";
defparam ram_block1a7.port_a_data_width = 1;
defparam ram_block1a7.port_a_first_address = 0;
defparam ram_block1a7.port_a_first_bit_number = 7;
defparam ram_block1a7.port_a_last_address = 7;
defparam ram_block1a7.port_a_logical_ram_depth = 8;
defparam ram_block1a7.port_a_logical_ram_width = 12;
defparam ram_block1a7.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a7.port_b_address_clear = "none";
defparam ram_block1a7.port_b_address_clock = "clock1";
defparam ram_block1a7.port_b_address_width = 3;
defparam ram_block1a7.port_b_data_out_clear = "none";
defparam ram_block1a7.port_b_data_out_clock = "clock1";
defparam ram_block1a7.port_b_data_width = 1;
defparam ram_block1a7.port_b_first_address = 0;
defparam ram_block1a7.port_b_first_bit_number = 7;
defparam ram_block1a7.port_b_last_address = 7;
defparam ram_block1a7.port_b_logical_ram_depth = 8;
defparam ram_block1a7.port_b_logical_ram_width = 12;
defparam ram_block1a7.port_b_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a7.port_b_read_enable_clock = "clock1";
defparam ram_block1a7.ram_block_type = "auto";

cycloneive_ram_block ram_block1a8(
	.portawe(wren_a),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(vcc),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[8]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a8_PORTBDATAOUT_bus));
defparam ram_block1a8.clk1_output_clock_enable = "ena1";
defparam ram_block1a8.data_interleave_offset_in_bits = 1;
defparam ram_block1a8.data_interleave_width_in_bits = 1;
defparam ram_block1a8.logical_ram_name = "CicFilter_cic:CicFilter_cic_inst|auk_dspip_avalon_streaming_sink_cic_121:aii_sink|scfifo:\\normal_fifo:fifo_eab_on:in_fifo|scfifo_ahh1:auto_generated|a_dpfifo_3s81:dpfifo|altsyncram_ksf1:FIFOram|ALTSYNCRAM";
defparam ram_block1a8.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a8.operation_mode = "dual_port";
defparam ram_block1a8.port_a_address_clear = "none";
defparam ram_block1a8.port_a_address_width = 3;
defparam ram_block1a8.port_a_data_out_clear = "none";
defparam ram_block1a8.port_a_data_out_clock = "none";
defparam ram_block1a8.port_a_data_width = 1;
defparam ram_block1a8.port_a_first_address = 0;
defparam ram_block1a8.port_a_first_bit_number = 8;
defparam ram_block1a8.port_a_last_address = 7;
defparam ram_block1a8.port_a_logical_ram_depth = 8;
defparam ram_block1a8.port_a_logical_ram_width = 12;
defparam ram_block1a8.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a8.port_b_address_clear = "none";
defparam ram_block1a8.port_b_address_clock = "clock1";
defparam ram_block1a8.port_b_address_width = 3;
defparam ram_block1a8.port_b_data_out_clear = "none";
defparam ram_block1a8.port_b_data_out_clock = "clock1";
defparam ram_block1a8.port_b_data_width = 1;
defparam ram_block1a8.port_b_first_address = 0;
defparam ram_block1a8.port_b_first_bit_number = 8;
defparam ram_block1a8.port_b_last_address = 7;
defparam ram_block1a8.port_b_logical_ram_depth = 8;
defparam ram_block1a8.port_b_logical_ram_width = 12;
defparam ram_block1a8.port_b_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a8.port_b_read_enable_clock = "clock1";
defparam ram_block1a8.ram_block_type = "auto";

cycloneive_ram_block ram_block1a9(
	.portawe(wren_a),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(vcc),
	.ena1(clocken1),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[9]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a9_PORTBDATAOUT_bus));
defparam ram_block1a9.clk1_output_clock_enable = "ena1";
defparam ram_block1a9.data_interleave_offset_in_bits = 1;
defparam ram_block1a9.data_interleave_width_in_bits = 1;
defparam ram_block1a9.logical_ram_name = "CicFilter_cic:CicFilter_cic_inst|auk_dspip_avalon_streaming_sink_cic_121:aii_sink|scfifo:\\normal_fifo:fifo_eab_on:in_fifo|scfifo_ahh1:auto_generated|a_dpfifo_3s81:dpfifo|altsyncram_ksf1:FIFOram|ALTSYNCRAM";
defparam ram_block1a9.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a9.operation_mode = "dual_port";
defparam ram_block1a9.port_a_address_clear = "none";
defparam ram_block1a9.port_a_address_width = 3;
defparam ram_block1a9.port_a_data_out_clear = "none";
defparam ram_block1a9.port_a_data_out_clock = "none";
defparam ram_block1a9.port_a_data_width = 1;
defparam ram_block1a9.port_a_first_address = 0;
defparam ram_block1a9.port_a_first_bit_number = 9;
defparam ram_block1a9.port_a_last_address = 7;
defparam ram_block1a9.port_a_logical_ram_depth = 8;
defparam ram_block1a9.port_a_logical_ram_width = 12;
defparam ram_block1a9.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a9.port_b_address_clear = "none";
defparam ram_block1a9.port_b_address_clock = "clock1";
defparam ram_block1a9.port_b_address_width = 3;
defparam ram_block1a9.port_b_data_out_clear = "none";
defparam ram_block1a9.port_b_data_out_clock = "clock1";
defparam ram_block1a9.port_b_data_width = 1;
defparam ram_block1a9.port_b_first_address = 0;
defparam ram_block1a9.port_b_first_bit_number = 9;
defparam ram_block1a9.port_b_last_address = 7;
defparam ram_block1a9.port_b_logical_ram_depth = 8;
defparam ram_block1a9.port_b_logical_ram_width = 12;
defparam ram_block1a9.port_b_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a9.port_b_read_enable_clock = "clock1";
defparam ram_block1a9.ram_block_type = "auto";

endmodule

module CicFilter_cntr_ao7 (
	counter_reg_bit_1,
	updown,
	counter_reg_bit_2,
	counter_reg_bit_0,
	_,
	clock,
	reset_n)/* synthesis synthesis_greybox=1 */;
output 	counter_reg_bit_1;
input 	updown;
output 	counter_reg_bit_2;
output 	counter_reg_bit_0;
input 	_;
input 	clock;
input 	reset_n;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \counter_comb_bita0~COUT ;
wire \counter_comb_bita1~combout ;
wire \counter_comb_bita1~COUT ;
wire \counter_comb_bita2~combout ;
wire \counter_comb_bita0~combout ;


dffeas \counter_reg_bit[1] (
	.clk(clock),
	.d(\counter_comb_bita1~combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(_),
	.q(counter_reg_bit_1),
	.prn(vcc));
defparam \counter_reg_bit[1] .is_wysiwyg = "true";
defparam \counter_reg_bit[1] .power_up = "low";

dffeas \counter_reg_bit[2] (
	.clk(clock),
	.d(\counter_comb_bita2~combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(_),
	.q(counter_reg_bit_2),
	.prn(vcc));
defparam \counter_reg_bit[2] .is_wysiwyg = "true";
defparam \counter_reg_bit[2] .power_up = "low";

dffeas \counter_reg_bit[0] (
	.clk(clock),
	.d(\counter_comb_bita0~combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(_),
	.q(counter_reg_bit_0),
	.prn(vcc));
defparam \counter_reg_bit[0] .is_wysiwyg = "true";
defparam \counter_reg_bit[0] .power_up = "low";

cycloneive_lcell_comb counter_comb_bita0(
	.dataa(counter_reg_bit_0),
	.datab(updown),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(\counter_comb_bita0~combout ),
	.cout(\counter_comb_bita0~COUT ));
defparam counter_comb_bita0.lut_mask = 16'h5566;
defparam counter_comb_bita0.sum_lutc_input = "cin";

cycloneive_lcell_comb counter_comb_bita1(
	.dataa(counter_reg_bit_1),
	.datab(updown),
	.datac(gnd),
	.datad(vcc),
	.cin(\counter_comb_bita0~COUT ),
	.combout(\counter_comb_bita1~combout ),
	.cout(\counter_comb_bita1~COUT ));
defparam counter_comb_bita1.lut_mask = 16'h5A6F;
defparam counter_comb_bita1.sum_lutc_input = "cin";

cycloneive_lcell_comb counter_comb_bita2(
	.dataa(counter_reg_bit_2),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(\counter_comb_bita1~COUT ),
	.combout(\counter_comb_bita2~combout ),
	.cout());
defparam counter_comb_bita2.lut_mask = 16'h5A5A;
defparam counter_comb_bita2.sum_lutc_input = "cin";

endmodule

module CicFilter_cntr_tnb (
	counter_reg_bit_0,
	counter_reg_bit_1,
	_,
	clock,
	reset_n)/* synthesis synthesis_greybox=1 */;
output 	counter_reg_bit_0;
output 	counter_reg_bit_1;
input 	_;
input 	clock;
input 	reset_n;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \counter_comb_bita0~combout ;
wire \counter_comb_bita0~COUT ;
wire \counter_comb_bita1~combout ;


dffeas \counter_reg_bit[0] (
	.clk(clock),
	.d(\counter_comb_bita0~combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(_),
	.q(counter_reg_bit_0),
	.prn(vcc));
defparam \counter_reg_bit[0] .is_wysiwyg = "true";
defparam \counter_reg_bit[0] .power_up = "low";

dffeas \counter_reg_bit[1] (
	.clk(clock),
	.d(\counter_comb_bita1~combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(_),
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
	.datad(gnd),
	.cin(\counter_comb_bita0~COUT ),
	.combout(\counter_comb_bita1~combout ),
	.cout());
defparam counter_comb_bita1.lut_mask = 16'h5A5A;
defparam counter_comb_bita1.sum_lutc_input = "cin";

endmodule

module CicFilter_cntr_unb (
	sink_staterun1,
	counter_reg_bit_0,
	counter_reg_bit_1,
	counter_reg_bit_2,
	clock,
	reset_n)/* synthesis synthesis_greybox=1 */;
input 	sink_staterun1;
output 	counter_reg_bit_0;
output 	counter_reg_bit_1;
output 	counter_reg_bit_2;
input 	clock;
input 	reset_n;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \counter_comb_bita0~combout ;
wire \counter_comb_bita0~COUT ;
wire \counter_comb_bita1~combout ;
wire \counter_comb_bita1~COUT ;
wire \counter_comb_bita2~combout ;


dffeas \counter_reg_bit[0] (
	.clk(clock),
	.d(\counter_comb_bita0~combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sink_staterun1),
	.q(counter_reg_bit_0),
	.prn(vcc));
defparam \counter_reg_bit[0] .is_wysiwyg = "true";
defparam \counter_reg_bit[0] .power_up = "low";

dffeas \counter_reg_bit[1] (
	.clk(clock),
	.d(\counter_comb_bita1~combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sink_staterun1),
	.q(counter_reg_bit_1),
	.prn(vcc));
defparam \counter_reg_bit[1] .is_wysiwyg = "true";
defparam \counter_reg_bit[1] .power_up = "low";

dffeas \counter_reg_bit[2] (
	.clk(clock),
	.d(\counter_comb_bita2~combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(sink_staterun1),
	.q(counter_reg_bit_2),
	.prn(vcc));
defparam \counter_reg_bit[2] .is_wysiwyg = "true";
defparam \counter_reg_bit[2] .power_up = "low";

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
	.datad(gnd),
	.cin(\counter_comb_bita1~COUT ),
	.combout(\counter_comb_bita2~combout ),
	.cout());
defparam counter_comb_bita2.lut_mask = 16'h5A5A;
defparam counter_comb_bita2.sum_lutc_input = "cin";

endmodule

module CicFilter_auk_dspip_avalon_streaming_source_cic_121 (
	data,
	at_source_data_0,
	at_source_data_1,
	at_source_data_2,
	at_source_data_3,
	at_source_data_4,
	at_source_data_5,
	at_source_data_6,
	at_source_data_7,
	at_source_data_8,
	at_source_data_9,
	at_source_data_10,
	at_source_data_11,
	at_source_data_12,
	at_source_data_13,
	at_source_data_14,
	at_source_data_15,
	at_source_data_16,
	at_source_valid_s1,
	at_source_error_0,
	source_packet_error_0,
	stall_reg,
	sink_stall_reg,
	source_stall_reg,
	ena_diff_4,
	state,
	Mux0,
	clk,
	reset_n,
	out_ready,
	clken)/* synthesis synthesis_greybox=1 */;
input 	[16:0] data;
output 	at_source_data_0;
output 	at_source_data_1;
output 	at_source_data_2;
output 	at_source_data_3;
output 	at_source_data_4;
output 	at_source_data_5;
output 	at_source_data_6;
output 	at_source_data_7;
output 	at_source_data_8;
output 	at_source_data_9;
output 	at_source_data_10;
output 	at_source_data_11;
output 	at_source_data_12;
output 	at_source_data_13;
output 	at_source_data_14;
output 	at_source_data_15;
output 	at_source_data_16;
output 	at_source_valid_s1;
output 	at_source_error_0;
input 	source_packet_error_0;
input 	stall_reg;
input 	sink_stall_reg;
input 	source_stall_reg;
input 	ena_diff_4;
input 	state;
output 	Mux0;
input 	clk;
input 	reset_n;
input 	out_ready;
input 	clken;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \source_stall_int_d~q ;
wire \was_stalled~0_combout ;
wire \Mux2~0_combout ;
wire \first_data~0_combout ;
wire \first_data~q ;
wire \data_select~0_combout ;
wire \valid_ctrl_inter~0_combout ;
wire \valid_ctrl_inter~1_combout ;
wire \valid_ctrl_int~q ;
wire \Mux1~0_combout ;
wire \valid_ctrl_inter1~0_combout ;
wire \valid_ctrl_int1~q ;
wire \Mux2~2_combout ;
wire \Mux3~0_combout ;
wire \Mux2~3_combout ;
wire \was_stalled~1_combout ;
wire \was_stalled~q ;
wire \Mux2~1_combout ;
wire \Mux3~1_combout ;
wire \Mux3~2_combout ;
wire \data_int1[0]~q ;
wire \data_int[0]~q ;
wire \data_int_selected[0]~0_combout ;
wire \data_int1[1]~q ;
wire \data_int[1]~q ;
wire \data_int_selected[1]~1_combout ;
wire \data_int1[2]~q ;
wire \data_int[2]~q ;
wire \data_int_selected[2]~2_combout ;
wire \data_int1[3]~q ;
wire \data_int[3]~q ;
wire \data_int_selected[3]~3_combout ;
wire \data_int1[4]~q ;
wire \data_int[4]~q ;
wire \data_int_selected[4]~4_combout ;
wire \data_int1[5]~q ;
wire \data_int[5]~q ;
wire \data_int_selected[5]~5_combout ;
wire \data_int1[6]~q ;
wire \data_int[6]~q ;
wire \data_int_selected[6]~6_combout ;
wire \data_int1[7]~q ;
wire \data_int[7]~q ;
wire \data_int_selected[7]~7_combout ;
wire \data_int1[8]~q ;
wire \data_int[8]~q ;
wire \data_int_selected[8]~8_combout ;
wire \data_int1[9]~q ;
wire \data_int[9]~q ;
wire \data_int_selected[9]~9_combout ;
wire \data_int1[10]~q ;
wire \data_int[10]~q ;
wire \data_int_selected[10]~10_combout ;
wire \data_int1[11]~q ;
wire \data_int[11]~q ;
wire \data_int_selected[11]~11_combout ;
wire \data_int1[12]~q ;
wire \data_int[12]~q ;
wire \data_int_selected[12]~12_combout ;
wire \data_int1[13]~q ;
wire \data_int[13]~q ;
wire \data_int_selected[13]~13_combout ;
wire \data_int1[14]~q ;
wire \data_int[14]~q ;
wire \data_int_selected[14]~14_combout ;
wire \data_int1[15]~q ;
wire \data_int[15]~q ;
wire \data_int_selected[15]~15_combout ;
wire \data_int1[16]~q ;
wire \data_int[16]~q ;
wire \data_int_selected[16]~16_combout ;
wire \at_source_valid_int~0_combout ;
wire \at_source_valid_int~1_combout ;
wire \Mux0~0_combout ;
wire \Mux0~1_combout ;


dffeas source_stall_int_d(
	.clk(clk),
	.d(Mux0),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\source_stall_int_d~q ),
	.prn(vcc));
defparam source_stall_int_d.is_wysiwyg = "true";
defparam source_stall_int_d.power_up = "low";

cycloneive_lcell_comb \was_stalled~0 (
	.dataa(\source_stall_int_d~q ),
	.datab(gnd),
	.datac(clken),
	.datad(stall_reg),
	.cin(gnd),
	.combout(\was_stalled~0_combout ),
	.cout());
defparam \was_stalled~0 .lut_mask = 16'hAFFF;
defparam \was_stalled~0 .sum_lutc_input = "datac";

dffeas \at_source_data[0] (
	.clk(clk),
	.d(\data_int_selected[0]~0_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Mux1~0_combout ),
	.q(at_source_data_0),
	.prn(vcc));
defparam \at_source_data[0] .is_wysiwyg = "true";
defparam \at_source_data[0] .power_up = "low";

dffeas \at_source_data[1] (
	.clk(clk),
	.d(\data_int_selected[1]~1_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Mux1~0_combout ),
	.q(at_source_data_1),
	.prn(vcc));
defparam \at_source_data[1] .is_wysiwyg = "true";
defparam \at_source_data[1] .power_up = "low";

dffeas \at_source_data[2] (
	.clk(clk),
	.d(\data_int_selected[2]~2_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Mux1~0_combout ),
	.q(at_source_data_2),
	.prn(vcc));
defparam \at_source_data[2] .is_wysiwyg = "true";
defparam \at_source_data[2] .power_up = "low";

dffeas \at_source_data[3] (
	.clk(clk),
	.d(\data_int_selected[3]~3_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Mux1~0_combout ),
	.q(at_source_data_3),
	.prn(vcc));
defparam \at_source_data[3] .is_wysiwyg = "true";
defparam \at_source_data[3] .power_up = "low";

dffeas \at_source_data[4] (
	.clk(clk),
	.d(\data_int_selected[4]~4_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Mux1~0_combout ),
	.q(at_source_data_4),
	.prn(vcc));
defparam \at_source_data[4] .is_wysiwyg = "true";
defparam \at_source_data[4] .power_up = "low";

dffeas \at_source_data[5] (
	.clk(clk),
	.d(\data_int_selected[5]~5_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Mux1~0_combout ),
	.q(at_source_data_5),
	.prn(vcc));
defparam \at_source_data[5] .is_wysiwyg = "true";
defparam \at_source_data[5] .power_up = "low";

dffeas \at_source_data[6] (
	.clk(clk),
	.d(\data_int_selected[6]~6_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Mux1~0_combout ),
	.q(at_source_data_6),
	.prn(vcc));
defparam \at_source_data[6] .is_wysiwyg = "true";
defparam \at_source_data[6] .power_up = "low";

dffeas \at_source_data[7] (
	.clk(clk),
	.d(\data_int_selected[7]~7_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Mux1~0_combout ),
	.q(at_source_data_7),
	.prn(vcc));
defparam \at_source_data[7] .is_wysiwyg = "true";
defparam \at_source_data[7] .power_up = "low";

dffeas \at_source_data[8] (
	.clk(clk),
	.d(\data_int_selected[8]~8_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Mux1~0_combout ),
	.q(at_source_data_8),
	.prn(vcc));
defparam \at_source_data[8] .is_wysiwyg = "true";
defparam \at_source_data[8] .power_up = "low";

dffeas \at_source_data[9] (
	.clk(clk),
	.d(\data_int_selected[9]~9_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Mux1~0_combout ),
	.q(at_source_data_9),
	.prn(vcc));
defparam \at_source_data[9] .is_wysiwyg = "true";
defparam \at_source_data[9] .power_up = "low";

dffeas \at_source_data[10] (
	.clk(clk),
	.d(\data_int_selected[10]~10_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Mux1~0_combout ),
	.q(at_source_data_10),
	.prn(vcc));
defparam \at_source_data[10] .is_wysiwyg = "true";
defparam \at_source_data[10] .power_up = "low";

dffeas \at_source_data[11] (
	.clk(clk),
	.d(\data_int_selected[11]~11_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Mux1~0_combout ),
	.q(at_source_data_11),
	.prn(vcc));
defparam \at_source_data[11] .is_wysiwyg = "true";
defparam \at_source_data[11] .power_up = "low";

dffeas \at_source_data[12] (
	.clk(clk),
	.d(\data_int_selected[12]~12_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Mux1~0_combout ),
	.q(at_source_data_12),
	.prn(vcc));
defparam \at_source_data[12] .is_wysiwyg = "true";
defparam \at_source_data[12] .power_up = "low";

dffeas \at_source_data[13] (
	.clk(clk),
	.d(\data_int_selected[13]~13_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Mux1~0_combout ),
	.q(at_source_data_13),
	.prn(vcc));
defparam \at_source_data[13] .is_wysiwyg = "true";
defparam \at_source_data[13] .power_up = "low";

dffeas \at_source_data[14] (
	.clk(clk),
	.d(\data_int_selected[14]~14_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Mux1~0_combout ),
	.q(at_source_data_14),
	.prn(vcc));
defparam \at_source_data[14] .is_wysiwyg = "true";
defparam \at_source_data[14] .power_up = "low";

dffeas \at_source_data[15] (
	.clk(clk),
	.d(\data_int_selected[15]~15_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Mux1~0_combout ),
	.q(at_source_data_15),
	.prn(vcc));
defparam \at_source_data[15] .is_wysiwyg = "true";
defparam \at_source_data[15] .power_up = "low";

dffeas \at_source_data[16] (
	.clk(clk),
	.d(\data_int_selected[16]~16_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Mux1~0_combout ),
	.q(at_source_data_16),
	.prn(vcc));
defparam \at_source_data[16] .is_wysiwyg = "true";
defparam \at_source_data[16] .power_up = "low";

dffeas at_source_valid_s(
	.clk(clk),
	.d(\at_source_valid_int~1_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(at_source_valid_s1),
	.prn(vcc));
defparam at_source_valid_s.is_wysiwyg = "true";
defparam at_source_valid_s.power_up = "low";

dffeas \at_source_error[0] (
	.clk(clk),
	.d(source_packet_error_0),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(at_source_error_0),
	.prn(vcc));
defparam \at_source_error[0] .is_wysiwyg = "true";
defparam \at_source_error[0] .power_up = "low";

cycloneive_lcell_comb \Mux0~2 (
	.dataa(\valid_ctrl_int1~q ),
	.datab(\Mux0~0_combout ),
	.datac(out_ready),
	.datad(\Mux0~1_combout ),
	.cin(gnd),
	.combout(Mux0),
	.cout());
defparam \Mux0~2 .lut_mask = 16'hFFEF;
defparam \Mux0~2 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Mux2~0 (
	.dataa(clken),
	.datab(stall_reg),
	.datac(sink_stall_reg),
	.datad(source_stall_reg),
	.cin(gnd),
	.combout(\Mux2~0_combout ),
	.cout());
defparam \Mux2~0 .lut_mask = 16'hFEFF;
defparam \Mux2~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \first_data~0 (
	.dataa(\valid_ctrl_int1~q ),
	.datab(\first_data~q ),
	.datac(at_source_valid_s1),
	.datad(out_ready),
	.cin(gnd),
	.combout(\first_data~0_combout ),
	.cout());
defparam \first_data~0 .lut_mask = 16'hEBBE;
defparam \first_data~0 .sum_lutc_input = "datac";

dffeas first_data(
	.clk(clk),
	.d(\first_data~0_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\first_data~q ),
	.prn(vcc));
defparam first_data.is_wysiwyg = "true";
defparam first_data.power_up = "low";

cycloneive_lcell_comb \data_select~0 (
	.dataa(at_source_valid_s1),
	.datab(\first_data~q ),
	.datac(\valid_ctrl_int1~q ),
	.datad(gnd),
	.cin(gnd),
	.combout(\data_select~0_combout ),
	.cout());
defparam \data_select~0 .lut_mask = 16'hFEFE;
defparam \data_select~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \valid_ctrl_inter~0 (
	.dataa(\valid_ctrl_int~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(source_packet_error_0),
	.cin(gnd),
	.combout(\valid_ctrl_inter~0_combout ),
	.cout());
defparam \valid_ctrl_inter~0 .lut_mask = 16'hAAFF;
defparam \valid_ctrl_inter~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \valid_ctrl_inter~1 (
	.dataa(\Mux2~3_combout ),
	.datab(\valid_ctrl_inter~0_combout ),
	.datac(\data_select~0_combout ),
	.datad(\Mux1~0_combout ),
	.cin(gnd),
	.combout(\valid_ctrl_inter~1_combout ),
	.cout());
defparam \valid_ctrl_inter~1 .lut_mask = 16'hFEFF;
defparam \valid_ctrl_inter~1 .sum_lutc_input = "datac";

dffeas valid_ctrl_int(
	.clk(clk),
	.d(\valid_ctrl_inter~1_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\valid_ctrl_int~q ),
	.prn(vcc));
defparam valid_ctrl_int.is_wysiwyg = "true";
defparam valid_ctrl_int.power_up = "low";

cycloneive_lcell_comb \Mux1~0 (
	.dataa(out_ready),
	.datab(\valid_ctrl_int1~q ),
	.datac(\valid_ctrl_int~q ),
	.datad(at_source_valid_s1),
	.cin(gnd),
	.combout(\Mux1~0_combout ),
	.cout());
defparam \Mux1~0 .lut_mask = 16'hFAFC;
defparam \Mux1~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \valid_ctrl_inter1~0 (
	.dataa(\Mux3~2_combout ),
	.datab(\valid_ctrl_int1~q ),
	.datac(\data_select~0_combout ),
	.datad(\Mux1~0_combout ),
	.cin(gnd),
	.combout(\valid_ctrl_inter1~0_combout ),
	.cout());
defparam \valid_ctrl_inter1~0 .lut_mask = 16'hEFFF;
defparam \valid_ctrl_inter1~0 .sum_lutc_input = "datac";

dffeas valid_ctrl_int1(
	.clk(clk),
	.d(\valid_ctrl_inter1~0_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\valid_ctrl_int1~q ),
	.prn(vcc));
defparam valid_ctrl_int1.is_wysiwyg = "true";
defparam valid_ctrl_int1.power_up = "low";

cycloneive_lcell_comb \Mux2~2 (
	.dataa(out_ready),
	.datab(at_source_valid_s1),
	.datac(\first_data~q ),
	.datad(\valid_ctrl_int1~q ),
	.cin(gnd),
	.combout(\Mux2~2_combout ),
	.cout());
defparam \Mux2~2 .lut_mask = 16'hFEFF;
defparam \Mux2~2 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Mux3~0 (
	.dataa(at_source_valid_s1),
	.datab(\valid_ctrl_int1~q ),
	.datac(\valid_ctrl_int~q ),
	.datad(gnd),
	.cin(gnd),
	.combout(\Mux3~0_combout ),
	.cout());
defparam \Mux3~0 .lut_mask = 16'hFEFE;
defparam \Mux3~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Mux2~3 (
	.dataa(\Mux2~0_combout ),
	.datab(\Mux2~1_combout ),
	.datac(\Mux2~2_combout ),
	.datad(\Mux3~0_combout ),
	.cin(gnd),
	.combout(\Mux2~3_combout ),
	.cout());
defparam \Mux2~3 .lut_mask = 16'hFEFF;
defparam \Mux2~3 .sum_lutc_input = "datac";

cycloneive_lcell_comb \was_stalled~1 (
	.dataa(\was_stalled~0_combout ),
	.datab(\was_stalled~q ),
	.datac(\Mux3~2_combout ),
	.datad(\Mux2~3_combout ),
	.cin(gnd),
	.combout(\was_stalled~1_combout ),
	.cout());
defparam \was_stalled~1 .lut_mask = 16'hFFFE;
defparam \was_stalled~1 .sum_lutc_input = "datac";

dffeas was_stalled(
	.clk(clk),
	.d(\was_stalled~1_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\was_stalled~q ),
	.prn(vcc));
defparam was_stalled.is_wysiwyg = "true";
defparam was_stalled.power_up = "low";

cycloneive_lcell_comb \Mux2~1 (
	.dataa(ena_diff_4),
	.datab(state),
	.datac(gnd),
	.datad(\was_stalled~q ),
	.cin(gnd),
	.combout(\Mux2~1_combout ),
	.cout());
defparam \Mux2~1 .lut_mask = 16'hEEFF;
defparam \Mux2~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Mux3~1 (
	.dataa(out_ready),
	.datab(\valid_ctrl_int1~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\Mux3~1_combout ),
	.cout());
defparam \Mux3~1 .lut_mask = 16'h7777;
defparam \Mux3~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Mux3~2 (
	.dataa(\Mux3~0_combout ),
	.datab(\Mux2~0_combout ),
	.datac(\Mux2~1_combout ),
	.datad(\Mux3~1_combout ),
	.cin(gnd),
	.combout(\Mux3~2_combout ),
	.cout());
defparam \Mux3~2 .lut_mask = 16'hFFFE;
defparam \Mux3~2 .sum_lutc_input = "datac";

dffeas \data_int1[0] (
	.clk(clk),
	.d(data[0]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Mux3~2_combout ),
	.q(\data_int1[0]~q ),
	.prn(vcc));
defparam \data_int1[0] .is_wysiwyg = "true";
defparam \data_int1[0] .power_up = "low";

dffeas \data_int[0] (
	.clk(clk),
	.d(data[0]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Mux2~3_combout ),
	.q(\data_int[0]~q ),
	.prn(vcc));
defparam \data_int[0] .is_wysiwyg = "true";
defparam \data_int[0] .power_up = "low";

cycloneive_lcell_comb \data_int_selected[0]~0 (
	.dataa(\data_int1[0]~q ),
	.datab(\data_int[0]~q ),
	.datac(gnd),
	.datad(\data_select~0_combout ),
	.cin(gnd),
	.combout(\data_int_selected[0]~0_combout ),
	.cout());
defparam \data_int_selected[0]~0 .lut_mask = 16'hAACC;
defparam \data_int_selected[0]~0 .sum_lutc_input = "datac";

dffeas \data_int1[1] (
	.clk(clk),
	.d(data[1]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Mux3~2_combout ),
	.q(\data_int1[1]~q ),
	.prn(vcc));
defparam \data_int1[1] .is_wysiwyg = "true";
defparam \data_int1[1] .power_up = "low";

dffeas \data_int[1] (
	.clk(clk),
	.d(data[1]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Mux2~3_combout ),
	.q(\data_int[1]~q ),
	.prn(vcc));
defparam \data_int[1] .is_wysiwyg = "true";
defparam \data_int[1] .power_up = "low";

cycloneive_lcell_comb \data_int_selected[1]~1 (
	.dataa(\data_int1[1]~q ),
	.datab(\data_int[1]~q ),
	.datac(gnd),
	.datad(\data_select~0_combout ),
	.cin(gnd),
	.combout(\data_int_selected[1]~1_combout ),
	.cout());
defparam \data_int_selected[1]~1 .lut_mask = 16'hAACC;
defparam \data_int_selected[1]~1 .sum_lutc_input = "datac";

dffeas \data_int1[2] (
	.clk(clk),
	.d(data[2]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Mux3~2_combout ),
	.q(\data_int1[2]~q ),
	.prn(vcc));
defparam \data_int1[2] .is_wysiwyg = "true";
defparam \data_int1[2] .power_up = "low";

dffeas \data_int[2] (
	.clk(clk),
	.d(data[2]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Mux2~3_combout ),
	.q(\data_int[2]~q ),
	.prn(vcc));
defparam \data_int[2] .is_wysiwyg = "true";
defparam \data_int[2] .power_up = "low";

cycloneive_lcell_comb \data_int_selected[2]~2 (
	.dataa(\data_int1[2]~q ),
	.datab(\data_int[2]~q ),
	.datac(gnd),
	.datad(\data_select~0_combout ),
	.cin(gnd),
	.combout(\data_int_selected[2]~2_combout ),
	.cout());
defparam \data_int_selected[2]~2 .lut_mask = 16'hAACC;
defparam \data_int_selected[2]~2 .sum_lutc_input = "datac";

dffeas \data_int1[3] (
	.clk(clk),
	.d(data[3]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Mux3~2_combout ),
	.q(\data_int1[3]~q ),
	.prn(vcc));
defparam \data_int1[3] .is_wysiwyg = "true";
defparam \data_int1[3] .power_up = "low";

dffeas \data_int[3] (
	.clk(clk),
	.d(data[3]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Mux2~3_combout ),
	.q(\data_int[3]~q ),
	.prn(vcc));
defparam \data_int[3] .is_wysiwyg = "true";
defparam \data_int[3] .power_up = "low";

cycloneive_lcell_comb \data_int_selected[3]~3 (
	.dataa(\data_int1[3]~q ),
	.datab(\data_int[3]~q ),
	.datac(gnd),
	.datad(\data_select~0_combout ),
	.cin(gnd),
	.combout(\data_int_selected[3]~3_combout ),
	.cout());
defparam \data_int_selected[3]~3 .lut_mask = 16'hAACC;
defparam \data_int_selected[3]~3 .sum_lutc_input = "datac";

dffeas \data_int1[4] (
	.clk(clk),
	.d(data[4]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Mux3~2_combout ),
	.q(\data_int1[4]~q ),
	.prn(vcc));
defparam \data_int1[4] .is_wysiwyg = "true";
defparam \data_int1[4] .power_up = "low";

dffeas \data_int[4] (
	.clk(clk),
	.d(data[4]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Mux2~3_combout ),
	.q(\data_int[4]~q ),
	.prn(vcc));
defparam \data_int[4] .is_wysiwyg = "true";
defparam \data_int[4] .power_up = "low";

cycloneive_lcell_comb \data_int_selected[4]~4 (
	.dataa(\data_int1[4]~q ),
	.datab(\data_int[4]~q ),
	.datac(gnd),
	.datad(\data_select~0_combout ),
	.cin(gnd),
	.combout(\data_int_selected[4]~4_combout ),
	.cout());
defparam \data_int_selected[4]~4 .lut_mask = 16'hAACC;
defparam \data_int_selected[4]~4 .sum_lutc_input = "datac";

dffeas \data_int1[5] (
	.clk(clk),
	.d(data[5]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Mux3~2_combout ),
	.q(\data_int1[5]~q ),
	.prn(vcc));
defparam \data_int1[5] .is_wysiwyg = "true";
defparam \data_int1[5] .power_up = "low";

dffeas \data_int[5] (
	.clk(clk),
	.d(data[5]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Mux2~3_combout ),
	.q(\data_int[5]~q ),
	.prn(vcc));
defparam \data_int[5] .is_wysiwyg = "true";
defparam \data_int[5] .power_up = "low";

cycloneive_lcell_comb \data_int_selected[5]~5 (
	.dataa(\data_int1[5]~q ),
	.datab(\data_int[5]~q ),
	.datac(gnd),
	.datad(\data_select~0_combout ),
	.cin(gnd),
	.combout(\data_int_selected[5]~5_combout ),
	.cout());
defparam \data_int_selected[5]~5 .lut_mask = 16'hAACC;
defparam \data_int_selected[5]~5 .sum_lutc_input = "datac";

dffeas \data_int1[6] (
	.clk(clk),
	.d(data[6]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Mux3~2_combout ),
	.q(\data_int1[6]~q ),
	.prn(vcc));
defparam \data_int1[6] .is_wysiwyg = "true";
defparam \data_int1[6] .power_up = "low";

dffeas \data_int[6] (
	.clk(clk),
	.d(data[6]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Mux2~3_combout ),
	.q(\data_int[6]~q ),
	.prn(vcc));
defparam \data_int[6] .is_wysiwyg = "true";
defparam \data_int[6] .power_up = "low";

cycloneive_lcell_comb \data_int_selected[6]~6 (
	.dataa(\data_int1[6]~q ),
	.datab(\data_int[6]~q ),
	.datac(gnd),
	.datad(\data_select~0_combout ),
	.cin(gnd),
	.combout(\data_int_selected[6]~6_combout ),
	.cout());
defparam \data_int_selected[6]~6 .lut_mask = 16'hAACC;
defparam \data_int_selected[6]~6 .sum_lutc_input = "datac";

dffeas \data_int1[7] (
	.clk(clk),
	.d(data[7]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Mux3~2_combout ),
	.q(\data_int1[7]~q ),
	.prn(vcc));
defparam \data_int1[7] .is_wysiwyg = "true";
defparam \data_int1[7] .power_up = "low";

dffeas \data_int[7] (
	.clk(clk),
	.d(data[7]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Mux2~3_combout ),
	.q(\data_int[7]~q ),
	.prn(vcc));
defparam \data_int[7] .is_wysiwyg = "true";
defparam \data_int[7] .power_up = "low";

cycloneive_lcell_comb \data_int_selected[7]~7 (
	.dataa(\data_int1[7]~q ),
	.datab(\data_int[7]~q ),
	.datac(gnd),
	.datad(\data_select~0_combout ),
	.cin(gnd),
	.combout(\data_int_selected[7]~7_combout ),
	.cout());
defparam \data_int_selected[7]~7 .lut_mask = 16'hAACC;
defparam \data_int_selected[7]~7 .sum_lutc_input = "datac";

dffeas \data_int1[8] (
	.clk(clk),
	.d(data[8]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Mux3~2_combout ),
	.q(\data_int1[8]~q ),
	.prn(vcc));
defparam \data_int1[8] .is_wysiwyg = "true";
defparam \data_int1[8] .power_up = "low";

dffeas \data_int[8] (
	.clk(clk),
	.d(data[8]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Mux2~3_combout ),
	.q(\data_int[8]~q ),
	.prn(vcc));
defparam \data_int[8] .is_wysiwyg = "true";
defparam \data_int[8] .power_up = "low";

cycloneive_lcell_comb \data_int_selected[8]~8 (
	.dataa(\data_int1[8]~q ),
	.datab(\data_int[8]~q ),
	.datac(gnd),
	.datad(\data_select~0_combout ),
	.cin(gnd),
	.combout(\data_int_selected[8]~8_combout ),
	.cout());
defparam \data_int_selected[8]~8 .lut_mask = 16'hAACC;
defparam \data_int_selected[8]~8 .sum_lutc_input = "datac";

dffeas \data_int1[9] (
	.clk(clk),
	.d(data[9]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Mux3~2_combout ),
	.q(\data_int1[9]~q ),
	.prn(vcc));
defparam \data_int1[9] .is_wysiwyg = "true";
defparam \data_int1[9] .power_up = "low";

dffeas \data_int[9] (
	.clk(clk),
	.d(data[9]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Mux2~3_combout ),
	.q(\data_int[9]~q ),
	.prn(vcc));
defparam \data_int[9] .is_wysiwyg = "true";
defparam \data_int[9] .power_up = "low";

cycloneive_lcell_comb \data_int_selected[9]~9 (
	.dataa(\data_int1[9]~q ),
	.datab(\data_int[9]~q ),
	.datac(gnd),
	.datad(\data_select~0_combout ),
	.cin(gnd),
	.combout(\data_int_selected[9]~9_combout ),
	.cout());
defparam \data_int_selected[9]~9 .lut_mask = 16'hAACC;
defparam \data_int_selected[9]~9 .sum_lutc_input = "datac";

dffeas \data_int1[10] (
	.clk(clk),
	.d(data[10]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Mux3~2_combout ),
	.q(\data_int1[10]~q ),
	.prn(vcc));
defparam \data_int1[10] .is_wysiwyg = "true";
defparam \data_int1[10] .power_up = "low";

dffeas \data_int[10] (
	.clk(clk),
	.d(data[10]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Mux2~3_combout ),
	.q(\data_int[10]~q ),
	.prn(vcc));
defparam \data_int[10] .is_wysiwyg = "true";
defparam \data_int[10] .power_up = "low";

cycloneive_lcell_comb \data_int_selected[10]~10 (
	.dataa(\data_int1[10]~q ),
	.datab(\data_int[10]~q ),
	.datac(gnd),
	.datad(\data_select~0_combout ),
	.cin(gnd),
	.combout(\data_int_selected[10]~10_combout ),
	.cout());
defparam \data_int_selected[10]~10 .lut_mask = 16'hAACC;
defparam \data_int_selected[10]~10 .sum_lutc_input = "datac";

dffeas \data_int1[11] (
	.clk(clk),
	.d(data[11]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Mux3~2_combout ),
	.q(\data_int1[11]~q ),
	.prn(vcc));
defparam \data_int1[11] .is_wysiwyg = "true";
defparam \data_int1[11] .power_up = "low";

dffeas \data_int[11] (
	.clk(clk),
	.d(data[11]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Mux2~3_combout ),
	.q(\data_int[11]~q ),
	.prn(vcc));
defparam \data_int[11] .is_wysiwyg = "true";
defparam \data_int[11] .power_up = "low";

cycloneive_lcell_comb \data_int_selected[11]~11 (
	.dataa(\data_int1[11]~q ),
	.datab(\data_int[11]~q ),
	.datac(gnd),
	.datad(\data_select~0_combout ),
	.cin(gnd),
	.combout(\data_int_selected[11]~11_combout ),
	.cout());
defparam \data_int_selected[11]~11 .lut_mask = 16'hAACC;
defparam \data_int_selected[11]~11 .sum_lutc_input = "datac";

dffeas \data_int1[12] (
	.clk(clk),
	.d(data[12]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Mux3~2_combout ),
	.q(\data_int1[12]~q ),
	.prn(vcc));
defparam \data_int1[12] .is_wysiwyg = "true";
defparam \data_int1[12] .power_up = "low";

dffeas \data_int[12] (
	.clk(clk),
	.d(data[12]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Mux2~3_combout ),
	.q(\data_int[12]~q ),
	.prn(vcc));
defparam \data_int[12] .is_wysiwyg = "true";
defparam \data_int[12] .power_up = "low";

cycloneive_lcell_comb \data_int_selected[12]~12 (
	.dataa(\data_int1[12]~q ),
	.datab(\data_int[12]~q ),
	.datac(gnd),
	.datad(\data_select~0_combout ),
	.cin(gnd),
	.combout(\data_int_selected[12]~12_combout ),
	.cout());
defparam \data_int_selected[12]~12 .lut_mask = 16'hAACC;
defparam \data_int_selected[12]~12 .sum_lutc_input = "datac";

dffeas \data_int1[13] (
	.clk(clk),
	.d(data[13]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Mux3~2_combout ),
	.q(\data_int1[13]~q ),
	.prn(vcc));
defparam \data_int1[13] .is_wysiwyg = "true";
defparam \data_int1[13] .power_up = "low";

dffeas \data_int[13] (
	.clk(clk),
	.d(data[13]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Mux2~3_combout ),
	.q(\data_int[13]~q ),
	.prn(vcc));
defparam \data_int[13] .is_wysiwyg = "true";
defparam \data_int[13] .power_up = "low";

cycloneive_lcell_comb \data_int_selected[13]~13 (
	.dataa(\data_int1[13]~q ),
	.datab(\data_int[13]~q ),
	.datac(gnd),
	.datad(\data_select~0_combout ),
	.cin(gnd),
	.combout(\data_int_selected[13]~13_combout ),
	.cout());
defparam \data_int_selected[13]~13 .lut_mask = 16'hAACC;
defparam \data_int_selected[13]~13 .sum_lutc_input = "datac";

dffeas \data_int1[14] (
	.clk(clk),
	.d(data[14]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Mux3~2_combout ),
	.q(\data_int1[14]~q ),
	.prn(vcc));
defparam \data_int1[14] .is_wysiwyg = "true";
defparam \data_int1[14] .power_up = "low";

dffeas \data_int[14] (
	.clk(clk),
	.d(data[14]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Mux2~3_combout ),
	.q(\data_int[14]~q ),
	.prn(vcc));
defparam \data_int[14] .is_wysiwyg = "true";
defparam \data_int[14] .power_up = "low";

cycloneive_lcell_comb \data_int_selected[14]~14 (
	.dataa(\data_int1[14]~q ),
	.datab(\data_int[14]~q ),
	.datac(gnd),
	.datad(\data_select~0_combout ),
	.cin(gnd),
	.combout(\data_int_selected[14]~14_combout ),
	.cout());
defparam \data_int_selected[14]~14 .lut_mask = 16'hAACC;
defparam \data_int_selected[14]~14 .sum_lutc_input = "datac";

dffeas \data_int1[15] (
	.clk(clk),
	.d(data[15]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Mux3~2_combout ),
	.q(\data_int1[15]~q ),
	.prn(vcc));
defparam \data_int1[15] .is_wysiwyg = "true";
defparam \data_int1[15] .power_up = "low";

dffeas \data_int[15] (
	.clk(clk),
	.d(data[15]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Mux2~3_combout ),
	.q(\data_int[15]~q ),
	.prn(vcc));
defparam \data_int[15] .is_wysiwyg = "true";
defparam \data_int[15] .power_up = "low";

cycloneive_lcell_comb \data_int_selected[15]~15 (
	.dataa(\data_int1[15]~q ),
	.datab(\data_int[15]~q ),
	.datac(gnd),
	.datad(\data_select~0_combout ),
	.cin(gnd),
	.combout(\data_int_selected[15]~15_combout ),
	.cout());
defparam \data_int_selected[15]~15 .lut_mask = 16'hAACC;
defparam \data_int_selected[15]~15 .sum_lutc_input = "datac";

dffeas \data_int1[16] (
	.clk(clk),
	.d(data[16]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Mux3~2_combout ),
	.q(\data_int1[16]~q ),
	.prn(vcc));
defparam \data_int1[16] .is_wysiwyg = "true";
defparam \data_int1[16] .power_up = "low";

dffeas \data_int[16] (
	.clk(clk),
	.d(data[16]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Mux2~3_combout ),
	.q(\data_int[16]~q ),
	.prn(vcc));
defparam \data_int[16] .is_wysiwyg = "true";
defparam \data_int[16] .power_up = "low";

cycloneive_lcell_comb \data_int_selected[16]~16 (
	.dataa(\data_int1[16]~q ),
	.datab(\data_int[16]~q ),
	.datac(gnd),
	.datad(\data_select~0_combout ),
	.cin(gnd),
	.combout(\data_int_selected[16]~16_combout ),
	.cout());
defparam \data_int_selected[16]~16 .lut_mask = 16'hAACC;
defparam \data_int_selected[16]~16 .sum_lutc_input = "datac";

cycloneive_lcell_comb \at_source_valid_int~0 (
	.dataa(\first_data~q ),
	.datab(\valid_ctrl_int1~q ),
	.datac(at_source_valid_s1),
	.datad(out_ready),
	.cin(gnd),
	.combout(\at_source_valid_int~0_combout ),
	.cout());
defparam \at_source_valid_int~0 .lut_mask = 16'hEFFF;
defparam \at_source_valid_int~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \at_source_valid_int~1 (
	.dataa(\valid_ctrl_int~q ),
	.datab(at_source_valid_s1),
	.datac(\at_source_valid_int~0_combout ),
	.datad(source_packet_error_0),
	.cin(gnd),
	.combout(\at_source_valid_int~1_combout ),
	.cout());
defparam \at_source_valid_int~1 .lut_mask = 16'hFEFF;
defparam \at_source_valid_int~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Mux0~0 (
	.dataa(\valid_ctrl_int~q ),
	.datab(\Mux2~0_combout ),
	.datac(\Mux2~1_combout ),
	.datad(gnd),
	.cin(gnd),
	.combout(\Mux0~0_combout ),
	.cout());
defparam \Mux0~0 .lut_mask = 16'hFEFE;
defparam \Mux0~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Mux0~1 (
	.dataa(at_source_valid_s1),
	.datab(\first_data~q ),
	.datac(out_ready),
	.datad(gnd),
	.cin(gnd),
	.combout(\Mux0~1_combout ),
	.cout());
defparam \Mux0~1 .lut_mask = 16'hBFBF;
defparam \Mux0~1 .sum_lutc_input = "datac";

endmodule

module CicFilter_CicFilter_cic_core (
	dout_0,
	dout_1,
	dout_2,
	dout_3,
	dout_4,
	dout_5,
	dout_6,
	dout_7,
	dout_8,
	dout_9,
	dout_10,
	dout_11,
	dout_12,
	dout_13,
	dout_14,
	dout_15,
	dout_16,
	q_b_0,
	q_b_1,
	q_b_2,
	q_b_3,
	q_b_4,
	q_b_5,
	q_b_6,
	q_b_7,
	q_b_8,
	q_b_9,
	stall_reg,
	ena_diff_4,
	state1,
	stall,
	clk,
	reset,
	clken)/* synthesis synthesis_greybox=1 */;
output 	dout_0;
output 	dout_1;
output 	dout_2;
output 	dout_3;
output 	dout_4;
output 	dout_5;
output 	dout_6;
output 	dout_7;
output 	dout_8;
output 	dout_9;
output 	dout_10;
output 	dout_11;
output 	dout_12;
output 	dout_13;
output 	dout_14;
output 	dout_15;
output 	dout_16;
input 	q_b_0;
input 	q_b_1;
input 	q_b_2;
input 	q_b_3;
input 	q_b_4;
input 	q_b_5;
input 	q_b_6;
input 	q_b_7;
input 	q_b_8;
input 	q_b_9;
input 	stall_reg;
output 	ena_diff_4;
output 	state1;
input 	stall;
input 	clk;
input 	reset;
input 	clken;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \auk_dspip_differentiator_1|dout[0]~q ;
wire \auk_dspip_differentiator_1|dout[1]~q ;
wire \auk_dspip_differentiator_1|dout[2]~q ;
wire \auk_dspip_differentiator_1|dout[3]~q ;
wire \auk_dspip_differentiator_1|dout[4]~q ;
wire \auk_dspip_differentiator_1|dout[5]~q ;
wire \auk_dspip_differentiator_1|dout[6]~q ;
wire \auk_dspip_differentiator_1|dout[7]~q ;
wire \auk_dspip_differentiator_1|dout[8]~q ;
wire \auk_dspip_differentiator_1|dout[9]~q ;
wire \auk_dspip_differentiator_1|dout[10]~q ;
wire \auk_dspip_differentiator_1|dout[11]~q ;
wire \auk_dspip_differentiator_1|dout[12]~q ;
wire \auk_dspip_differentiator_1|dout[13]~q ;
wire \auk_dspip_differentiator_1|dout[14]~q ;
wire \auk_dspip_differentiator_1|dout[15]~q ;
wire \auk_dspip_differentiator_1|dout[16]~q ;
wire \auk_dspip_differentiator_0|dout[0]~q ;
wire \auk_dspip_differentiator_0|dout[1]~q ;
wire \auk_dspip_differentiator_0|dout[2]~q ;
wire \auk_dspip_differentiator_0|dout[3]~q ;
wire \auk_dspip_differentiator_0|dout[4]~q ;
wire \auk_dspip_differentiator_0|dout[5]~q ;
wire \auk_dspip_differentiator_0|dout[6]~q ;
wire \auk_dspip_differentiator_0|dout[7]~q ;
wire \auk_dspip_differentiator_0|dout[8]~q ;
wire \auk_dspip_differentiator_0|dout[9]~q ;
wire \auk_dspip_differentiator_0|dout[10]~q ;
wire \auk_dspip_differentiator_0|dout[11]~q ;
wire \auk_dspip_differentiator_0|dout[12]~q ;
wire \auk_dspip_differentiator_0|dout[13]~q ;
wire \auk_dspip_differentiator_0|dout[14]~q ;
wire \auk_dspip_differentiator_0|dout[15]~q ;
wire \auk_dspip_differentiator_0|dout[16]~q ;
wire \auk_dspip_integrator_2|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][0]~q ;
wire \auk_dspip_integrator_2|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][1]~q ;
wire \auk_dspip_integrator_2|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][2]~q ;
wire \auk_dspip_integrator_2|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][3]~q ;
wire \auk_dspip_integrator_2|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][4]~q ;
wire \auk_dspip_integrator_2|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][5]~q ;
wire \auk_dspip_integrator_2|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][6]~q ;
wire \auk_dspip_integrator_2|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][7]~q ;
wire \auk_dspip_integrator_2|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][8]~q ;
wire \auk_dspip_integrator_2|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][9]~q ;
wire \auk_dspip_integrator_2|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][10]~q ;
wire \auk_dspip_integrator_2|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][11]~q ;
wire \auk_dspip_integrator_2|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][12]~q ;
wire \auk_dspip_integrator_2|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][13]~q ;
wire \auk_dspip_integrator_2|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][14]~q ;
wire \auk_dspip_integrator_2|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][15]~q ;
wire \auk_dspip_integrator_2|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][16]~q ;
wire \auk_dspip_integrator_1|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][0]~q ;
wire \auk_dspip_integrator_1|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][1]~q ;
wire \auk_dspip_integrator_1|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][2]~q ;
wire \auk_dspip_integrator_1|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][3]~q ;
wire \auk_dspip_integrator_1|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][4]~q ;
wire \auk_dspip_integrator_1|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][5]~q ;
wire \auk_dspip_integrator_1|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][6]~q ;
wire \auk_dspip_integrator_1|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][7]~q ;
wire \auk_dspip_integrator_1|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][8]~q ;
wire \auk_dspip_integrator_1|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][9]~q ;
wire \auk_dspip_integrator_1|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][10]~q ;
wire \auk_dspip_integrator_1|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][11]~q ;
wire \auk_dspip_integrator_1|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][12]~q ;
wire \auk_dspip_integrator_1|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][13]~q ;
wire \auk_dspip_integrator_1|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][14]~q ;
wire \auk_dspip_integrator_1|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][15]~q ;
wire \auk_dspip_integrator_1|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][16]~q ;
wire \auk_dspip_integrator_0|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][0]~q ;
wire \auk_dspip_integrator_0|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][1]~q ;
wire \auk_dspip_integrator_0|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][2]~q ;
wire \auk_dspip_integrator_0|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][3]~q ;
wire \auk_dspip_integrator_0|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][4]~q ;
wire \auk_dspip_integrator_0|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][5]~q ;
wire \auk_dspip_integrator_0|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][6]~q ;
wire \auk_dspip_integrator_0|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][7]~q ;
wire \auk_dspip_integrator_0|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][8]~q ;
wire \auk_dspip_integrator_0|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][9]~q ;
wire \auk_dspip_integrator_0|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][10]~q ;
wire \auk_dspip_integrator_0|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][11]~q ;
wire \auk_dspip_integrator_0|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][12]~q ;
wire \auk_dspip_integrator_0|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][13]~q ;
wire \auk_dspip_integrator_0|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][14]~q ;
wire \auk_dspip_integrator_0|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][15]~q ;
wire \auk_dspip_integrator_0|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][16]~q ;
wire \ena_diff_s[3]~combout ;
wire \ena_diff_s[2]~combout ;
wire \in_fifo|subfifo|dff_ra[0]~q ;
wire \ena_diff_s[1]~combout ;
wire \in_fifo|subfifo|dff_ra[1]~q ;
wire \in_fifo|subfifo|dff_ra[2]~q ;
wire \in_fifo|subfifo|dff_ra[3]~q ;
wire \in_fifo|subfifo|dff_ra[4]~q ;
wire \in_fifo|subfifo|dff_ra[5]~q ;
wire \in_fifo|subfifo|dff_ra[6]~q ;
wire \in_fifo|subfifo|dff_ra[7]~q ;
wire \in_fifo|subfifo|dff_ra[8]~q ;
wire \in_fifo|subfifo|dff_ra[9]~q ;
wire \in_fifo|subfifo|dff_ra[10]~q ;
wire \in_fifo|subfifo|dff_ra[11]~q ;
wire \in_fifo|subfifo|dff_ra[12]~q ;
wire \in_fifo|subfifo|dff_ra[13]~q ;
wire \in_fifo|subfifo|dff_ra[14]~q ;
wire \in_fifo|subfifo|dff_ra[15]~q ;
wire \in_fifo|subfifo|dff_ra[16]~q ;
wire \auk_dspip_downsample_inst|counter_fs[2]~q ;
wire \auk_dspip_downsample_inst|counter_fs[1]~q ;
wire \auk_dspip_downsample_inst|counter_fs[0]~q ;
wire \Equal1~0_combout ;
wire \latency_cnt[1]~8_combout ;
wire \latency_cnt[1]~q ;
wire \state~2_combout ;
wire \latency_cnt[0]~7_combout ;
wire \latency_cnt[0]~q ;
wire \latency_cnt[2]~6_combout ;
wire \latency_cnt[2]~q ;
wire \sample_state~0_combout ;
wire \sample_state~q ;
wire \rate_cnt_proc~0_combout ;
wire \ena_diff[0]~q ;
wire \ena_diff[1]~q ;
wire \ena_diff[2]~q ;
wire \ena_diff[3]~q ;
wire \state~3_combout ;


CicFilter_auk_dspip_differentiator_cic_121_2 auk_dspip_differentiator_2(
	.dout_0(dout_0),
	.dout_1(dout_1),
	.dout_2(dout_2),
	.dout_3(dout_3),
	.dout_4(dout_4),
	.dout_5(dout_5),
	.dout_6(dout_6),
	.dout_7(dout_7),
	.dout_8(dout_8),
	.dout_9(dout_9),
	.dout_10(dout_10),
	.dout_11(dout_11),
	.dout_12(dout_12),
	.dout_13(dout_13),
	.dout_14(dout_14),
	.dout_15(dout_15),
	.dout_16(dout_16),
	.dout_01(\auk_dspip_differentiator_1|dout[0]~q ),
	.dout_17(\auk_dspip_differentiator_1|dout[1]~q ),
	.dout_21(\auk_dspip_differentiator_1|dout[2]~q ),
	.dout_31(\auk_dspip_differentiator_1|dout[3]~q ),
	.dout_41(\auk_dspip_differentiator_1|dout[4]~q ),
	.dout_51(\auk_dspip_differentiator_1|dout[5]~q ),
	.dout_61(\auk_dspip_differentiator_1|dout[6]~q ),
	.dout_71(\auk_dspip_differentiator_1|dout[7]~q ),
	.dout_81(\auk_dspip_differentiator_1|dout[8]~q ),
	.dout_91(\auk_dspip_differentiator_1|dout[9]~q ),
	.dout_101(\auk_dspip_differentiator_1|dout[10]~q ),
	.dout_111(\auk_dspip_differentiator_1|dout[11]~q ),
	.dout_121(\auk_dspip_differentiator_1|dout[12]~q ),
	.dout_131(\auk_dspip_differentiator_1|dout[13]~q ),
	.dout_141(\auk_dspip_differentiator_1|dout[14]~q ),
	.dout_151(\auk_dspip_differentiator_1|dout[15]~q ),
	.dout_161(\auk_dspip_differentiator_1|dout[16]~q ),
	.ena_diff_s_3(\ena_diff_s[3]~combout ),
	.clk(clk),
	.reset_n(reset));

CicFilter_auk_dspip_differentiator_cic_121_1 auk_dspip_differentiator_1(
	.dout_0(\auk_dspip_differentiator_1|dout[0]~q ),
	.dout_1(\auk_dspip_differentiator_1|dout[1]~q ),
	.dout_2(\auk_dspip_differentiator_1|dout[2]~q ),
	.dout_3(\auk_dspip_differentiator_1|dout[3]~q ),
	.dout_4(\auk_dspip_differentiator_1|dout[4]~q ),
	.dout_5(\auk_dspip_differentiator_1|dout[5]~q ),
	.dout_6(\auk_dspip_differentiator_1|dout[6]~q ),
	.dout_7(\auk_dspip_differentiator_1|dout[7]~q ),
	.dout_8(\auk_dspip_differentiator_1|dout[8]~q ),
	.dout_9(\auk_dspip_differentiator_1|dout[9]~q ),
	.dout_10(\auk_dspip_differentiator_1|dout[10]~q ),
	.dout_11(\auk_dspip_differentiator_1|dout[11]~q ),
	.dout_12(\auk_dspip_differentiator_1|dout[12]~q ),
	.dout_13(\auk_dspip_differentiator_1|dout[13]~q ),
	.dout_14(\auk_dspip_differentiator_1|dout[14]~q ),
	.dout_15(\auk_dspip_differentiator_1|dout[15]~q ),
	.dout_16(\auk_dspip_differentiator_1|dout[16]~q ),
	.dout_01(\auk_dspip_differentiator_0|dout[0]~q ),
	.dout_17(\auk_dspip_differentiator_0|dout[1]~q ),
	.dout_21(\auk_dspip_differentiator_0|dout[2]~q ),
	.dout_31(\auk_dspip_differentiator_0|dout[3]~q ),
	.dout_41(\auk_dspip_differentiator_0|dout[4]~q ),
	.dout_51(\auk_dspip_differentiator_0|dout[5]~q ),
	.dout_61(\auk_dspip_differentiator_0|dout[6]~q ),
	.dout_71(\auk_dspip_differentiator_0|dout[7]~q ),
	.dout_81(\auk_dspip_differentiator_0|dout[8]~q ),
	.dout_91(\auk_dspip_differentiator_0|dout[9]~q ),
	.dout_101(\auk_dspip_differentiator_0|dout[10]~q ),
	.dout_111(\auk_dspip_differentiator_0|dout[11]~q ),
	.dout_121(\auk_dspip_differentiator_0|dout[12]~q ),
	.dout_131(\auk_dspip_differentiator_0|dout[13]~q ),
	.dout_141(\auk_dspip_differentiator_0|dout[14]~q ),
	.dout_151(\auk_dspip_differentiator_0|dout[15]~q ),
	.dout_161(\auk_dspip_differentiator_0|dout[16]~q ),
	.ena_diff_s_2(\ena_diff_s[2]~combout ),
	.clk(clk),
	.reset_n(reset));

CicFilter_auk_dspip_differentiator_cic_121 auk_dspip_differentiator_0(
	.dout_0(\auk_dspip_differentiator_0|dout[0]~q ),
	.dout_1(\auk_dspip_differentiator_0|dout[1]~q ),
	.dout_2(\auk_dspip_differentiator_0|dout[2]~q ),
	.dout_3(\auk_dspip_differentiator_0|dout[3]~q ),
	.dout_4(\auk_dspip_differentiator_0|dout[4]~q ),
	.dout_5(\auk_dspip_differentiator_0|dout[5]~q ),
	.dout_6(\auk_dspip_differentiator_0|dout[6]~q ),
	.dout_7(\auk_dspip_differentiator_0|dout[7]~q ),
	.dout_8(\auk_dspip_differentiator_0|dout[8]~q ),
	.dout_9(\auk_dspip_differentiator_0|dout[9]~q ),
	.dout_10(\auk_dspip_differentiator_0|dout[10]~q ),
	.dout_11(\auk_dspip_differentiator_0|dout[11]~q ),
	.dout_12(\auk_dspip_differentiator_0|dout[12]~q ),
	.dout_13(\auk_dspip_differentiator_0|dout[13]~q ),
	.dout_14(\auk_dspip_differentiator_0|dout[14]~q ),
	.dout_15(\auk_dspip_differentiator_0|dout[15]~q ),
	.dout_16(\auk_dspip_differentiator_0|dout[16]~q ),
	.dff_ra_0(\in_fifo|subfifo|dff_ra[0]~q ),
	.ena_diff_s_1(\ena_diff_s[1]~combout ),
	.dff_ra_1(\in_fifo|subfifo|dff_ra[1]~q ),
	.dff_ra_2(\in_fifo|subfifo|dff_ra[2]~q ),
	.dff_ra_3(\in_fifo|subfifo|dff_ra[3]~q ),
	.dff_ra_4(\in_fifo|subfifo|dff_ra[4]~q ),
	.dff_ra_5(\in_fifo|subfifo|dff_ra[5]~q ),
	.dff_ra_6(\in_fifo|subfifo|dff_ra[6]~q ),
	.dff_ra_7(\in_fifo|subfifo|dff_ra[7]~q ),
	.dff_ra_8(\in_fifo|subfifo|dff_ra[8]~q ),
	.dff_ra_9(\in_fifo|subfifo|dff_ra[9]~q ),
	.dff_ra_10(\in_fifo|subfifo|dff_ra[10]~q ),
	.dff_ra_11(\in_fifo|subfifo|dff_ra[11]~q ),
	.dff_ra_12(\in_fifo|subfifo|dff_ra[12]~q ),
	.dff_ra_13(\in_fifo|subfifo|dff_ra[13]~q ),
	.dff_ra_14(\in_fifo|subfifo|dff_ra[14]~q ),
	.dff_ra_15(\in_fifo|subfifo|dff_ra[15]~q ),
	.dff_ra_16(\in_fifo|subfifo|dff_ra[16]~q ),
	.clk(clk),
	.reset_n(reset));

CicFilter_auk_dspip_downsample_cic_121 auk_dspip_downsample_inst(
	.rate_cnt_proc(\rate_cnt_proc~0_combout ),
	.counter_fs_2(\auk_dspip_downsample_inst|counter_fs[2]~q ),
	.counter_fs_1(\auk_dspip_downsample_inst|counter_fs[1]~q ),
	.counter_fs_0(\auk_dspip_downsample_inst|counter_fs[0]~q ),
	.clk(clk),
	.reset(reset));

CicFilter_scfifo_2 in_fifo(
	.data({\auk_dspip_integrator_2|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][16]~q ,\auk_dspip_integrator_2|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][15]~q ,
\auk_dspip_integrator_2|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][14]~q ,\auk_dspip_integrator_2|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][13]~q ,
\auk_dspip_integrator_2|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][12]~q ,\auk_dspip_integrator_2|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][11]~q ,
\auk_dspip_integrator_2|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][10]~q ,\auk_dspip_integrator_2|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][9]~q ,
\auk_dspip_integrator_2|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][8]~q ,\auk_dspip_integrator_2|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][7]~q ,
\auk_dspip_integrator_2|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][6]~q ,\auk_dspip_integrator_2|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][5]~q ,
\auk_dspip_integrator_2|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][4]~q ,\auk_dspip_integrator_2|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][3]~q ,
\auk_dspip_integrator_2|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][2]~q ,\auk_dspip_integrator_2|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][1]~q ,
\auk_dspip_integrator_2|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][0]~q }),
	.stall_reg(stall_reg),
	.rate_cnt_proc(\rate_cnt_proc~0_combout ),
	.stall(stall),
	.dff_ra_0(\in_fifo|subfifo|dff_ra[0]~q ),
	.dff_ra_1(\in_fifo|subfifo|dff_ra[1]~q ),
	.dff_ra_2(\in_fifo|subfifo|dff_ra[2]~q ),
	.dff_ra_3(\in_fifo|subfifo|dff_ra[3]~q ),
	.dff_ra_4(\in_fifo|subfifo|dff_ra[4]~q ),
	.dff_ra_5(\in_fifo|subfifo|dff_ra[5]~q ),
	.dff_ra_6(\in_fifo|subfifo|dff_ra[6]~q ),
	.dff_ra_7(\in_fifo|subfifo|dff_ra[7]~q ),
	.dff_ra_8(\in_fifo|subfifo|dff_ra[8]~q ),
	.dff_ra_9(\in_fifo|subfifo|dff_ra[9]~q ),
	.dff_ra_10(\in_fifo|subfifo|dff_ra[10]~q ),
	.dff_ra_11(\in_fifo|subfifo|dff_ra[11]~q ),
	.dff_ra_12(\in_fifo|subfifo|dff_ra[12]~q ),
	.dff_ra_13(\in_fifo|subfifo|dff_ra[13]~q ),
	.dff_ra_14(\in_fifo|subfifo|dff_ra[14]~q ),
	.dff_ra_15(\in_fifo|subfifo|dff_ra[15]~q ),
	.dff_ra_16(\in_fifo|subfifo|dff_ra[16]~q ),
	.ena_diff_0(\ena_diff[0]~q ),
	.Equal1(\Equal1~0_combout ),
	.clock(clk),
	.reset_n(reset),
	.clken(clken));

CicFilter_auk_dspip_integrator_cic_121_2 auk_dspip_integrator_2(
	.register_fifofifo_data00(\auk_dspip_integrator_2|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][0]~q ),
	.register_fifofifo_data01(\auk_dspip_integrator_2|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][1]~q ),
	.register_fifofifo_data02(\auk_dspip_integrator_2|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][2]~q ),
	.register_fifofifo_data03(\auk_dspip_integrator_2|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][3]~q ),
	.register_fifofifo_data04(\auk_dspip_integrator_2|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][4]~q ),
	.register_fifofifo_data05(\auk_dspip_integrator_2|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][5]~q ),
	.register_fifofifo_data06(\auk_dspip_integrator_2|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][6]~q ),
	.register_fifofifo_data07(\auk_dspip_integrator_2|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][7]~q ),
	.register_fifofifo_data08(\auk_dspip_integrator_2|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][8]~q ),
	.register_fifofifo_data09(\auk_dspip_integrator_2|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][9]~q ),
	.register_fifofifo_data010(\auk_dspip_integrator_2|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][10]~q ),
	.register_fifofifo_data011(\auk_dspip_integrator_2|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][11]~q ),
	.register_fifofifo_data012(\auk_dspip_integrator_2|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][12]~q ),
	.register_fifofifo_data013(\auk_dspip_integrator_2|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][13]~q ),
	.register_fifofifo_data014(\auk_dspip_integrator_2|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][14]~q ),
	.register_fifofifo_data015(\auk_dspip_integrator_2|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][15]~q ),
	.register_fifofifo_data016(\auk_dspip_integrator_2|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][16]~q ),
	.register_fifofifo_data001(\auk_dspip_integrator_1|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][0]~q ),
	.register_fifofifo_data017(\auk_dspip_integrator_1|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][1]~q ),
	.register_fifofifo_data021(\auk_dspip_integrator_1|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][2]~q ),
	.register_fifofifo_data031(\auk_dspip_integrator_1|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][3]~q ),
	.register_fifofifo_data041(\auk_dspip_integrator_1|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][4]~q ),
	.register_fifofifo_data051(\auk_dspip_integrator_1|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][5]~q ),
	.register_fifofifo_data061(\auk_dspip_integrator_1|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][6]~q ),
	.register_fifofifo_data071(\auk_dspip_integrator_1|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][7]~q ),
	.register_fifofifo_data081(\auk_dspip_integrator_1|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][8]~q ),
	.register_fifofifo_data091(\auk_dspip_integrator_1|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][9]~q ),
	.register_fifofifo_data0101(\auk_dspip_integrator_1|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][10]~q ),
	.register_fifofifo_data0111(\auk_dspip_integrator_1|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][11]~q ),
	.register_fifofifo_data0121(\auk_dspip_integrator_1|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][12]~q ),
	.register_fifofifo_data0131(\auk_dspip_integrator_1|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][13]~q ),
	.register_fifofifo_data0141(\auk_dspip_integrator_1|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][14]~q ),
	.register_fifofifo_data0151(\auk_dspip_integrator_1|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][15]~q ),
	.register_fifofifo_data0161(\auk_dspip_integrator_1|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][16]~q ),
	.stall(stall),
	.clk(clk),
	.reset_n(reset));

CicFilter_auk_dspip_integrator_cic_121_1 auk_dspip_integrator_1(
	.register_fifofifo_data00(\auk_dspip_integrator_1|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][0]~q ),
	.register_fifofifo_data01(\auk_dspip_integrator_1|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][1]~q ),
	.register_fifofifo_data02(\auk_dspip_integrator_1|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][2]~q ),
	.register_fifofifo_data03(\auk_dspip_integrator_1|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][3]~q ),
	.register_fifofifo_data04(\auk_dspip_integrator_1|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][4]~q ),
	.register_fifofifo_data05(\auk_dspip_integrator_1|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][5]~q ),
	.register_fifofifo_data06(\auk_dspip_integrator_1|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][6]~q ),
	.register_fifofifo_data07(\auk_dspip_integrator_1|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][7]~q ),
	.register_fifofifo_data08(\auk_dspip_integrator_1|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][8]~q ),
	.register_fifofifo_data09(\auk_dspip_integrator_1|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][9]~q ),
	.register_fifofifo_data010(\auk_dspip_integrator_1|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][10]~q ),
	.register_fifofifo_data011(\auk_dspip_integrator_1|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][11]~q ),
	.register_fifofifo_data012(\auk_dspip_integrator_1|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][12]~q ),
	.register_fifofifo_data013(\auk_dspip_integrator_1|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][13]~q ),
	.register_fifofifo_data014(\auk_dspip_integrator_1|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][14]~q ),
	.register_fifofifo_data015(\auk_dspip_integrator_1|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][15]~q ),
	.register_fifofifo_data016(\auk_dspip_integrator_1|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][16]~q ),
	.register_fifofifo_data001(\auk_dspip_integrator_0|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][0]~q ),
	.register_fifofifo_data017(\auk_dspip_integrator_0|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][1]~q ),
	.register_fifofifo_data021(\auk_dspip_integrator_0|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][2]~q ),
	.register_fifofifo_data031(\auk_dspip_integrator_0|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][3]~q ),
	.register_fifofifo_data041(\auk_dspip_integrator_0|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][4]~q ),
	.register_fifofifo_data051(\auk_dspip_integrator_0|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][5]~q ),
	.register_fifofifo_data061(\auk_dspip_integrator_0|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][6]~q ),
	.register_fifofifo_data071(\auk_dspip_integrator_0|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][7]~q ),
	.register_fifofifo_data081(\auk_dspip_integrator_0|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][8]~q ),
	.register_fifofifo_data091(\auk_dspip_integrator_0|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][9]~q ),
	.register_fifofifo_data0101(\auk_dspip_integrator_0|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][10]~q ),
	.register_fifofifo_data0111(\auk_dspip_integrator_0|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][11]~q ),
	.register_fifofifo_data0121(\auk_dspip_integrator_0|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][12]~q ),
	.register_fifofifo_data0131(\auk_dspip_integrator_0|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][13]~q ),
	.register_fifofifo_data0141(\auk_dspip_integrator_0|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][14]~q ),
	.register_fifofifo_data0151(\auk_dspip_integrator_0|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][15]~q ),
	.register_fifofifo_data0161(\auk_dspip_integrator_0|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][16]~q ),
	.stall(stall),
	.clk(clk),
	.reset_n(reset));

CicFilter_auk_dspip_integrator_cic_121 auk_dspip_integrator_0(
	.register_fifofifo_data00(\auk_dspip_integrator_0|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][0]~q ),
	.register_fifofifo_data01(\auk_dspip_integrator_0|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][1]~q ),
	.register_fifofifo_data02(\auk_dspip_integrator_0|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][2]~q ),
	.register_fifofifo_data03(\auk_dspip_integrator_0|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][3]~q ),
	.register_fifofifo_data04(\auk_dspip_integrator_0|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][4]~q ),
	.register_fifofifo_data05(\auk_dspip_integrator_0|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][5]~q ),
	.register_fifofifo_data06(\auk_dspip_integrator_0|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][6]~q ),
	.register_fifofifo_data07(\auk_dspip_integrator_0|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][7]~q ),
	.register_fifofifo_data08(\auk_dspip_integrator_0|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][8]~q ),
	.register_fifofifo_data09(\auk_dspip_integrator_0|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][9]~q ),
	.register_fifofifo_data010(\auk_dspip_integrator_0|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][10]~q ),
	.register_fifofifo_data011(\auk_dspip_integrator_0|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][11]~q ),
	.register_fifofifo_data012(\auk_dspip_integrator_0|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][12]~q ),
	.register_fifofifo_data013(\auk_dspip_integrator_0|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][13]~q ),
	.register_fifofifo_data014(\auk_dspip_integrator_0|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][14]~q ),
	.register_fifofifo_data015(\auk_dspip_integrator_0|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][15]~q ),
	.register_fifofifo_data016(\auk_dspip_integrator_0|glogic:integrator_pipeline_0_generate:u1|register_fifo:fifo_data[0][16]~q ),
	.q_b_0(q_b_0),
	.q_b_1(q_b_1),
	.q_b_2(q_b_2),
	.q_b_3(q_b_3),
	.q_b_4(q_b_4),
	.q_b_5(q_b_5),
	.q_b_6(q_b_6),
	.q_b_7(q_b_7),
	.q_b_8(q_b_8),
	.q_b_9(q_b_9),
	.stall(stall),
	.clk(clk),
	.reset_n(reset));

cycloneive_lcell_comb \ena_diff_s[3] (
	.dataa(clken),
	.datab(stall_reg),
	.datac(\ena_diff[3]~q ),
	.datad(gnd),
	.cin(gnd),
	.combout(\ena_diff_s[3]~combout ),
	.cout());
defparam \ena_diff_s[3] .lut_mask = 16'hFEFE;
defparam \ena_diff_s[3] .sum_lutc_input = "datac";

cycloneive_lcell_comb \ena_diff_s[2] (
	.dataa(clken),
	.datab(stall_reg),
	.datac(\ena_diff[2]~q ),
	.datad(gnd),
	.cin(gnd),
	.combout(\ena_diff_s[2]~combout ),
	.cout());
defparam \ena_diff_s[2] .lut_mask = 16'hFEFE;
defparam \ena_diff_s[2] .sum_lutc_input = "datac";

cycloneive_lcell_comb \ena_diff_s[1] (
	.dataa(clken),
	.datab(stall_reg),
	.datac(\ena_diff[1]~q ),
	.datad(gnd),
	.cin(gnd),
	.combout(\ena_diff_s[1]~combout ),
	.cout());
defparam \ena_diff_s[1] .lut_mask = 16'hFEFE;
defparam \ena_diff_s[1] .sum_lutc_input = "datac";

dffeas \ena_diff[4] (
	.clk(clk),
	.d(\ena_diff[3]~q ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\rate_cnt_proc~0_combout ),
	.q(ena_diff_4),
	.prn(vcc));
defparam \ena_diff[4] .is_wysiwyg = "true";
defparam \ena_diff[4] .power_up = "low";

dffeas state(
	.clk(clk),
	.d(\state~3_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(state1),
	.prn(vcc));
defparam state.is_wysiwyg = "true";
defparam state.power_up = "low";

cycloneive_lcell_comb \Equal1~0 (
	.dataa(gnd),
	.datab(\auk_dspip_downsample_inst|counter_fs[2]~q ),
	.datac(\auk_dspip_downsample_inst|counter_fs[1]~q ),
	.datad(\auk_dspip_downsample_inst|counter_fs[0]~q ),
	.cin(gnd),
	.combout(\Equal1~0_combout ),
	.cout());
defparam \Equal1~0 .lut_mask = 16'h3FFF;
defparam \Equal1~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \latency_cnt[1]~8 (
	.dataa(\latency_cnt[0]~q ),
	.datab(\latency_cnt[2]~q ),
	.datac(\latency_cnt[1]~q ),
	.datad(stall),
	.cin(gnd),
	.combout(\latency_cnt[1]~8_combout ),
	.cout());
defparam \latency_cnt[1]~8 .lut_mask = 16'hB77B;
defparam \latency_cnt[1]~8 .sum_lutc_input = "datac";

dffeas \latency_cnt[1] (
	.clk(clk),
	.d(\latency_cnt[1]~8_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\latency_cnt[1]~q ),
	.prn(vcc));
defparam \latency_cnt[1] .is_wysiwyg = "true";
defparam \latency_cnt[1] .power_up = "low";

cycloneive_lcell_comb \state~2 (
	.dataa(\latency_cnt[0]~q ),
	.datab(\latency_cnt[2]~q ),
	.datac(gnd),
	.datad(\latency_cnt[1]~q ),
	.cin(gnd),
	.combout(\state~2_combout ),
	.cout());
defparam \state~2 .lut_mask = 16'hEEFF;
defparam \state~2 .sum_lutc_input = "datac";

cycloneive_lcell_comb \latency_cnt[0]~7 (
	.dataa(clken),
	.datab(stall_reg),
	.datac(\state~2_combout ),
	.datad(\latency_cnt[0]~q ),
	.cin(gnd),
	.combout(\latency_cnt[0]~7_combout ),
	.cout());
defparam \latency_cnt[0]~7 .lut_mask = 16'h6996;
defparam \latency_cnt[0]~7 .sum_lutc_input = "datac";

dffeas \latency_cnt[0] (
	.clk(clk),
	.d(\latency_cnt[0]~7_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\latency_cnt[0]~q ),
	.prn(vcc));
defparam \latency_cnt[0] .is_wysiwyg = "true";
defparam \latency_cnt[0] .power_up = "low";

cycloneive_lcell_comb \latency_cnt[2]~6 (
	.dataa(\latency_cnt[2]~q ),
	.datab(stall),
	.datac(\latency_cnt[0]~q ),
	.datad(\latency_cnt[1]~q ),
	.cin(gnd),
	.combout(\latency_cnt[2]~6_combout ),
	.cout());
defparam \latency_cnt[2]~6 .lut_mask = 16'h6996;
defparam \latency_cnt[2]~6 .sum_lutc_input = "datac";

dffeas \latency_cnt[2] (
	.clk(clk),
	.d(\latency_cnt[2]~6_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\latency_cnt[2]~q ),
	.prn(vcc));
defparam \latency_cnt[2] .is_wysiwyg = "true";
defparam \latency_cnt[2] .power_up = "low";

cycloneive_lcell_comb \sample_state~0 (
	.dataa(\sample_state~q ),
	.datab(\latency_cnt[2]~q ),
	.datac(\latency_cnt[1]~q ),
	.datad(stall),
	.cin(gnd),
	.combout(\sample_state~0_combout ),
	.cout());
defparam \sample_state~0 .lut_mask = 16'hFFFE;
defparam \sample_state~0 .sum_lutc_input = "datac";

dffeas sample_state(
	.clk(clk),
	.d(\sample_state~0_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\sample_state~q ),
	.prn(vcc));
defparam sample_state.is_wysiwyg = "true";
defparam sample_state.power_up = "low";

cycloneive_lcell_comb \rate_cnt_proc~0 (
	.dataa(clken),
	.datab(stall_reg),
	.datac(\sample_state~q ),
	.datad(gnd),
	.cin(gnd),
	.combout(\rate_cnt_proc~0_combout ),
	.cout());
defparam \rate_cnt_proc~0 .lut_mask = 16'hFEFE;
defparam \rate_cnt_proc~0 .sum_lutc_input = "datac";

dffeas \ena_diff[0] (
	.clk(clk),
	.d(\Equal1~0_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\rate_cnt_proc~0_combout ),
	.q(\ena_diff[0]~q ),
	.prn(vcc));
defparam \ena_diff[0] .is_wysiwyg = "true";
defparam \ena_diff[0] .power_up = "low";

dffeas \ena_diff[1] (
	.clk(clk),
	.d(\ena_diff[0]~q ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\rate_cnt_proc~0_combout ),
	.q(\ena_diff[1]~q ),
	.prn(vcc));
defparam \ena_diff[1] .is_wysiwyg = "true";
defparam \ena_diff[1] .power_up = "low";

dffeas \ena_diff[2] (
	.clk(clk),
	.d(\ena_diff[1]~q ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\rate_cnt_proc~0_combout ),
	.q(\ena_diff[2]~q ),
	.prn(vcc));
defparam \ena_diff[2] .is_wysiwyg = "true";
defparam \ena_diff[2] .power_up = "low";

dffeas \ena_diff[3] (
	.clk(clk),
	.d(\ena_diff[2]~q ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\rate_cnt_proc~0_combout ),
	.q(\ena_diff[3]~q ),
	.prn(vcc));
defparam \ena_diff[3] .is_wysiwyg = "true";
defparam \ena_diff[3] .power_up = "low";

cycloneive_lcell_comb \state~3 (
	.dataa(clken),
	.datab(stall_reg),
	.datac(state1),
	.datad(\state~2_combout ),
	.cin(gnd),
	.combout(\state~3_combout ),
	.cout());
defparam \state~3 .lut_mask = 16'hFFFE;
defparam \state~3 .sum_lutc_input = "datac";

endmodule

module CicFilter_auk_dspip_differentiator_cic_121 (
	dout_0,
	dout_1,
	dout_2,
	dout_3,
	dout_4,
	dout_5,
	dout_6,
	dout_7,
	dout_8,
	dout_9,
	dout_10,
	dout_11,
	dout_12,
	dout_13,
	dout_14,
	dout_15,
	dout_16,
	dff_ra_0,
	ena_diff_s_1,
	dff_ra_1,
	dff_ra_2,
	dff_ra_3,
	dff_ra_4,
	dff_ra_5,
	dff_ra_6,
	dff_ra_7,
	dff_ra_8,
	dff_ra_9,
	dff_ra_10,
	dff_ra_11,
	dff_ra_12,
	dff_ra_13,
	dff_ra_14,
	dff_ra_15,
	dff_ra_16,
	clk,
	reset_n)/* synthesis synthesis_greybox=1 */;
output 	dout_0;
output 	dout_1;
output 	dout_2;
output 	dout_3;
output 	dout_4;
output 	dout_5;
output 	dout_6;
output 	dout_7;
output 	dout_8;
output 	dout_9;
output 	dout_10;
output 	dout_11;
output 	dout_12;
output 	dout_13;
output 	dout_14;
output 	dout_15;
output 	dout_16;
input 	dff_ra_0;
input 	ena_diff_s_1;
input 	dff_ra_1;
input 	dff_ra_2;
input 	dff_ra_3;
input 	dff_ra_4;
input 	dff_ra_5;
input 	dff_ra_6;
input 	dff_ra_7;
input 	dff_ra_8;
input 	dff_ra_9;
input 	dff_ra_10;
input 	dff_ra_11;
input 	dff_ra_12;
input 	dff_ra_13;
input 	dff_ra_14;
input 	dff_ra_15;
input 	dff_ra_16;
input 	clk;
input 	reset_n;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \glogic:u0|register_fifo:fifo_data[0][0]~q ;
wire \glogic:u0|register_fifo:fifo_data[0][1]~q ;
wire \glogic:u0|register_fifo:fifo_data[0][2]~q ;
wire \glogic:u0|register_fifo:fifo_data[0][3]~q ;
wire \glogic:u0|register_fifo:fifo_data[0][4]~q ;
wire \glogic:u0|register_fifo:fifo_data[0][5]~q ;
wire \glogic:u0|register_fifo:fifo_data[0][6]~q ;
wire \glogic:u0|register_fifo:fifo_data[0][7]~q ;
wire \glogic:u0|register_fifo:fifo_data[0][8]~q ;
wire \glogic:u0|register_fifo:fifo_data[0][9]~q ;
wire \glogic:u0|register_fifo:fifo_data[0][10]~q ;
wire \glogic:u0|register_fifo:fifo_data[0][11]~q ;
wire \glogic:u0|register_fifo:fifo_data[0][12]~q ;
wire \glogic:u0|register_fifo:fifo_data[0][13]~q ;
wire \glogic:u0|register_fifo:fifo_data[0][14]~q ;
wire \glogic:u0|register_fifo:fifo_data[0][15]~q ;
wire \glogic:u0|register_fifo:fifo_data[0][16]~q ;
wire \dout[0]~17_combout ;
wire \dout[0]~18 ;
wire \dout[1]~19_combout ;
wire \dout[1]~20 ;
wire \dout[2]~21_combout ;
wire \dout[2]~22 ;
wire \dout[3]~23_combout ;
wire \dout[3]~24 ;
wire \dout[4]~25_combout ;
wire \dout[4]~26 ;
wire \dout[5]~27_combout ;
wire \dout[5]~28 ;
wire \dout[6]~29_combout ;
wire \dout[6]~30 ;
wire \dout[7]~31_combout ;
wire \dout[7]~32 ;
wire \dout[8]~33_combout ;
wire \dout[8]~34 ;
wire \dout[9]~35_combout ;
wire \dout[9]~36 ;
wire \dout[10]~37_combout ;
wire \dout[10]~38 ;
wire \dout[11]~39_combout ;
wire \dout[11]~40 ;
wire \dout[12]~41_combout ;
wire \dout[12]~42 ;
wire \dout[13]~43_combout ;
wire \dout[13]~44 ;
wire \dout[14]~45_combout ;
wire \dout[14]~46 ;
wire \dout[15]~47_combout ;
wire \dout[15]~48 ;
wire \dout[16]~49_combout ;


CicFilter_auk_dspip_delay_cic_121 \glogic:u0 (
	.register_fifofifo_data00(\glogic:u0|register_fifo:fifo_data[0][0]~q ),
	.datain({dff_ra_16,dff_ra_15,dff_ra_14,dff_ra_13,dff_ra_12,dff_ra_11,dff_ra_10,dff_ra_9,dff_ra_8,dff_ra_7,dff_ra_6,dff_ra_5,dff_ra_4,dff_ra_3,dff_ra_2,dff_ra_1,dff_ra_0}),
	.enable(ena_diff_s_1),
	.register_fifofifo_data01(\glogic:u0|register_fifo:fifo_data[0][1]~q ),
	.register_fifofifo_data02(\glogic:u0|register_fifo:fifo_data[0][2]~q ),
	.register_fifofifo_data03(\glogic:u0|register_fifo:fifo_data[0][3]~q ),
	.register_fifofifo_data04(\glogic:u0|register_fifo:fifo_data[0][4]~q ),
	.register_fifofifo_data05(\glogic:u0|register_fifo:fifo_data[0][5]~q ),
	.register_fifofifo_data06(\glogic:u0|register_fifo:fifo_data[0][6]~q ),
	.register_fifofifo_data07(\glogic:u0|register_fifo:fifo_data[0][7]~q ),
	.register_fifofifo_data08(\glogic:u0|register_fifo:fifo_data[0][8]~q ),
	.register_fifofifo_data09(\glogic:u0|register_fifo:fifo_data[0][9]~q ),
	.register_fifofifo_data010(\glogic:u0|register_fifo:fifo_data[0][10]~q ),
	.register_fifofifo_data011(\glogic:u0|register_fifo:fifo_data[0][11]~q ),
	.register_fifofifo_data012(\glogic:u0|register_fifo:fifo_data[0][12]~q ),
	.register_fifofifo_data013(\glogic:u0|register_fifo:fifo_data[0][13]~q ),
	.register_fifofifo_data014(\glogic:u0|register_fifo:fifo_data[0][14]~q ),
	.register_fifofifo_data015(\glogic:u0|register_fifo:fifo_data[0][15]~q ),
	.register_fifofifo_data016(\glogic:u0|register_fifo:fifo_data[0][16]~q ),
	.clk(clk),
	.reset(reset_n));

dffeas \dout[0] (
	.clk(clk),
	.d(\dout[0]~17_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena_diff_s_1),
	.q(dout_0),
	.prn(vcc));
defparam \dout[0] .is_wysiwyg = "true";
defparam \dout[0] .power_up = "low";

dffeas \dout[1] (
	.clk(clk),
	.d(\dout[1]~19_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena_diff_s_1),
	.q(dout_1),
	.prn(vcc));
defparam \dout[1] .is_wysiwyg = "true";
defparam \dout[1] .power_up = "low";

dffeas \dout[2] (
	.clk(clk),
	.d(\dout[2]~21_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena_diff_s_1),
	.q(dout_2),
	.prn(vcc));
defparam \dout[2] .is_wysiwyg = "true";
defparam \dout[2] .power_up = "low";

dffeas \dout[3] (
	.clk(clk),
	.d(\dout[3]~23_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena_diff_s_1),
	.q(dout_3),
	.prn(vcc));
defparam \dout[3] .is_wysiwyg = "true";
defparam \dout[3] .power_up = "low";

dffeas \dout[4] (
	.clk(clk),
	.d(\dout[4]~25_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena_diff_s_1),
	.q(dout_4),
	.prn(vcc));
defparam \dout[4] .is_wysiwyg = "true";
defparam \dout[4] .power_up = "low";

dffeas \dout[5] (
	.clk(clk),
	.d(\dout[5]~27_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena_diff_s_1),
	.q(dout_5),
	.prn(vcc));
defparam \dout[5] .is_wysiwyg = "true";
defparam \dout[5] .power_up = "low";

dffeas \dout[6] (
	.clk(clk),
	.d(\dout[6]~29_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena_diff_s_1),
	.q(dout_6),
	.prn(vcc));
defparam \dout[6] .is_wysiwyg = "true";
defparam \dout[6] .power_up = "low";

dffeas \dout[7] (
	.clk(clk),
	.d(\dout[7]~31_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena_diff_s_1),
	.q(dout_7),
	.prn(vcc));
defparam \dout[7] .is_wysiwyg = "true";
defparam \dout[7] .power_up = "low";

dffeas \dout[8] (
	.clk(clk),
	.d(\dout[8]~33_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena_diff_s_1),
	.q(dout_8),
	.prn(vcc));
defparam \dout[8] .is_wysiwyg = "true";
defparam \dout[8] .power_up = "low";

dffeas \dout[9] (
	.clk(clk),
	.d(\dout[9]~35_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena_diff_s_1),
	.q(dout_9),
	.prn(vcc));
defparam \dout[9] .is_wysiwyg = "true";
defparam \dout[9] .power_up = "low";

dffeas \dout[10] (
	.clk(clk),
	.d(\dout[10]~37_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena_diff_s_1),
	.q(dout_10),
	.prn(vcc));
defparam \dout[10] .is_wysiwyg = "true";
defparam \dout[10] .power_up = "low";

dffeas \dout[11] (
	.clk(clk),
	.d(\dout[11]~39_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena_diff_s_1),
	.q(dout_11),
	.prn(vcc));
defparam \dout[11] .is_wysiwyg = "true";
defparam \dout[11] .power_up = "low";

dffeas \dout[12] (
	.clk(clk),
	.d(\dout[12]~41_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena_diff_s_1),
	.q(dout_12),
	.prn(vcc));
defparam \dout[12] .is_wysiwyg = "true";
defparam \dout[12] .power_up = "low";

dffeas \dout[13] (
	.clk(clk),
	.d(\dout[13]~43_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena_diff_s_1),
	.q(dout_13),
	.prn(vcc));
defparam \dout[13] .is_wysiwyg = "true";
defparam \dout[13] .power_up = "low";

dffeas \dout[14] (
	.clk(clk),
	.d(\dout[14]~45_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena_diff_s_1),
	.q(dout_14),
	.prn(vcc));
defparam \dout[14] .is_wysiwyg = "true";
defparam \dout[14] .power_up = "low";

dffeas \dout[15] (
	.clk(clk),
	.d(\dout[15]~47_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena_diff_s_1),
	.q(dout_15),
	.prn(vcc));
defparam \dout[15] .is_wysiwyg = "true";
defparam \dout[15] .power_up = "low";

dffeas \dout[16] (
	.clk(clk),
	.d(\dout[16]~49_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena_diff_s_1),
	.q(dout_16),
	.prn(vcc));
defparam \dout[16] .is_wysiwyg = "true";
defparam \dout[16] .power_up = "low";

cycloneive_lcell_comb \dout[0]~17 (
	.dataa(\glogic:u0|register_fifo:fifo_data[0][0]~q ),
	.datab(dff_ra_0),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(\dout[0]~17_combout ),
	.cout(\dout[0]~18 ));
defparam \dout[0]~17 .lut_mask = 16'h66DD;
defparam \dout[0]~17 .sum_lutc_input = "datac";

cycloneive_lcell_comb \dout[1]~19 (
	.dataa(\glogic:u0|register_fifo:fifo_data[0][1]~q ),
	.datab(dff_ra_1),
	.datac(gnd),
	.datad(vcc),
	.cin(\dout[0]~18 ),
	.combout(\dout[1]~19_combout ),
	.cout(\dout[1]~20 ));
defparam \dout[1]~19 .lut_mask = 16'h96BF;
defparam \dout[1]~19 .sum_lutc_input = "cin";

cycloneive_lcell_comb \dout[2]~21 (
	.dataa(\glogic:u0|register_fifo:fifo_data[0][2]~q ),
	.datab(dff_ra_2),
	.datac(gnd),
	.datad(vcc),
	.cin(\dout[1]~20 ),
	.combout(\dout[2]~21_combout ),
	.cout(\dout[2]~22 ));
defparam \dout[2]~21 .lut_mask = 16'h96DF;
defparam \dout[2]~21 .sum_lutc_input = "cin";

cycloneive_lcell_comb \dout[3]~23 (
	.dataa(\glogic:u0|register_fifo:fifo_data[0][3]~q ),
	.datab(dff_ra_3),
	.datac(gnd),
	.datad(vcc),
	.cin(\dout[2]~22 ),
	.combout(\dout[3]~23_combout ),
	.cout(\dout[3]~24 ));
defparam \dout[3]~23 .lut_mask = 16'h96BF;
defparam \dout[3]~23 .sum_lutc_input = "cin";

cycloneive_lcell_comb \dout[4]~25 (
	.dataa(\glogic:u0|register_fifo:fifo_data[0][4]~q ),
	.datab(dff_ra_4),
	.datac(gnd),
	.datad(vcc),
	.cin(\dout[3]~24 ),
	.combout(\dout[4]~25_combout ),
	.cout(\dout[4]~26 ));
defparam \dout[4]~25 .lut_mask = 16'h96DF;
defparam \dout[4]~25 .sum_lutc_input = "cin";

cycloneive_lcell_comb \dout[5]~27 (
	.dataa(\glogic:u0|register_fifo:fifo_data[0][5]~q ),
	.datab(dff_ra_5),
	.datac(gnd),
	.datad(vcc),
	.cin(\dout[4]~26 ),
	.combout(\dout[5]~27_combout ),
	.cout(\dout[5]~28 ));
defparam \dout[5]~27 .lut_mask = 16'h96BF;
defparam \dout[5]~27 .sum_lutc_input = "cin";

cycloneive_lcell_comb \dout[6]~29 (
	.dataa(\glogic:u0|register_fifo:fifo_data[0][6]~q ),
	.datab(dff_ra_6),
	.datac(gnd),
	.datad(vcc),
	.cin(\dout[5]~28 ),
	.combout(\dout[6]~29_combout ),
	.cout(\dout[6]~30 ));
defparam \dout[6]~29 .lut_mask = 16'h96DF;
defparam \dout[6]~29 .sum_lutc_input = "cin";

cycloneive_lcell_comb \dout[7]~31 (
	.dataa(\glogic:u0|register_fifo:fifo_data[0][7]~q ),
	.datab(dff_ra_7),
	.datac(gnd),
	.datad(vcc),
	.cin(\dout[6]~30 ),
	.combout(\dout[7]~31_combout ),
	.cout(\dout[7]~32 ));
defparam \dout[7]~31 .lut_mask = 16'h96BF;
defparam \dout[7]~31 .sum_lutc_input = "cin";

cycloneive_lcell_comb \dout[8]~33 (
	.dataa(\glogic:u0|register_fifo:fifo_data[0][8]~q ),
	.datab(dff_ra_8),
	.datac(gnd),
	.datad(vcc),
	.cin(\dout[7]~32 ),
	.combout(\dout[8]~33_combout ),
	.cout(\dout[8]~34 ));
defparam \dout[8]~33 .lut_mask = 16'h96DF;
defparam \dout[8]~33 .sum_lutc_input = "cin";

cycloneive_lcell_comb \dout[9]~35 (
	.dataa(\glogic:u0|register_fifo:fifo_data[0][9]~q ),
	.datab(dff_ra_9),
	.datac(gnd),
	.datad(vcc),
	.cin(\dout[8]~34 ),
	.combout(\dout[9]~35_combout ),
	.cout(\dout[9]~36 ));
defparam \dout[9]~35 .lut_mask = 16'h96BF;
defparam \dout[9]~35 .sum_lutc_input = "cin";

cycloneive_lcell_comb \dout[10]~37 (
	.dataa(\glogic:u0|register_fifo:fifo_data[0][10]~q ),
	.datab(dff_ra_10),
	.datac(gnd),
	.datad(vcc),
	.cin(\dout[9]~36 ),
	.combout(\dout[10]~37_combout ),
	.cout(\dout[10]~38 ));
defparam \dout[10]~37 .lut_mask = 16'h96DF;
defparam \dout[10]~37 .sum_lutc_input = "cin";

cycloneive_lcell_comb \dout[11]~39 (
	.dataa(\glogic:u0|register_fifo:fifo_data[0][11]~q ),
	.datab(dff_ra_11),
	.datac(gnd),
	.datad(vcc),
	.cin(\dout[10]~38 ),
	.combout(\dout[11]~39_combout ),
	.cout(\dout[11]~40 ));
defparam \dout[11]~39 .lut_mask = 16'h96BF;
defparam \dout[11]~39 .sum_lutc_input = "cin";

cycloneive_lcell_comb \dout[12]~41 (
	.dataa(\glogic:u0|register_fifo:fifo_data[0][12]~q ),
	.datab(dff_ra_12),
	.datac(gnd),
	.datad(vcc),
	.cin(\dout[11]~40 ),
	.combout(\dout[12]~41_combout ),
	.cout(\dout[12]~42 ));
defparam \dout[12]~41 .lut_mask = 16'h96DF;
defparam \dout[12]~41 .sum_lutc_input = "cin";

cycloneive_lcell_comb \dout[13]~43 (
	.dataa(\glogic:u0|register_fifo:fifo_data[0][13]~q ),
	.datab(dff_ra_13),
	.datac(gnd),
	.datad(vcc),
	.cin(\dout[12]~42 ),
	.combout(\dout[13]~43_combout ),
	.cout(\dout[13]~44 ));
defparam \dout[13]~43 .lut_mask = 16'h96BF;
defparam \dout[13]~43 .sum_lutc_input = "cin";

cycloneive_lcell_comb \dout[14]~45 (
	.dataa(\glogic:u0|register_fifo:fifo_data[0][14]~q ),
	.datab(dff_ra_14),
	.datac(gnd),
	.datad(vcc),
	.cin(\dout[13]~44 ),
	.combout(\dout[14]~45_combout ),
	.cout(\dout[14]~46 ));
defparam \dout[14]~45 .lut_mask = 16'h96DF;
defparam \dout[14]~45 .sum_lutc_input = "cin";

cycloneive_lcell_comb \dout[15]~47 (
	.dataa(\glogic:u0|register_fifo:fifo_data[0][15]~q ),
	.datab(dff_ra_15),
	.datac(gnd),
	.datad(vcc),
	.cin(\dout[14]~46 ),
	.combout(\dout[15]~47_combout ),
	.cout(\dout[15]~48 ));
defparam \dout[15]~47 .lut_mask = 16'h96BF;
defparam \dout[15]~47 .sum_lutc_input = "cin";

cycloneive_lcell_comb \dout[16]~49 (
	.dataa(\glogic:u0|register_fifo:fifo_data[0][16]~q ),
	.datab(dff_ra_16),
	.datac(gnd),
	.datad(gnd),
	.cin(\dout[15]~48 ),
	.combout(\dout[16]~49_combout ),
	.cout());
defparam \dout[16]~49 .lut_mask = 16'h9696;
defparam \dout[16]~49 .sum_lutc_input = "cin";

endmodule

module CicFilter_auk_dspip_delay_cic_121 (
	register_fifofifo_data00,
	datain,
	enable,
	register_fifofifo_data01,
	register_fifofifo_data02,
	register_fifofifo_data03,
	register_fifofifo_data04,
	register_fifofifo_data05,
	register_fifofifo_data06,
	register_fifofifo_data07,
	register_fifofifo_data08,
	register_fifofifo_data09,
	register_fifofifo_data010,
	register_fifofifo_data011,
	register_fifofifo_data012,
	register_fifofifo_data013,
	register_fifofifo_data014,
	register_fifofifo_data015,
	register_fifofifo_data016,
	clk,
	reset)/* synthesis synthesis_greybox=1 */;
output 	register_fifofifo_data00;
input 	[16:0] datain;
input 	enable;
output 	register_fifofifo_data01;
output 	register_fifofifo_data02;
output 	register_fifofifo_data03;
output 	register_fifofifo_data04;
output 	register_fifofifo_data05;
output 	register_fifofifo_data06;
output 	register_fifofifo_data07;
output 	register_fifofifo_data08;
output 	register_fifofifo_data09;
output 	register_fifofifo_data010;
output 	register_fifofifo_data011;
output 	register_fifofifo_data012;
output 	register_fifofifo_data013;
output 	register_fifofifo_data014;
output 	register_fifofifo_data015;
output 	register_fifofifo_data016;
input 	clk;
input 	reset;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



dffeas \register_fifo:fifo_data[0][0] (
	.clk(clk),
	.d(datain[0]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data00),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][0] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][0] .power_up = "low";

dffeas \register_fifo:fifo_data[0][1] (
	.clk(clk),
	.d(datain[1]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data01),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][1] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][1] .power_up = "low";

dffeas \register_fifo:fifo_data[0][2] (
	.clk(clk),
	.d(datain[2]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data02),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][2] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][2] .power_up = "low";

dffeas \register_fifo:fifo_data[0][3] (
	.clk(clk),
	.d(datain[3]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data03),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][3] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][3] .power_up = "low";

dffeas \register_fifo:fifo_data[0][4] (
	.clk(clk),
	.d(datain[4]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data04),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][4] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][4] .power_up = "low";

dffeas \register_fifo:fifo_data[0][5] (
	.clk(clk),
	.d(datain[5]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data05),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][5] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][5] .power_up = "low";

dffeas \register_fifo:fifo_data[0][6] (
	.clk(clk),
	.d(datain[6]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data06),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][6] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][6] .power_up = "low";

dffeas \register_fifo:fifo_data[0][7] (
	.clk(clk),
	.d(datain[7]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data07),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][7] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][7] .power_up = "low";

dffeas \register_fifo:fifo_data[0][8] (
	.clk(clk),
	.d(datain[8]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data08),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][8] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][8] .power_up = "low";

dffeas \register_fifo:fifo_data[0][9] (
	.clk(clk),
	.d(datain[9]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data09),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][9] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][9] .power_up = "low";

dffeas \register_fifo:fifo_data[0][10] (
	.clk(clk),
	.d(datain[10]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data010),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][10] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][10] .power_up = "low";

dffeas \register_fifo:fifo_data[0][11] (
	.clk(clk),
	.d(datain[11]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data011),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][11] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][11] .power_up = "low";

dffeas \register_fifo:fifo_data[0][12] (
	.clk(clk),
	.d(datain[12]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data012),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][12] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][12] .power_up = "low";

dffeas \register_fifo:fifo_data[0][13] (
	.clk(clk),
	.d(datain[13]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data013),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][13] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][13] .power_up = "low";

dffeas \register_fifo:fifo_data[0][14] (
	.clk(clk),
	.d(datain[14]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data014),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][14] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][14] .power_up = "low";

dffeas \register_fifo:fifo_data[0][15] (
	.clk(clk),
	.d(datain[15]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data015),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][15] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][15] .power_up = "low";

dffeas \register_fifo:fifo_data[0][16] (
	.clk(clk),
	.d(datain[16]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data016),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][16] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][16] .power_up = "low";

endmodule

module CicFilter_auk_dspip_differentiator_cic_121_1 (
	dout_0,
	dout_1,
	dout_2,
	dout_3,
	dout_4,
	dout_5,
	dout_6,
	dout_7,
	dout_8,
	dout_9,
	dout_10,
	dout_11,
	dout_12,
	dout_13,
	dout_14,
	dout_15,
	dout_16,
	dout_01,
	dout_17,
	dout_21,
	dout_31,
	dout_41,
	dout_51,
	dout_61,
	dout_71,
	dout_81,
	dout_91,
	dout_101,
	dout_111,
	dout_121,
	dout_131,
	dout_141,
	dout_151,
	dout_161,
	ena_diff_s_2,
	clk,
	reset_n)/* synthesis synthesis_greybox=1 */;
output 	dout_0;
output 	dout_1;
output 	dout_2;
output 	dout_3;
output 	dout_4;
output 	dout_5;
output 	dout_6;
output 	dout_7;
output 	dout_8;
output 	dout_9;
output 	dout_10;
output 	dout_11;
output 	dout_12;
output 	dout_13;
output 	dout_14;
output 	dout_15;
output 	dout_16;
input 	dout_01;
input 	dout_17;
input 	dout_21;
input 	dout_31;
input 	dout_41;
input 	dout_51;
input 	dout_61;
input 	dout_71;
input 	dout_81;
input 	dout_91;
input 	dout_101;
input 	dout_111;
input 	dout_121;
input 	dout_131;
input 	dout_141;
input 	dout_151;
input 	dout_161;
input 	ena_diff_s_2;
input 	clk;
input 	reset_n;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \glogic:u0|register_fifo:fifo_data[0][0]~q ;
wire \glogic:u0|register_fifo:fifo_data[0][1]~q ;
wire \glogic:u0|register_fifo:fifo_data[0][2]~q ;
wire \glogic:u0|register_fifo:fifo_data[0][3]~q ;
wire \glogic:u0|register_fifo:fifo_data[0][4]~q ;
wire \glogic:u0|register_fifo:fifo_data[0][5]~q ;
wire \glogic:u0|register_fifo:fifo_data[0][6]~q ;
wire \glogic:u0|register_fifo:fifo_data[0][7]~q ;
wire \glogic:u0|register_fifo:fifo_data[0][8]~q ;
wire \glogic:u0|register_fifo:fifo_data[0][9]~q ;
wire \glogic:u0|register_fifo:fifo_data[0][10]~q ;
wire \glogic:u0|register_fifo:fifo_data[0][11]~q ;
wire \glogic:u0|register_fifo:fifo_data[0][12]~q ;
wire \glogic:u0|register_fifo:fifo_data[0][13]~q ;
wire \glogic:u0|register_fifo:fifo_data[0][14]~q ;
wire \glogic:u0|register_fifo:fifo_data[0][15]~q ;
wire \glogic:u0|register_fifo:fifo_data[0][16]~q ;
wire \dout[0]~17_combout ;
wire \dout[0]~18 ;
wire \dout[1]~19_combout ;
wire \dout[1]~20 ;
wire \dout[2]~21_combout ;
wire \dout[2]~22 ;
wire \dout[3]~23_combout ;
wire \dout[3]~24 ;
wire \dout[4]~25_combout ;
wire \dout[4]~26 ;
wire \dout[5]~27_combout ;
wire \dout[5]~28 ;
wire \dout[6]~29_combout ;
wire \dout[6]~30 ;
wire \dout[7]~31_combout ;
wire \dout[7]~32 ;
wire \dout[8]~33_combout ;
wire \dout[8]~34 ;
wire \dout[9]~35_combout ;
wire \dout[9]~36 ;
wire \dout[10]~37_combout ;
wire \dout[10]~38 ;
wire \dout[11]~39_combout ;
wire \dout[11]~40 ;
wire \dout[12]~41_combout ;
wire \dout[12]~42 ;
wire \dout[13]~43_combout ;
wire \dout[13]~44 ;
wire \dout[14]~45_combout ;
wire \dout[14]~46 ;
wire \dout[15]~47_combout ;
wire \dout[15]~48 ;
wire \dout[16]~49_combout ;


CicFilter_auk_dspip_delay_cic_121_1 \glogic:u0 (
	.datain({dout_161,dout_151,dout_141,dout_131,dout_121,dout_111,dout_101,dout_91,dout_81,dout_71,dout_61,dout_51,dout_41,dout_31,dout_21,dout_17,dout_01}),
	.register_fifofifo_data00(\glogic:u0|register_fifo:fifo_data[0][0]~q ),
	.enable(ena_diff_s_2),
	.register_fifofifo_data01(\glogic:u0|register_fifo:fifo_data[0][1]~q ),
	.register_fifofifo_data02(\glogic:u0|register_fifo:fifo_data[0][2]~q ),
	.register_fifofifo_data03(\glogic:u0|register_fifo:fifo_data[0][3]~q ),
	.register_fifofifo_data04(\glogic:u0|register_fifo:fifo_data[0][4]~q ),
	.register_fifofifo_data05(\glogic:u0|register_fifo:fifo_data[0][5]~q ),
	.register_fifofifo_data06(\glogic:u0|register_fifo:fifo_data[0][6]~q ),
	.register_fifofifo_data07(\glogic:u0|register_fifo:fifo_data[0][7]~q ),
	.register_fifofifo_data08(\glogic:u0|register_fifo:fifo_data[0][8]~q ),
	.register_fifofifo_data09(\glogic:u0|register_fifo:fifo_data[0][9]~q ),
	.register_fifofifo_data010(\glogic:u0|register_fifo:fifo_data[0][10]~q ),
	.register_fifofifo_data011(\glogic:u0|register_fifo:fifo_data[0][11]~q ),
	.register_fifofifo_data012(\glogic:u0|register_fifo:fifo_data[0][12]~q ),
	.register_fifofifo_data013(\glogic:u0|register_fifo:fifo_data[0][13]~q ),
	.register_fifofifo_data014(\glogic:u0|register_fifo:fifo_data[0][14]~q ),
	.register_fifofifo_data015(\glogic:u0|register_fifo:fifo_data[0][15]~q ),
	.register_fifofifo_data016(\glogic:u0|register_fifo:fifo_data[0][16]~q ),
	.clk(clk),
	.reset(reset_n));

dffeas \dout[0] (
	.clk(clk),
	.d(\dout[0]~17_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena_diff_s_2),
	.q(dout_0),
	.prn(vcc));
defparam \dout[0] .is_wysiwyg = "true";
defparam \dout[0] .power_up = "low";

dffeas \dout[1] (
	.clk(clk),
	.d(\dout[1]~19_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena_diff_s_2),
	.q(dout_1),
	.prn(vcc));
defparam \dout[1] .is_wysiwyg = "true";
defparam \dout[1] .power_up = "low";

dffeas \dout[2] (
	.clk(clk),
	.d(\dout[2]~21_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena_diff_s_2),
	.q(dout_2),
	.prn(vcc));
defparam \dout[2] .is_wysiwyg = "true";
defparam \dout[2] .power_up = "low";

dffeas \dout[3] (
	.clk(clk),
	.d(\dout[3]~23_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena_diff_s_2),
	.q(dout_3),
	.prn(vcc));
defparam \dout[3] .is_wysiwyg = "true";
defparam \dout[3] .power_up = "low";

dffeas \dout[4] (
	.clk(clk),
	.d(\dout[4]~25_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena_diff_s_2),
	.q(dout_4),
	.prn(vcc));
defparam \dout[4] .is_wysiwyg = "true";
defparam \dout[4] .power_up = "low";

dffeas \dout[5] (
	.clk(clk),
	.d(\dout[5]~27_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena_diff_s_2),
	.q(dout_5),
	.prn(vcc));
defparam \dout[5] .is_wysiwyg = "true";
defparam \dout[5] .power_up = "low";

dffeas \dout[6] (
	.clk(clk),
	.d(\dout[6]~29_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena_diff_s_2),
	.q(dout_6),
	.prn(vcc));
defparam \dout[6] .is_wysiwyg = "true";
defparam \dout[6] .power_up = "low";

dffeas \dout[7] (
	.clk(clk),
	.d(\dout[7]~31_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena_diff_s_2),
	.q(dout_7),
	.prn(vcc));
defparam \dout[7] .is_wysiwyg = "true";
defparam \dout[7] .power_up = "low";

dffeas \dout[8] (
	.clk(clk),
	.d(\dout[8]~33_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena_diff_s_2),
	.q(dout_8),
	.prn(vcc));
defparam \dout[8] .is_wysiwyg = "true";
defparam \dout[8] .power_up = "low";

dffeas \dout[9] (
	.clk(clk),
	.d(\dout[9]~35_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena_diff_s_2),
	.q(dout_9),
	.prn(vcc));
defparam \dout[9] .is_wysiwyg = "true";
defparam \dout[9] .power_up = "low";

dffeas \dout[10] (
	.clk(clk),
	.d(\dout[10]~37_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena_diff_s_2),
	.q(dout_10),
	.prn(vcc));
defparam \dout[10] .is_wysiwyg = "true";
defparam \dout[10] .power_up = "low";

dffeas \dout[11] (
	.clk(clk),
	.d(\dout[11]~39_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena_diff_s_2),
	.q(dout_11),
	.prn(vcc));
defparam \dout[11] .is_wysiwyg = "true";
defparam \dout[11] .power_up = "low";

dffeas \dout[12] (
	.clk(clk),
	.d(\dout[12]~41_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena_diff_s_2),
	.q(dout_12),
	.prn(vcc));
defparam \dout[12] .is_wysiwyg = "true";
defparam \dout[12] .power_up = "low";

dffeas \dout[13] (
	.clk(clk),
	.d(\dout[13]~43_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena_diff_s_2),
	.q(dout_13),
	.prn(vcc));
defparam \dout[13] .is_wysiwyg = "true";
defparam \dout[13] .power_up = "low";

dffeas \dout[14] (
	.clk(clk),
	.d(\dout[14]~45_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena_diff_s_2),
	.q(dout_14),
	.prn(vcc));
defparam \dout[14] .is_wysiwyg = "true";
defparam \dout[14] .power_up = "low";

dffeas \dout[15] (
	.clk(clk),
	.d(\dout[15]~47_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena_diff_s_2),
	.q(dout_15),
	.prn(vcc));
defparam \dout[15] .is_wysiwyg = "true";
defparam \dout[15] .power_up = "low";

dffeas \dout[16] (
	.clk(clk),
	.d(\dout[16]~49_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena_diff_s_2),
	.q(dout_16),
	.prn(vcc));
defparam \dout[16] .is_wysiwyg = "true";
defparam \dout[16] .power_up = "low";

cycloneive_lcell_comb \dout[0]~17 (
	.dataa(\glogic:u0|register_fifo:fifo_data[0][0]~q ),
	.datab(dout_01),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(\dout[0]~17_combout ),
	.cout(\dout[0]~18 ));
defparam \dout[0]~17 .lut_mask = 16'h66DD;
defparam \dout[0]~17 .sum_lutc_input = "datac";

cycloneive_lcell_comb \dout[1]~19 (
	.dataa(\glogic:u0|register_fifo:fifo_data[0][1]~q ),
	.datab(dout_17),
	.datac(gnd),
	.datad(vcc),
	.cin(\dout[0]~18 ),
	.combout(\dout[1]~19_combout ),
	.cout(\dout[1]~20 ));
defparam \dout[1]~19 .lut_mask = 16'h96BF;
defparam \dout[1]~19 .sum_lutc_input = "cin";

cycloneive_lcell_comb \dout[2]~21 (
	.dataa(\glogic:u0|register_fifo:fifo_data[0][2]~q ),
	.datab(dout_21),
	.datac(gnd),
	.datad(vcc),
	.cin(\dout[1]~20 ),
	.combout(\dout[2]~21_combout ),
	.cout(\dout[2]~22 ));
defparam \dout[2]~21 .lut_mask = 16'h96DF;
defparam \dout[2]~21 .sum_lutc_input = "cin";

cycloneive_lcell_comb \dout[3]~23 (
	.dataa(\glogic:u0|register_fifo:fifo_data[0][3]~q ),
	.datab(dout_31),
	.datac(gnd),
	.datad(vcc),
	.cin(\dout[2]~22 ),
	.combout(\dout[3]~23_combout ),
	.cout(\dout[3]~24 ));
defparam \dout[3]~23 .lut_mask = 16'h96BF;
defparam \dout[3]~23 .sum_lutc_input = "cin";

cycloneive_lcell_comb \dout[4]~25 (
	.dataa(\glogic:u0|register_fifo:fifo_data[0][4]~q ),
	.datab(dout_41),
	.datac(gnd),
	.datad(vcc),
	.cin(\dout[3]~24 ),
	.combout(\dout[4]~25_combout ),
	.cout(\dout[4]~26 ));
defparam \dout[4]~25 .lut_mask = 16'h96DF;
defparam \dout[4]~25 .sum_lutc_input = "cin";

cycloneive_lcell_comb \dout[5]~27 (
	.dataa(\glogic:u0|register_fifo:fifo_data[0][5]~q ),
	.datab(dout_51),
	.datac(gnd),
	.datad(vcc),
	.cin(\dout[4]~26 ),
	.combout(\dout[5]~27_combout ),
	.cout(\dout[5]~28 ));
defparam \dout[5]~27 .lut_mask = 16'h96BF;
defparam \dout[5]~27 .sum_lutc_input = "cin";

cycloneive_lcell_comb \dout[6]~29 (
	.dataa(\glogic:u0|register_fifo:fifo_data[0][6]~q ),
	.datab(dout_61),
	.datac(gnd),
	.datad(vcc),
	.cin(\dout[5]~28 ),
	.combout(\dout[6]~29_combout ),
	.cout(\dout[6]~30 ));
defparam \dout[6]~29 .lut_mask = 16'h96DF;
defparam \dout[6]~29 .sum_lutc_input = "cin";

cycloneive_lcell_comb \dout[7]~31 (
	.dataa(\glogic:u0|register_fifo:fifo_data[0][7]~q ),
	.datab(dout_71),
	.datac(gnd),
	.datad(vcc),
	.cin(\dout[6]~30 ),
	.combout(\dout[7]~31_combout ),
	.cout(\dout[7]~32 ));
defparam \dout[7]~31 .lut_mask = 16'h96BF;
defparam \dout[7]~31 .sum_lutc_input = "cin";

cycloneive_lcell_comb \dout[8]~33 (
	.dataa(\glogic:u0|register_fifo:fifo_data[0][8]~q ),
	.datab(dout_81),
	.datac(gnd),
	.datad(vcc),
	.cin(\dout[7]~32 ),
	.combout(\dout[8]~33_combout ),
	.cout(\dout[8]~34 ));
defparam \dout[8]~33 .lut_mask = 16'h96DF;
defparam \dout[8]~33 .sum_lutc_input = "cin";

cycloneive_lcell_comb \dout[9]~35 (
	.dataa(\glogic:u0|register_fifo:fifo_data[0][9]~q ),
	.datab(dout_91),
	.datac(gnd),
	.datad(vcc),
	.cin(\dout[8]~34 ),
	.combout(\dout[9]~35_combout ),
	.cout(\dout[9]~36 ));
defparam \dout[9]~35 .lut_mask = 16'h96BF;
defparam \dout[9]~35 .sum_lutc_input = "cin";

cycloneive_lcell_comb \dout[10]~37 (
	.dataa(\glogic:u0|register_fifo:fifo_data[0][10]~q ),
	.datab(dout_101),
	.datac(gnd),
	.datad(vcc),
	.cin(\dout[9]~36 ),
	.combout(\dout[10]~37_combout ),
	.cout(\dout[10]~38 ));
defparam \dout[10]~37 .lut_mask = 16'h96DF;
defparam \dout[10]~37 .sum_lutc_input = "cin";

cycloneive_lcell_comb \dout[11]~39 (
	.dataa(\glogic:u0|register_fifo:fifo_data[0][11]~q ),
	.datab(dout_111),
	.datac(gnd),
	.datad(vcc),
	.cin(\dout[10]~38 ),
	.combout(\dout[11]~39_combout ),
	.cout(\dout[11]~40 ));
defparam \dout[11]~39 .lut_mask = 16'h96BF;
defparam \dout[11]~39 .sum_lutc_input = "cin";

cycloneive_lcell_comb \dout[12]~41 (
	.dataa(\glogic:u0|register_fifo:fifo_data[0][12]~q ),
	.datab(dout_121),
	.datac(gnd),
	.datad(vcc),
	.cin(\dout[11]~40 ),
	.combout(\dout[12]~41_combout ),
	.cout(\dout[12]~42 ));
defparam \dout[12]~41 .lut_mask = 16'h96DF;
defparam \dout[12]~41 .sum_lutc_input = "cin";

cycloneive_lcell_comb \dout[13]~43 (
	.dataa(\glogic:u0|register_fifo:fifo_data[0][13]~q ),
	.datab(dout_131),
	.datac(gnd),
	.datad(vcc),
	.cin(\dout[12]~42 ),
	.combout(\dout[13]~43_combout ),
	.cout(\dout[13]~44 ));
defparam \dout[13]~43 .lut_mask = 16'h96BF;
defparam \dout[13]~43 .sum_lutc_input = "cin";

cycloneive_lcell_comb \dout[14]~45 (
	.dataa(\glogic:u0|register_fifo:fifo_data[0][14]~q ),
	.datab(dout_141),
	.datac(gnd),
	.datad(vcc),
	.cin(\dout[13]~44 ),
	.combout(\dout[14]~45_combout ),
	.cout(\dout[14]~46 ));
defparam \dout[14]~45 .lut_mask = 16'h96DF;
defparam \dout[14]~45 .sum_lutc_input = "cin";

cycloneive_lcell_comb \dout[15]~47 (
	.dataa(\glogic:u0|register_fifo:fifo_data[0][15]~q ),
	.datab(dout_151),
	.datac(gnd),
	.datad(vcc),
	.cin(\dout[14]~46 ),
	.combout(\dout[15]~47_combout ),
	.cout(\dout[15]~48 ));
defparam \dout[15]~47 .lut_mask = 16'h96BF;
defparam \dout[15]~47 .sum_lutc_input = "cin";

cycloneive_lcell_comb \dout[16]~49 (
	.dataa(\glogic:u0|register_fifo:fifo_data[0][16]~q ),
	.datab(dout_161),
	.datac(gnd),
	.datad(gnd),
	.cin(\dout[15]~48 ),
	.combout(\dout[16]~49_combout ),
	.cout());
defparam \dout[16]~49 .lut_mask = 16'h9696;
defparam \dout[16]~49 .sum_lutc_input = "cin";

endmodule

module CicFilter_auk_dspip_delay_cic_121_1 (
	datain,
	register_fifofifo_data00,
	enable,
	register_fifofifo_data01,
	register_fifofifo_data02,
	register_fifofifo_data03,
	register_fifofifo_data04,
	register_fifofifo_data05,
	register_fifofifo_data06,
	register_fifofifo_data07,
	register_fifofifo_data08,
	register_fifofifo_data09,
	register_fifofifo_data010,
	register_fifofifo_data011,
	register_fifofifo_data012,
	register_fifofifo_data013,
	register_fifofifo_data014,
	register_fifofifo_data015,
	register_fifofifo_data016,
	clk,
	reset)/* synthesis synthesis_greybox=1 */;
input 	[16:0] datain;
output 	register_fifofifo_data00;
input 	enable;
output 	register_fifofifo_data01;
output 	register_fifofifo_data02;
output 	register_fifofifo_data03;
output 	register_fifofifo_data04;
output 	register_fifofifo_data05;
output 	register_fifofifo_data06;
output 	register_fifofifo_data07;
output 	register_fifofifo_data08;
output 	register_fifofifo_data09;
output 	register_fifofifo_data010;
output 	register_fifofifo_data011;
output 	register_fifofifo_data012;
output 	register_fifofifo_data013;
output 	register_fifofifo_data014;
output 	register_fifofifo_data015;
output 	register_fifofifo_data016;
input 	clk;
input 	reset;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



dffeas \register_fifo:fifo_data[0][0] (
	.clk(clk),
	.d(datain[0]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data00),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][0] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][0] .power_up = "low";

dffeas \register_fifo:fifo_data[0][1] (
	.clk(clk),
	.d(datain[1]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data01),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][1] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][1] .power_up = "low";

dffeas \register_fifo:fifo_data[0][2] (
	.clk(clk),
	.d(datain[2]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data02),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][2] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][2] .power_up = "low";

dffeas \register_fifo:fifo_data[0][3] (
	.clk(clk),
	.d(datain[3]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data03),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][3] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][3] .power_up = "low";

dffeas \register_fifo:fifo_data[0][4] (
	.clk(clk),
	.d(datain[4]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data04),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][4] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][4] .power_up = "low";

dffeas \register_fifo:fifo_data[0][5] (
	.clk(clk),
	.d(datain[5]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data05),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][5] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][5] .power_up = "low";

dffeas \register_fifo:fifo_data[0][6] (
	.clk(clk),
	.d(datain[6]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data06),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][6] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][6] .power_up = "low";

dffeas \register_fifo:fifo_data[0][7] (
	.clk(clk),
	.d(datain[7]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data07),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][7] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][7] .power_up = "low";

dffeas \register_fifo:fifo_data[0][8] (
	.clk(clk),
	.d(datain[8]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data08),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][8] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][8] .power_up = "low";

dffeas \register_fifo:fifo_data[0][9] (
	.clk(clk),
	.d(datain[9]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data09),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][9] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][9] .power_up = "low";

dffeas \register_fifo:fifo_data[0][10] (
	.clk(clk),
	.d(datain[10]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data010),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][10] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][10] .power_up = "low";

dffeas \register_fifo:fifo_data[0][11] (
	.clk(clk),
	.d(datain[11]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data011),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][11] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][11] .power_up = "low";

dffeas \register_fifo:fifo_data[0][12] (
	.clk(clk),
	.d(datain[12]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data012),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][12] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][12] .power_up = "low";

dffeas \register_fifo:fifo_data[0][13] (
	.clk(clk),
	.d(datain[13]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data013),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][13] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][13] .power_up = "low";

dffeas \register_fifo:fifo_data[0][14] (
	.clk(clk),
	.d(datain[14]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data014),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][14] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][14] .power_up = "low";

dffeas \register_fifo:fifo_data[0][15] (
	.clk(clk),
	.d(datain[15]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data015),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][15] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][15] .power_up = "low";

dffeas \register_fifo:fifo_data[0][16] (
	.clk(clk),
	.d(datain[16]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data016),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][16] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][16] .power_up = "low";

endmodule

module CicFilter_auk_dspip_differentiator_cic_121_2 (
	dout_0,
	dout_1,
	dout_2,
	dout_3,
	dout_4,
	dout_5,
	dout_6,
	dout_7,
	dout_8,
	dout_9,
	dout_10,
	dout_11,
	dout_12,
	dout_13,
	dout_14,
	dout_15,
	dout_16,
	dout_01,
	dout_17,
	dout_21,
	dout_31,
	dout_41,
	dout_51,
	dout_61,
	dout_71,
	dout_81,
	dout_91,
	dout_101,
	dout_111,
	dout_121,
	dout_131,
	dout_141,
	dout_151,
	dout_161,
	ena_diff_s_3,
	clk,
	reset_n)/* synthesis synthesis_greybox=1 */;
output 	dout_0;
output 	dout_1;
output 	dout_2;
output 	dout_3;
output 	dout_4;
output 	dout_5;
output 	dout_6;
output 	dout_7;
output 	dout_8;
output 	dout_9;
output 	dout_10;
output 	dout_11;
output 	dout_12;
output 	dout_13;
output 	dout_14;
output 	dout_15;
output 	dout_16;
input 	dout_01;
input 	dout_17;
input 	dout_21;
input 	dout_31;
input 	dout_41;
input 	dout_51;
input 	dout_61;
input 	dout_71;
input 	dout_81;
input 	dout_91;
input 	dout_101;
input 	dout_111;
input 	dout_121;
input 	dout_131;
input 	dout_141;
input 	dout_151;
input 	dout_161;
input 	ena_diff_s_3;
input 	clk;
input 	reset_n;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \glogic:u0|register_fifo:fifo_data[0][0]~q ;
wire \glogic:u0|register_fifo:fifo_data[0][1]~q ;
wire \glogic:u0|register_fifo:fifo_data[0][2]~q ;
wire \glogic:u0|register_fifo:fifo_data[0][3]~q ;
wire \glogic:u0|register_fifo:fifo_data[0][4]~q ;
wire \glogic:u0|register_fifo:fifo_data[0][5]~q ;
wire \glogic:u0|register_fifo:fifo_data[0][6]~q ;
wire \glogic:u0|register_fifo:fifo_data[0][7]~q ;
wire \glogic:u0|register_fifo:fifo_data[0][8]~q ;
wire \glogic:u0|register_fifo:fifo_data[0][9]~q ;
wire \glogic:u0|register_fifo:fifo_data[0][10]~q ;
wire \glogic:u0|register_fifo:fifo_data[0][11]~q ;
wire \glogic:u0|register_fifo:fifo_data[0][12]~q ;
wire \glogic:u0|register_fifo:fifo_data[0][13]~q ;
wire \glogic:u0|register_fifo:fifo_data[0][14]~q ;
wire \glogic:u0|register_fifo:fifo_data[0][15]~q ;
wire \glogic:u0|register_fifo:fifo_data[0][16]~q ;
wire \dout[0]~17_combout ;
wire \dout[0]~18 ;
wire \dout[1]~19_combout ;
wire \dout[1]~20 ;
wire \dout[2]~21_combout ;
wire \dout[2]~22 ;
wire \dout[3]~23_combout ;
wire \dout[3]~24 ;
wire \dout[4]~25_combout ;
wire \dout[4]~26 ;
wire \dout[5]~27_combout ;
wire \dout[5]~28 ;
wire \dout[6]~29_combout ;
wire \dout[6]~30 ;
wire \dout[7]~31_combout ;
wire \dout[7]~32 ;
wire \dout[8]~33_combout ;
wire \dout[8]~34 ;
wire \dout[9]~35_combout ;
wire \dout[9]~36 ;
wire \dout[10]~37_combout ;
wire \dout[10]~38 ;
wire \dout[11]~39_combout ;
wire \dout[11]~40 ;
wire \dout[12]~41_combout ;
wire \dout[12]~42 ;
wire \dout[13]~43_combout ;
wire \dout[13]~44 ;
wire \dout[14]~45_combout ;
wire \dout[14]~46 ;
wire \dout[15]~47_combout ;
wire \dout[15]~48 ;
wire \dout[16]~49_combout ;


CicFilter_auk_dspip_delay_cic_121_2 \glogic:u0 (
	.datain({dout_161,dout_151,dout_141,dout_131,dout_121,dout_111,dout_101,dout_91,dout_81,dout_71,dout_61,dout_51,dout_41,dout_31,dout_21,dout_17,dout_01}),
	.register_fifofifo_data00(\glogic:u0|register_fifo:fifo_data[0][0]~q ),
	.enable(ena_diff_s_3),
	.register_fifofifo_data01(\glogic:u0|register_fifo:fifo_data[0][1]~q ),
	.register_fifofifo_data02(\glogic:u0|register_fifo:fifo_data[0][2]~q ),
	.register_fifofifo_data03(\glogic:u0|register_fifo:fifo_data[0][3]~q ),
	.register_fifofifo_data04(\glogic:u0|register_fifo:fifo_data[0][4]~q ),
	.register_fifofifo_data05(\glogic:u0|register_fifo:fifo_data[0][5]~q ),
	.register_fifofifo_data06(\glogic:u0|register_fifo:fifo_data[0][6]~q ),
	.register_fifofifo_data07(\glogic:u0|register_fifo:fifo_data[0][7]~q ),
	.register_fifofifo_data08(\glogic:u0|register_fifo:fifo_data[0][8]~q ),
	.register_fifofifo_data09(\glogic:u0|register_fifo:fifo_data[0][9]~q ),
	.register_fifofifo_data010(\glogic:u0|register_fifo:fifo_data[0][10]~q ),
	.register_fifofifo_data011(\glogic:u0|register_fifo:fifo_data[0][11]~q ),
	.register_fifofifo_data012(\glogic:u0|register_fifo:fifo_data[0][12]~q ),
	.register_fifofifo_data013(\glogic:u0|register_fifo:fifo_data[0][13]~q ),
	.register_fifofifo_data014(\glogic:u0|register_fifo:fifo_data[0][14]~q ),
	.register_fifofifo_data015(\glogic:u0|register_fifo:fifo_data[0][15]~q ),
	.register_fifofifo_data016(\glogic:u0|register_fifo:fifo_data[0][16]~q ),
	.clk(clk),
	.reset(reset_n));

dffeas \dout[0] (
	.clk(clk),
	.d(\dout[0]~17_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena_diff_s_3),
	.q(dout_0),
	.prn(vcc));
defparam \dout[0] .is_wysiwyg = "true";
defparam \dout[0] .power_up = "low";

dffeas \dout[1] (
	.clk(clk),
	.d(\dout[1]~19_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena_diff_s_3),
	.q(dout_1),
	.prn(vcc));
defparam \dout[1] .is_wysiwyg = "true";
defparam \dout[1] .power_up = "low";

dffeas \dout[2] (
	.clk(clk),
	.d(\dout[2]~21_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena_diff_s_3),
	.q(dout_2),
	.prn(vcc));
defparam \dout[2] .is_wysiwyg = "true";
defparam \dout[2] .power_up = "low";

dffeas \dout[3] (
	.clk(clk),
	.d(\dout[3]~23_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena_diff_s_3),
	.q(dout_3),
	.prn(vcc));
defparam \dout[3] .is_wysiwyg = "true";
defparam \dout[3] .power_up = "low";

dffeas \dout[4] (
	.clk(clk),
	.d(\dout[4]~25_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena_diff_s_3),
	.q(dout_4),
	.prn(vcc));
defparam \dout[4] .is_wysiwyg = "true";
defparam \dout[4] .power_up = "low";

dffeas \dout[5] (
	.clk(clk),
	.d(\dout[5]~27_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena_diff_s_3),
	.q(dout_5),
	.prn(vcc));
defparam \dout[5] .is_wysiwyg = "true";
defparam \dout[5] .power_up = "low";

dffeas \dout[6] (
	.clk(clk),
	.d(\dout[6]~29_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena_diff_s_3),
	.q(dout_6),
	.prn(vcc));
defparam \dout[6] .is_wysiwyg = "true";
defparam \dout[6] .power_up = "low";

dffeas \dout[7] (
	.clk(clk),
	.d(\dout[7]~31_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena_diff_s_3),
	.q(dout_7),
	.prn(vcc));
defparam \dout[7] .is_wysiwyg = "true";
defparam \dout[7] .power_up = "low";

dffeas \dout[8] (
	.clk(clk),
	.d(\dout[8]~33_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena_diff_s_3),
	.q(dout_8),
	.prn(vcc));
defparam \dout[8] .is_wysiwyg = "true";
defparam \dout[8] .power_up = "low";

dffeas \dout[9] (
	.clk(clk),
	.d(\dout[9]~35_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena_diff_s_3),
	.q(dout_9),
	.prn(vcc));
defparam \dout[9] .is_wysiwyg = "true";
defparam \dout[9] .power_up = "low";

dffeas \dout[10] (
	.clk(clk),
	.d(\dout[10]~37_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena_diff_s_3),
	.q(dout_10),
	.prn(vcc));
defparam \dout[10] .is_wysiwyg = "true";
defparam \dout[10] .power_up = "low";

dffeas \dout[11] (
	.clk(clk),
	.d(\dout[11]~39_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena_diff_s_3),
	.q(dout_11),
	.prn(vcc));
defparam \dout[11] .is_wysiwyg = "true";
defparam \dout[11] .power_up = "low";

dffeas \dout[12] (
	.clk(clk),
	.d(\dout[12]~41_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena_diff_s_3),
	.q(dout_12),
	.prn(vcc));
defparam \dout[12] .is_wysiwyg = "true";
defparam \dout[12] .power_up = "low";

dffeas \dout[13] (
	.clk(clk),
	.d(\dout[13]~43_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena_diff_s_3),
	.q(dout_13),
	.prn(vcc));
defparam \dout[13] .is_wysiwyg = "true";
defparam \dout[13] .power_up = "low";

dffeas \dout[14] (
	.clk(clk),
	.d(\dout[14]~45_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena_diff_s_3),
	.q(dout_14),
	.prn(vcc));
defparam \dout[14] .is_wysiwyg = "true";
defparam \dout[14] .power_up = "low";

dffeas \dout[15] (
	.clk(clk),
	.d(\dout[15]~47_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena_diff_s_3),
	.q(dout_15),
	.prn(vcc));
defparam \dout[15] .is_wysiwyg = "true";
defparam \dout[15] .power_up = "low";

dffeas \dout[16] (
	.clk(clk),
	.d(\dout[16]~49_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena_diff_s_3),
	.q(dout_16),
	.prn(vcc));
defparam \dout[16] .is_wysiwyg = "true";
defparam \dout[16] .power_up = "low";

cycloneive_lcell_comb \dout[0]~17 (
	.dataa(\glogic:u0|register_fifo:fifo_data[0][0]~q ),
	.datab(dout_01),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(\dout[0]~17_combout ),
	.cout(\dout[0]~18 ));
defparam \dout[0]~17 .lut_mask = 16'h66DD;
defparam \dout[0]~17 .sum_lutc_input = "datac";

cycloneive_lcell_comb \dout[1]~19 (
	.dataa(\glogic:u0|register_fifo:fifo_data[0][1]~q ),
	.datab(dout_17),
	.datac(gnd),
	.datad(vcc),
	.cin(\dout[0]~18 ),
	.combout(\dout[1]~19_combout ),
	.cout(\dout[1]~20 ));
defparam \dout[1]~19 .lut_mask = 16'h96BF;
defparam \dout[1]~19 .sum_lutc_input = "cin";

cycloneive_lcell_comb \dout[2]~21 (
	.dataa(\glogic:u0|register_fifo:fifo_data[0][2]~q ),
	.datab(dout_21),
	.datac(gnd),
	.datad(vcc),
	.cin(\dout[1]~20 ),
	.combout(\dout[2]~21_combout ),
	.cout(\dout[2]~22 ));
defparam \dout[2]~21 .lut_mask = 16'h96DF;
defparam \dout[2]~21 .sum_lutc_input = "cin";

cycloneive_lcell_comb \dout[3]~23 (
	.dataa(\glogic:u0|register_fifo:fifo_data[0][3]~q ),
	.datab(dout_31),
	.datac(gnd),
	.datad(vcc),
	.cin(\dout[2]~22 ),
	.combout(\dout[3]~23_combout ),
	.cout(\dout[3]~24 ));
defparam \dout[3]~23 .lut_mask = 16'h96BF;
defparam \dout[3]~23 .sum_lutc_input = "cin";

cycloneive_lcell_comb \dout[4]~25 (
	.dataa(\glogic:u0|register_fifo:fifo_data[0][4]~q ),
	.datab(dout_41),
	.datac(gnd),
	.datad(vcc),
	.cin(\dout[3]~24 ),
	.combout(\dout[4]~25_combout ),
	.cout(\dout[4]~26 ));
defparam \dout[4]~25 .lut_mask = 16'h96DF;
defparam \dout[4]~25 .sum_lutc_input = "cin";

cycloneive_lcell_comb \dout[5]~27 (
	.dataa(\glogic:u0|register_fifo:fifo_data[0][5]~q ),
	.datab(dout_51),
	.datac(gnd),
	.datad(vcc),
	.cin(\dout[4]~26 ),
	.combout(\dout[5]~27_combout ),
	.cout(\dout[5]~28 ));
defparam \dout[5]~27 .lut_mask = 16'h96BF;
defparam \dout[5]~27 .sum_lutc_input = "cin";

cycloneive_lcell_comb \dout[6]~29 (
	.dataa(\glogic:u0|register_fifo:fifo_data[0][6]~q ),
	.datab(dout_61),
	.datac(gnd),
	.datad(vcc),
	.cin(\dout[5]~28 ),
	.combout(\dout[6]~29_combout ),
	.cout(\dout[6]~30 ));
defparam \dout[6]~29 .lut_mask = 16'h96DF;
defparam \dout[6]~29 .sum_lutc_input = "cin";

cycloneive_lcell_comb \dout[7]~31 (
	.dataa(\glogic:u0|register_fifo:fifo_data[0][7]~q ),
	.datab(dout_71),
	.datac(gnd),
	.datad(vcc),
	.cin(\dout[6]~30 ),
	.combout(\dout[7]~31_combout ),
	.cout(\dout[7]~32 ));
defparam \dout[7]~31 .lut_mask = 16'h96BF;
defparam \dout[7]~31 .sum_lutc_input = "cin";

cycloneive_lcell_comb \dout[8]~33 (
	.dataa(\glogic:u0|register_fifo:fifo_data[0][8]~q ),
	.datab(dout_81),
	.datac(gnd),
	.datad(vcc),
	.cin(\dout[7]~32 ),
	.combout(\dout[8]~33_combout ),
	.cout(\dout[8]~34 ));
defparam \dout[8]~33 .lut_mask = 16'h96DF;
defparam \dout[8]~33 .sum_lutc_input = "cin";

cycloneive_lcell_comb \dout[9]~35 (
	.dataa(\glogic:u0|register_fifo:fifo_data[0][9]~q ),
	.datab(dout_91),
	.datac(gnd),
	.datad(vcc),
	.cin(\dout[8]~34 ),
	.combout(\dout[9]~35_combout ),
	.cout(\dout[9]~36 ));
defparam \dout[9]~35 .lut_mask = 16'h96BF;
defparam \dout[9]~35 .sum_lutc_input = "cin";

cycloneive_lcell_comb \dout[10]~37 (
	.dataa(\glogic:u0|register_fifo:fifo_data[0][10]~q ),
	.datab(dout_101),
	.datac(gnd),
	.datad(vcc),
	.cin(\dout[9]~36 ),
	.combout(\dout[10]~37_combout ),
	.cout(\dout[10]~38 ));
defparam \dout[10]~37 .lut_mask = 16'h96DF;
defparam \dout[10]~37 .sum_lutc_input = "cin";

cycloneive_lcell_comb \dout[11]~39 (
	.dataa(\glogic:u0|register_fifo:fifo_data[0][11]~q ),
	.datab(dout_111),
	.datac(gnd),
	.datad(vcc),
	.cin(\dout[10]~38 ),
	.combout(\dout[11]~39_combout ),
	.cout(\dout[11]~40 ));
defparam \dout[11]~39 .lut_mask = 16'h96BF;
defparam \dout[11]~39 .sum_lutc_input = "cin";

cycloneive_lcell_comb \dout[12]~41 (
	.dataa(\glogic:u0|register_fifo:fifo_data[0][12]~q ),
	.datab(dout_121),
	.datac(gnd),
	.datad(vcc),
	.cin(\dout[11]~40 ),
	.combout(\dout[12]~41_combout ),
	.cout(\dout[12]~42 ));
defparam \dout[12]~41 .lut_mask = 16'h96DF;
defparam \dout[12]~41 .sum_lutc_input = "cin";

cycloneive_lcell_comb \dout[13]~43 (
	.dataa(\glogic:u0|register_fifo:fifo_data[0][13]~q ),
	.datab(dout_131),
	.datac(gnd),
	.datad(vcc),
	.cin(\dout[12]~42 ),
	.combout(\dout[13]~43_combout ),
	.cout(\dout[13]~44 ));
defparam \dout[13]~43 .lut_mask = 16'h96BF;
defparam \dout[13]~43 .sum_lutc_input = "cin";

cycloneive_lcell_comb \dout[14]~45 (
	.dataa(\glogic:u0|register_fifo:fifo_data[0][14]~q ),
	.datab(dout_141),
	.datac(gnd),
	.datad(vcc),
	.cin(\dout[13]~44 ),
	.combout(\dout[14]~45_combout ),
	.cout(\dout[14]~46 ));
defparam \dout[14]~45 .lut_mask = 16'h96DF;
defparam \dout[14]~45 .sum_lutc_input = "cin";

cycloneive_lcell_comb \dout[15]~47 (
	.dataa(\glogic:u0|register_fifo:fifo_data[0][15]~q ),
	.datab(dout_151),
	.datac(gnd),
	.datad(vcc),
	.cin(\dout[14]~46 ),
	.combout(\dout[15]~47_combout ),
	.cout(\dout[15]~48 ));
defparam \dout[15]~47 .lut_mask = 16'h96BF;
defparam \dout[15]~47 .sum_lutc_input = "cin";

cycloneive_lcell_comb \dout[16]~49 (
	.dataa(\glogic:u0|register_fifo:fifo_data[0][16]~q ),
	.datab(dout_161),
	.datac(gnd),
	.datad(gnd),
	.cin(\dout[15]~48 ),
	.combout(\dout[16]~49_combout ),
	.cout());
defparam \dout[16]~49 .lut_mask = 16'h9696;
defparam \dout[16]~49 .sum_lutc_input = "cin";

endmodule

module CicFilter_auk_dspip_delay_cic_121_2 (
	datain,
	register_fifofifo_data00,
	enable,
	register_fifofifo_data01,
	register_fifofifo_data02,
	register_fifofifo_data03,
	register_fifofifo_data04,
	register_fifofifo_data05,
	register_fifofifo_data06,
	register_fifofifo_data07,
	register_fifofifo_data08,
	register_fifofifo_data09,
	register_fifofifo_data010,
	register_fifofifo_data011,
	register_fifofifo_data012,
	register_fifofifo_data013,
	register_fifofifo_data014,
	register_fifofifo_data015,
	register_fifofifo_data016,
	clk,
	reset)/* synthesis synthesis_greybox=1 */;
input 	[16:0] datain;
output 	register_fifofifo_data00;
input 	enable;
output 	register_fifofifo_data01;
output 	register_fifofifo_data02;
output 	register_fifofifo_data03;
output 	register_fifofifo_data04;
output 	register_fifofifo_data05;
output 	register_fifofifo_data06;
output 	register_fifofifo_data07;
output 	register_fifofifo_data08;
output 	register_fifofifo_data09;
output 	register_fifofifo_data010;
output 	register_fifofifo_data011;
output 	register_fifofifo_data012;
output 	register_fifofifo_data013;
output 	register_fifofifo_data014;
output 	register_fifofifo_data015;
output 	register_fifofifo_data016;
input 	clk;
input 	reset;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



dffeas \register_fifo:fifo_data[0][0] (
	.clk(clk),
	.d(datain[0]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data00),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][0] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][0] .power_up = "low";

dffeas \register_fifo:fifo_data[0][1] (
	.clk(clk),
	.d(datain[1]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data01),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][1] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][1] .power_up = "low";

dffeas \register_fifo:fifo_data[0][2] (
	.clk(clk),
	.d(datain[2]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data02),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][2] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][2] .power_up = "low";

dffeas \register_fifo:fifo_data[0][3] (
	.clk(clk),
	.d(datain[3]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data03),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][3] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][3] .power_up = "low";

dffeas \register_fifo:fifo_data[0][4] (
	.clk(clk),
	.d(datain[4]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data04),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][4] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][4] .power_up = "low";

dffeas \register_fifo:fifo_data[0][5] (
	.clk(clk),
	.d(datain[5]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data05),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][5] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][5] .power_up = "low";

dffeas \register_fifo:fifo_data[0][6] (
	.clk(clk),
	.d(datain[6]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data06),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][6] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][6] .power_up = "low";

dffeas \register_fifo:fifo_data[0][7] (
	.clk(clk),
	.d(datain[7]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data07),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][7] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][7] .power_up = "low";

dffeas \register_fifo:fifo_data[0][8] (
	.clk(clk),
	.d(datain[8]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data08),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][8] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][8] .power_up = "low";

dffeas \register_fifo:fifo_data[0][9] (
	.clk(clk),
	.d(datain[9]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data09),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][9] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][9] .power_up = "low";

dffeas \register_fifo:fifo_data[0][10] (
	.clk(clk),
	.d(datain[10]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data010),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][10] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][10] .power_up = "low";

dffeas \register_fifo:fifo_data[0][11] (
	.clk(clk),
	.d(datain[11]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data011),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][11] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][11] .power_up = "low";

dffeas \register_fifo:fifo_data[0][12] (
	.clk(clk),
	.d(datain[12]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data012),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][12] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][12] .power_up = "low";

dffeas \register_fifo:fifo_data[0][13] (
	.clk(clk),
	.d(datain[13]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data013),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][13] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][13] .power_up = "low";

dffeas \register_fifo:fifo_data[0][14] (
	.clk(clk),
	.d(datain[14]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data014),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][14] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][14] .power_up = "low";

dffeas \register_fifo:fifo_data[0][15] (
	.clk(clk),
	.d(datain[15]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data015),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][15] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][15] .power_up = "low";

dffeas \register_fifo:fifo_data[0][16] (
	.clk(clk),
	.d(datain[16]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data016),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][16] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][16] .power_up = "low";

endmodule

module CicFilter_auk_dspip_downsample_cic_121 (
	rate_cnt_proc,
	counter_fs_2,
	counter_fs_1,
	counter_fs_0,
	clk,
	reset)/* synthesis synthesis_greybox=1 */;
input 	rate_cnt_proc;
output 	counter_fs_2;
output 	counter_fs_1;
output 	counter_fs_0;
input 	clk;
input 	reset;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \counter_fs~0_combout ;
wire \counter_fs[1]~1_combout ;
wire \counter_fs~2_combout ;


dffeas \counter_fs[2] (
	.clk(clk),
	.d(\counter_fs~0_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(rate_cnt_proc),
	.q(counter_fs_2),
	.prn(vcc));
defparam \counter_fs[2] .is_wysiwyg = "true";
defparam \counter_fs[2] .power_up = "low";

dffeas \counter_fs[1] (
	.clk(clk),
	.d(\counter_fs[1]~1_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(counter_fs_1),
	.prn(vcc));
defparam \counter_fs[1] .is_wysiwyg = "true";
defparam \counter_fs[1] .power_up = "low";

dffeas \counter_fs[0] (
	.clk(clk),
	.d(\counter_fs~2_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(rate_cnt_proc),
	.q(counter_fs_0),
	.prn(vcc));
defparam \counter_fs[0] .is_wysiwyg = "true";
defparam \counter_fs[0] .power_up = "low";

cycloneive_lcell_comb \counter_fs~0 (
	.dataa(gnd),
	.datab(counter_fs_2),
	.datac(counter_fs_1),
	.datad(counter_fs_0),
	.cin(gnd),
	.combout(\counter_fs~0_combout ),
	.cout());
defparam \counter_fs~0 .lut_mask = 16'hC33C;
defparam \counter_fs~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \counter_fs[1]~1 (
	.dataa(gnd),
	.datab(counter_fs_1),
	.datac(rate_cnt_proc),
	.datad(counter_fs_0),
	.cin(gnd),
	.combout(\counter_fs[1]~1_combout ),
	.cout());
defparam \counter_fs[1]~1 .lut_mask = 16'hC33C;
defparam \counter_fs[1]~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \counter_fs~2 (
	.dataa(counter_fs_0),
	.datab(counter_fs_2),
	.datac(gnd),
	.datad(counter_fs_1),
	.cin(gnd),
	.combout(\counter_fs~2_combout ),
	.cout());
defparam \counter_fs~2 .lut_mask = 16'hFF77;
defparam \counter_fs~2 .sum_lutc_input = "datac";

endmodule

module CicFilter_auk_dspip_integrator_cic_121 (
	register_fifofifo_data00,
	register_fifofifo_data01,
	register_fifofifo_data02,
	register_fifofifo_data03,
	register_fifofifo_data04,
	register_fifofifo_data05,
	register_fifofifo_data06,
	register_fifofifo_data07,
	register_fifofifo_data08,
	register_fifofifo_data09,
	register_fifofifo_data010,
	register_fifofifo_data011,
	register_fifofifo_data012,
	register_fifofifo_data013,
	register_fifofifo_data014,
	register_fifofifo_data015,
	register_fifofifo_data016,
	q_b_0,
	q_b_1,
	q_b_2,
	q_b_3,
	q_b_4,
	q_b_5,
	q_b_6,
	q_b_7,
	q_b_8,
	q_b_9,
	stall,
	clk,
	reset_n)/* synthesis synthesis_greybox=1 */;
output 	register_fifofifo_data00;
output 	register_fifofifo_data01;
output 	register_fifofifo_data02;
output 	register_fifofifo_data03;
output 	register_fifofifo_data04;
output 	register_fifofifo_data05;
output 	register_fifofifo_data06;
output 	register_fifofifo_data07;
output 	register_fifofifo_data08;
output 	register_fifofifo_data09;
output 	register_fifofifo_data010;
output 	register_fifofifo_data011;
output 	register_fifofifo_data012;
output 	register_fifofifo_data013;
output 	register_fifofifo_data014;
output 	register_fifofifo_data015;
output 	register_fifofifo_data016;
input 	q_b_0;
input 	q_b_1;
input 	q_b_2;
input 	q_b_3;
input 	q_b_4;
input 	q_b_5;
input 	q_b_6;
input 	q_b_7;
input 	q_b_8;
input 	q_b_9;
input 	stall;
input 	clk;
input 	reset_n;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



CicFilter_auk_dspip_delay_cic_121_3 \glogic:integrator_pipeline_0_generate:u1 (
	.register_fifofifo_data00(register_fifofifo_data00),
	.register_fifofifo_data01(register_fifofifo_data01),
	.register_fifofifo_data02(register_fifofifo_data02),
	.register_fifofifo_data03(register_fifofifo_data03),
	.register_fifofifo_data04(register_fifofifo_data04),
	.register_fifofifo_data05(register_fifofifo_data05),
	.register_fifofifo_data06(register_fifofifo_data06),
	.register_fifofifo_data07(register_fifofifo_data07),
	.register_fifofifo_data08(register_fifofifo_data08),
	.register_fifofifo_data09(register_fifofifo_data09),
	.register_fifofifo_data010(register_fifofifo_data010),
	.register_fifofifo_data011(register_fifofifo_data011),
	.register_fifofifo_data012(register_fifofifo_data012),
	.register_fifofifo_data013(register_fifofifo_data013),
	.register_fifofifo_data014(register_fifofifo_data014),
	.register_fifofifo_data015(register_fifofifo_data015),
	.register_fifofifo_data016(register_fifofifo_data016),
	.q_b_0(q_b_0),
	.q_b_1(q_b_1),
	.q_b_2(q_b_2),
	.q_b_3(q_b_3),
	.q_b_4(q_b_4),
	.q_b_5(q_b_5),
	.q_b_6(q_b_6),
	.q_b_7(q_b_7),
	.q_b_8(q_b_8),
	.q_b_9(q_b_9),
	.enable(stall),
	.clk(clk),
	.reset(reset_n));

endmodule

module CicFilter_auk_dspip_delay_cic_121_3 (
	register_fifofifo_data00,
	register_fifofifo_data01,
	register_fifofifo_data02,
	register_fifofifo_data03,
	register_fifofifo_data04,
	register_fifofifo_data05,
	register_fifofifo_data06,
	register_fifofifo_data07,
	register_fifofifo_data08,
	register_fifofifo_data09,
	register_fifofifo_data010,
	register_fifofifo_data011,
	register_fifofifo_data012,
	register_fifofifo_data013,
	register_fifofifo_data014,
	register_fifofifo_data015,
	register_fifofifo_data016,
	q_b_0,
	q_b_1,
	q_b_2,
	q_b_3,
	q_b_4,
	q_b_5,
	q_b_6,
	q_b_7,
	q_b_8,
	q_b_9,
	enable,
	clk,
	reset)/* synthesis synthesis_greybox=1 */;
output 	register_fifofifo_data00;
output 	register_fifofifo_data01;
output 	register_fifofifo_data02;
output 	register_fifofifo_data03;
output 	register_fifofifo_data04;
output 	register_fifofifo_data05;
output 	register_fifofifo_data06;
output 	register_fifofifo_data07;
output 	register_fifofifo_data08;
output 	register_fifofifo_data09;
output 	register_fifofifo_data010;
output 	register_fifofifo_data011;
output 	register_fifofifo_data012;
output 	register_fifofifo_data013;
output 	register_fifofifo_data014;
output 	register_fifofifo_data015;
output 	register_fifofifo_data016;
input 	q_b_0;
input 	q_b_1;
input 	q_b_2;
input 	q_b_3;
input 	q_b_4;
input 	q_b_5;
input 	q_b_6;
input 	q_b_7;
input 	q_b_8;
input 	q_b_9;
input 	enable;
input 	clk;
input 	reset;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \register_fifo:fifo_data[0][0]~1_combout ;
wire \register_fifo:fifo_data[0][0]~2 ;
wire \register_fifo:fifo_data[0][1]~1_combout ;
wire \register_fifo:fifo_data[0][1]~2 ;
wire \register_fifo:fifo_data[0][2]~1_combout ;
wire \register_fifo:fifo_data[0][2]~2 ;
wire \register_fifo:fifo_data[0][3]~1_combout ;
wire \register_fifo:fifo_data[0][3]~2 ;
wire \register_fifo:fifo_data[0][4]~1_combout ;
wire \register_fifo:fifo_data[0][4]~2 ;
wire \register_fifo:fifo_data[0][5]~1_combout ;
wire \register_fifo:fifo_data[0][5]~2 ;
wire \register_fifo:fifo_data[0][6]~1_combout ;
wire \register_fifo:fifo_data[0][6]~2 ;
wire \register_fifo:fifo_data[0][7]~1_combout ;
wire \register_fifo:fifo_data[0][7]~2 ;
wire \register_fifo:fifo_data[0][8]~1_combout ;
wire \register_fifo:fifo_data[0][8]~2 ;
wire \register_fifo:fifo_data[0][9]~1_combout ;
wire \register_fifo:fifo_data[0][9]~2 ;
wire \register_fifo:fifo_data[0][10]~1_combout ;
wire \register_fifo:fifo_data[0][10]~2 ;
wire \register_fifo:fifo_data[0][11]~1_combout ;
wire \register_fifo:fifo_data[0][11]~2 ;
wire \register_fifo:fifo_data[0][12]~1_combout ;
wire \register_fifo:fifo_data[0][12]~2 ;
wire \register_fifo:fifo_data[0][13]~1_combout ;
wire \register_fifo:fifo_data[0][13]~2 ;
wire \register_fifo:fifo_data[0][14]~1_combout ;
wire \register_fifo:fifo_data[0][14]~2 ;
wire \register_fifo:fifo_data[0][15]~1_combout ;
wire \register_fifo:fifo_data[0][15]~2 ;
wire \register_fifo:fifo_data[0][16]~1_combout ;


dffeas \register_fifo:fifo_data[0][0] (
	.clk(clk),
	.d(\register_fifo:fifo_data[0][0]~1_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data00),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][0] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][0] .power_up = "low";

dffeas \register_fifo:fifo_data[0][1] (
	.clk(clk),
	.d(\register_fifo:fifo_data[0][1]~1_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data01),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][1] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][1] .power_up = "low";

dffeas \register_fifo:fifo_data[0][2] (
	.clk(clk),
	.d(\register_fifo:fifo_data[0][2]~1_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data02),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][2] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][2] .power_up = "low";

dffeas \register_fifo:fifo_data[0][3] (
	.clk(clk),
	.d(\register_fifo:fifo_data[0][3]~1_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data03),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][3] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][3] .power_up = "low";

dffeas \register_fifo:fifo_data[0][4] (
	.clk(clk),
	.d(\register_fifo:fifo_data[0][4]~1_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data04),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][4] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][4] .power_up = "low";

dffeas \register_fifo:fifo_data[0][5] (
	.clk(clk),
	.d(\register_fifo:fifo_data[0][5]~1_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data05),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][5] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][5] .power_up = "low";

dffeas \register_fifo:fifo_data[0][6] (
	.clk(clk),
	.d(\register_fifo:fifo_data[0][6]~1_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data06),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][6] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][6] .power_up = "low";

dffeas \register_fifo:fifo_data[0][7] (
	.clk(clk),
	.d(\register_fifo:fifo_data[0][7]~1_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data07),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][7] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][7] .power_up = "low";

dffeas \register_fifo:fifo_data[0][8] (
	.clk(clk),
	.d(\register_fifo:fifo_data[0][8]~1_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data08),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][8] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][8] .power_up = "low";

dffeas \register_fifo:fifo_data[0][9] (
	.clk(clk),
	.d(\register_fifo:fifo_data[0][9]~1_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data09),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][9] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][9] .power_up = "low";

dffeas \register_fifo:fifo_data[0][10] (
	.clk(clk),
	.d(\register_fifo:fifo_data[0][10]~1_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data010),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][10] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][10] .power_up = "low";

dffeas \register_fifo:fifo_data[0][11] (
	.clk(clk),
	.d(\register_fifo:fifo_data[0][11]~1_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data011),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][11] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][11] .power_up = "low";

dffeas \register_fifo:fifo_data[0][12] (
	.clk(clk),
	.d(\register_fifo:fifo_data[0][12]~1_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data012),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][12] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][12] .power_up = "low";

dffeas \register_fifo:fifo_data[0][13] (
	.clk(clk),
	.d(\register_fifo:fifo_data[0][13]~1_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data013),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][13] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][13] .power_up = "low";

dffeas \register_fifo:fifo_data[0][14] (
	.clk(clk),
	.d(\register_fifo:fifo_data[0][14]~1_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data014),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][14] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][14] .power_up = "low";

dffeas \register_fifo:fifo_data[0][15] (
	.clk(clk),
	.d(\register_fifo:fifo_data[0][15]~1_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data015),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][15] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][15] .power_up = "low";

dffeas \register_fifo:fifo_data[0][16] (
	.clk(clk),
	.d(\register_fifo:fifo_data[0][16]~1_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data016),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][16] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][16] .power_up = "low";

cycloneive_lcell_comb \register_fifo:fifo_data[0][0]~1 (
	.dataa(register_fifofifo_data00),
	.datab(q_b_0),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(\register_fifo:fifo_data[0][0]~1_combout ),
	.cout(\register_fifo:fifo_data[0][0]~2 ));
defparam \register_fifo:fifo_data[0][0]~1 .lut_mask = 16'h66EE;
defparam \register_fifo:fifo_data[0][0]~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \register_fifo:fifo_data[0][1]~1 (
	.dataa(register_fifofifo_data01),
	.datab(q_b_1),
	.datac(gnd),
	.datad(vcc),
	.cin(\register_fifo:fifo_data[0][0]~2 ),
	.combout(\register_fifo:fifo_data[0][1]~1_combout ),
	.cout(\register_fifo:fifo_data[0][1]~2 ));
defparam \register_fifo:fifo_data[0][1]~1 .lut_mask = 16'h967F;
defparam \register_fifo:fifo_data[0][1]~1 .sum_lutc_input = "cin";

cycloneive_lcell_comb \register_fifo:fifo_data[0][2]~1 (
	.dataa(register_fifofifo_data02),
	.datab(q_b_2),
	.datac(gnd),
	.datad(vcc),
	.cin(\register_fifo:fifo_data[0][1]~2 ),
	.combout(\register_fifo:fifo_data[0][2]~1_combout ),
	.cout(\register_fifo:fifo_data[0][2]~2 ));
defparam \register_fifo:fifo_data[0][2]~1 .lut_mask = 16'h96EF;
defparam \register_fifo:fifo_data[0][2]~1 .sum_lutc_input = "cin";

cycloneive_lcell_comb \register_fifo:fifo_data[0][3]~1 (
	.dataa(register_fifofifo_data03),
	.datab(q_b_3),
	.datac(gnd),
	.datad(vcc),
	.cin(\register_fifo:fifo_data[0][2]~2 ),
	.combout(\register_fifo:fifo_data[0][3]~1_combout ),
	.cout(\register_fifo:fifo_data[0][3]~2 ));
defparam \register_fifo:fifo_data[0][3]~1 .lut_mask = 16'h967F;
defparam \register_fifo:fifo_data[0][3]~1 .sum_lutc_input = "cin";

cycloneive_lcell_comb \register_fifo:fifo_data[0][4]~1 (
	.dataa(register_fifofifo_data04),
	.datab(q_b_4),
	.datac(gnd),
	.datad(vcc),
	.cin(\register_fifo:fifo_data[0][3]~2 ),
	.combout(\register_fifo:fifo_data[0][4]~1_combout ),
	.cout(\register_fifo:fifo_data[0][4]~2 ));
defparam \register_fifo:fifo_data[0][4]~1 .lut_mask = 16'h96EF;
defparam \register_fifo:fifo_data[0][4]~1 .sum_lutc_input = "cin";

cycloneive_lcell_comb \register_fifo:fifo_data[0][5]~1 (
	.dataa(register_fifofifo_data05),
	.datab(q_b_5),
	.datac(gnd),
	.datad(vcc),
	.cin(\register_fifo:fifo_data[0][4]~2 ),
	.combout(\register_fifo:fifo_data[0][5]~1_combout ),
	.cout(\register_fifo:fifo_data[0][5]~2 ));
defparam \register_fifo:fifo_data[0][5]~1 .lut_mask = 16'h967F;
defparam \register_fifo:fifo_data[0][5]~1 .sum_lutc_input = "cin";

cycloneive_lcell_comb \register_fifo:fifo_data[0][6]~1 (
	.dataa(register_fifofifo_data06),
	.datab(q_b_6),
	.datac(gnd),
	.datad(vcc),
	.cin(\register_fifo:fifo_data[0][5]~2 ),
	.combout(\register_fifo:fifo_data[0][6]~1_combout ),
	.cout(\register_fifo:fifo_data[0][6]~2 ));
defparam \register_fifo:fifo_data[0][6]~1 .lut_mask = 16'h96EF;
defparam \register_fifo:fifo_data[0][6]~1 .sum_lutc_input = "cin";

cycloneive_lcell_comb \register_fifo:fifo_data[0][7]~1 (
	.dataa(register_fifofifo_data07),
	.datab(q_b_7),
	.datac(gnd),
	.datad(vcc),
	.cin(\register_fifo:fifo_data[0][6]~2 ),
	.combout(\register_fifo:fifo_data[0][7]~1_combout ),
	.cout(\register_fifo:fifo_data[0][7]~2 ));
defparam \register_fifo:fifo_data[0][7]~1 .lut_mask = 16'h967F;
defparam \register_fifo:fifo_data[0][7]~1 .sum_lutc_input = "cin";

cycloneive_lcell_comb \register_fifo:fifo_data[0][8]~1 (
	.dataa(register_fifofifo_data08),
	.datab(q_b_8),
	.datac(gnd),
	.datad(vcc),
	.cin(\register_fifo:fifo_data[0][7]~2 ),
	.combout(\register_fifo:fifo_data[0][8]~1_combout ),
	.cout(\register_fifo:fifo_data[0][8]~2 ));
defparam \register_fifo:fifo_data[0][8]~1 .lut_mask = 16'h96EF;
defparam \register_fifo:fifo_data[0][8]~1 .sum_lutc_input = "cin";

cycloneive_lcell_comb \register_fifo:fifo_data[0][9]~1 (
	.dataa(register_fifofifo_data09),
	.datab(q_b_9),
	.datac(gnd),
	.datad(vcc),
	.cin(\register_fifo:fifo_data[0][8]~2 ),
	.combout(\register_fifo:fifo_data[0][9]~1_combout ),
	.cout(\register_fifo:fifo_data[0][9]~2 ));
defparam \register_fifo:fifo_data[0][9]~1 .lut_mask = 16'h967F;
defparam \register_fifo:fifo_data[0][9]~1 .sum_lutc_input = "cin";

cycloneive_lcell_comb \register_fifo:fifo_data[0][10]~1 (
	.dataa(register_fifofifo_data010),
	.datab(q_b_9),
	.datac(gnd),
	.datad(vcc),
	.cin(\register_fifo:fifo_data[0][9]~2 ),
	.combout(\register_fifo:fifo_data[0][10]~1_combout ),
	.cout(\register_fifo:fifo_data[0][10]~2 ));
defparam \register_fifo:fifo_data[0][10]~1 .lut_mask = 16'h96EF;
defparam \register_fifo:fifo_data[0][10]~1 .sum_lutc_input = "cin";

cycloneive_lcell_comb \register_fifo:fifo_data[0][11]~1 (
	.dataa(register_fifofifo_data011),
	.datab(q_b_9),
	.datac(gnd),
	.datad(vcc),
	.cin(\register_fifo:fifo_data[0][10]~2 ),
	.combout(\register_fifo:fifo_data[0][11]~1_combout ),
	.cout(\register_fifo:fifo_data[0][11]~2 ));
defparam \register_fifo:fifo_data[0][11]~1 .lut_mask = 16'h967F;
defparam \register_fifo:fifo_data[0][11]~1 .sum_lutc_input = "cin";

cycloneive_lcell_comb \register_fifo:fifo_data[0][12]~1 (
	.dataa(register_fifofifo_data012),
	.datab(q_b_9),
	.datac(gnd),
	.datad(vcc),
	.cin(\register_fifo:fifo_data[0][11]~2 ),
	.combout(\register_fifo:fifo_data[0][12]~1_combout ),
	.cout(\register_fifo:fifo_data[0][12]~2 ));
defparam \register_fifo:fifo_data[0][12]~1 .lut_mask = 16'h96EF;
defparam \register_fifo:fifo_data[0][12]~1 .sum_lutc_input = "cin";

cycloneive_lcell_comb \register_fifo:fifo_data[0][13]~1 (
	.dataa(register_fifofifo_data013),
	.datab(q_b_9),
	.datac(gnd),
	.datad(vcc),
	.cin(\register_fifo:fifo_data[0][12]~2 ),
	.combout(\register_fifo:fifo_data[0][13]~1_combout ),
	.cout(\register_fifo:fifo_data[0][13]~2 ));
defparam \register_fifo:fifo_data[0][13]~1 .lut_mask = 16'h967F;
defparam \register_fifo:fifo_data[0][13]~1 .sum_lutc_input = "cin";

cycloneive_lcell_comb \register_fifo:fifo_data[0][14]~1 (
	.dataa(register_fifofifo_data014),
	.datab(q_b_9),
	.datac(gnd),
	.datad(vcc),
	.cin(\register_fifo:fifo_data[0][13]~2 ),
	.combout(\register_fifo:fifo_data[0][14]~1_combout ),
	.cout(\register_fifo:fifo_data[0][14]~2 ));
defparam \register_fifo:fifo_data[0][14]~1 .lut_mask = 16'h96EF;
defparam \register_fifo:fifo_data[0][14]~1 .sum_lutc_input = "cin";

cycloneive_lcell_comb \register_fifo:fifo_data[0][15]~1 (
	.dataa(register_fifofifo_data015),
	.datab(q_b_9),
	.datac(gnd),
	.datad(vcc),
	.cin(\register_fifo:fifo_data[0][14]~2 ),
	.combout(\register_fifo:fifo_data[0][15]~1_combout ),
	.cout(\register_fifo:fifo_data[0][15]~2 ));
defparam \register_fifo:fifo_data[0][15]~1 .lut_mask = 16'h967F;
defparam \register_fifo:fifo_data[0][15]~1 .sum_lutc_input = "cin";

cycloneive_lcell_comb \register_fifo:fifo_data[0][16]~1 (
	.dataa(register_fifofifo_data016),
	.datab(q_b_9),
	.datac(gnd),
	.datad(gnd),
	.cin(\register_fifo:fifo_data[0][15]~2 ),
	.combout(\register_fifo:fifo_data[0][16]~1_combout ),
	.cout());
defparam \register_fifo:fifo_data[0][16]~1 .lut_mask = 16'h9696;
defparam \register_fifo:fifo_data[0][16]~1 .sum_lutc_input = "cin";

endmodule

module CicFilter_auk_dspip_integrator_cic_121_1 (
	register_fifofifo_data00,
	register_fifofifo_data01,
	register_fifofifo_data02,
	register_fifofifo_data03,
	register_fifofifo_data04,
	register_fifofifo_data05,
	register_fifofifo_data06,
	register_fifofifo_data07,
	register_fifofifo_data08,
	register_fifofifo_data09,
	register_fifofifo_data010,
	register_fifofifo_data011,
	register_fifofifo_data012,
	register_fifofifo_data013,
	register_fifofifo_data014,
	register_fifofifo_data015,
	register_fifofifo_data016,
	register_fifofifo_data001,
	register_fifofifo_data017,
	register_fifofifo_data021,
	register_fifofifo_data031,
	register_fifofifo_data041,
	register_fifofifo_data051,
	register_fifofifo_data061,
	register_fifofifo_data071,
	register_fifofifo_data081,
	register_fifofifo_data091,
	register_fifofifo_data0101,
	register_fifofifo_data0111,
	register_fifofifo_data0121,
	register_fifofifo_data0131,
	register_fifofifo_data0141,
	register_fifofifo_data0151,
	register_fifofifo_data0161,
	stall,
	clk,
	reset_n)/* synthesis synthesis_greybox=1 */;
output 	register_fifofifo_data00;
output 	register_fifofifo_data01;
output 	register_fifofifo_data02;
output 	register_fifofifo_data03;
output 	register_fifofifo_data04;
output 	register_fifofifo_data05;
output 	register_fifofifo_data06;
output 	register_fifofifo_data07;
output 	register_fifofifo_data08;
output 	register_fifofifo_data09;
output 	register_fifofifo_data010;
output 	register_fifofifo_data011;
output 	register_fifofifo_data012;
output 	register_fifofifo_data013;
output 	register_fifofifo_data014;
output 	register_fifofifo_data015;
output 	register_fifofifo_data016;
input 	register_fifofifo_data001;
input 	register_fifofifo_data017;
input 	register_fifofifo_data021;
input 	register_fifofifo_data031;
input 	register_fifofifo_data041;
input 	register_fifofifo_data051;
input 	register_fifofifo_data061;
input 	register_fifofifo_data071;
input 	register_fifofifo_data081;
input 	register_fifofifo_data091;
input 	register_fifofifo_data0101;
input 	register_fifofifo_data0111;
input 	register_fifofifo_data0121;
input 	register_fifofifo_data0131;
input 	register_fifofifo_data0141;
input 	register_fifofifo_data0151;
input 	register_fifofifo_data0161;
input 	stall;
input 	clk;
input 	reset_n;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



CicFilter_auk_dspip_delay_cic_121_4 \glogic:integrator_pipeline_0_generate:u1 (
	.register_fifofifo_data00(register_fifofifo_data00),
	.register_fifofifo_data01(register_fifofifo_data01),
	.register_fifofifo_data02(register_fifofifo_data02),
	.register_fifofifo_data03(register_fifofifo_data03),
	.register_fifofifo_data04(register_fifofifo_data04),
	.register_fifofifo_data05(register_fifofifo_data05),
	.register_fifofifo_data06(register_fifofifo_data06),
	.register_fifofifo_data07(register_fifofifo_data07),
	.register_fifofifo_data08(register_fifofifo_data08),
	.register_fifofifo_data09(register_fifofifo_data09),
	.register_fifofifo_data010(register_fifofifo_data010),
	.register_fifofifo_data011(register_fifofifo_data011),
	.register_fifofifo_data012(register_fifofifo_data012),
	.register_fifofifo_data013(register_fifofifo_data013),
	.register_fifofifo_data014(register_fifofifo_data014),
	.register_fifofifo_data015(register_fifofifo_data015),
	.register_fifofifo_data016(register_fifofifo_data016),
	.register_fifofifo_data001(register_fifofifo_data001),
	.register_fifofifo_data017(register_fifofifo_data017),
	.register_fifofifo_data021(register_fifofifo_data021),
	.register_fifofifo_data031(register_fifofifo_data031),
	.register_fifofifo_data041(register_fifofifo_data041),
	.register_fifofifo_data051(register_fifofifo_data051),
	.register_fifofifo_data061(register_fifofifo_data061),
	.register_fifofifo_data071(register_fifofifo_data071),
	.register_fifofifo_data081(register_fifofifo_data081),
	.register_fifofifo_data091(register_fifofifo_data091),
	.register_fifofifo_data0101(register_fifofifo_data0101),
	.register_fifofifo_data0111(register_fifofifo_data0111),
	.register_fifofifo_data0121(register_fifofifo_data0121),
	.register_fifofifo_data0131(register_fifofifo_data0131),
	.register_fifofifo_data0141(register_fifofifo_data0141),
	.register_fifofifo_data0151(register_fifofifo_data0151),
	.register_fifofifo_data0161(register_fifofifo_data0161),
	.enable(stall),
	.clk(clk),
	.reset(reset_n));

endmodule

module CicFilter_auk_dspip_delay_cic_121_4 (
	register_fifofifo_data00,
	register_fifofifo_data01,
	register_fifofifo_data02,
	register_fifofifo_data03,
	register_fifofifo_data04,
	register_fifofifo_data05,
	register_fifofifo_data06,
	register_fifofifo_data07,
	register_fifofifo_data08,
	register_fifofifo_data09,
	register_fifofifo_data010,
	register_fifofifo_data011,
	register_fifofifo_data012,
	register_fifofifo_data013,
	register_fifofifo_data014,
	register_fifofifo_data015,
	register_fifofifo_data016,
	register_fifofifo_data001,
	register_fifofifo_data017,
	register_fifofifo_data021,
	register_fifofifo_data031,
	register_fifofifo_data041,
	register_fifofifo_data051,
	register_fifofifo_data061,
	register_fifofifo_data071,
	register_fifofifo_data081,
	register_fifofifo_data091,
	register_fifofifo_data0101,
	register_fifofifo_data0111,
	register_fifofifo_data0121,
	register_fifofifo_data0131,
	register_fifofifo_data0141,
	register_fifofifo_data0151,
	register_fifofifo_data0161,
	enable,
	clk,
	reset)/* synthesis synthesis_greybox=1 */;
output 	register_fifofifo_data00;
output 	register_fifofifo_data01;
output 	register_fifofifo_data02;
output 	register_fifofifo_data03;
output 	register_fifofifo_data04;
output 	register_fifofifo_data05;
output 	register_fifofifo_data06;
output 	register_fifofifo_data07;
output 	register_fifofifo_data08;
output 	register_fifofifo_data09;
output 	register_fifofifo_data010;
output 	register_fifofifo_data011;
output 	register_fifofifo_data012;
output 	register_fifofifo_data013;
output 	register_fifofifo_data014;
output 	register_fifofifo_data015;
output 	register_fifofifo_data016;
input 	register_fifofifo_data001;
input 	register_fifofifo_data017;
input 	register_fifofifo_data021;
input 	register_fifofifo_data031;
input 	register_fifofifo_data041;
input 	register_fifofifo_data051;
input 	register_fifofifo_data061;
input 	register_fifofifo_data071;
input 	register_fifofifo_data081;
input 	register_fifofifo_data091;
input 	register_fifofifo_data0101;
input 	register_fifofifo_data0111;
input 	register_fifofifo_data0121;
input 	register_fifofifo_data0131;
input 	register_fifofifo_data0141;
input 	register_fifofifo_data0151;
input 	register_fifofifo_data0161;
input 	enable;
input 	clk;
input 	reset;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \register_fifo:fifo_data[0][0]~1_combout ;
wire \register_fifo:fifo_data[0][0]~2 ;
wire \register_fifo:fifo_data[0][1]~1_combout ;
wire \register_fifo:fifo_data[0][1]~2 ;
wire \register_fifo:fifo_data[0][2]~1_combout ;
wire \register_fifo:fifo_data[0][2]~2 ;
wire \register_fifo:fifo_data[0][3]~1_combout ;
wire \register_fifo:fifo_data[0][3]~2 ;
wire \register_fifo:fifo_data[0][4]~1_combout ;
wire \register_fifo:fifo_data[0][4]~2 ;
wire \register_fifo:fifo_data[0][5]~1_combout ;
wire \register_fifo:fifo_data[0][5]~2 ;
wire \register_fifo:fifo_data[0][6]~1_combout ;
wire \register_fifo:fifo_data[0][6]~2 ;
wire \register_fifo:fifo_data[0][7]~1_combout ;
wire \register_fifo:fifo_data[0][7]~2 ;
wire \register_fifo:fifo_data[0][8]~1_combout ;
wire \register_fifo:fifo_data[0][8]~2 ;
wire \register_fifo:fifo_data[0][9]~1_combout ;
wire \register_fifo:fifo_data[0][9]~2 ;
wire \register_fifo:fifo_data[0][10]~1_combout ;
wire \register_fifo:fifo_data[0][10]~2 ;
wire \register_fifo:fifo_data[0][11]~1_combout ;
wire \register_fifo:fifo_data[0][11]~2 ;
wire \register_fifo:fifo_data[0][12]~1_combout ;
wire \register_fifo:fifo_data[0][12]~2 ;
wire \register_fifo:fifo_data[0][13]~1_combout ;
wire \register_fifo:fifo_data[0][13]~2 ;
wire \register_fifo:fifo_data[0][14]~1_combout ;
wire \register_fifo:fifo_data[0][14]~2 ;
wire \register_fifo:fifo_data[0][15]~1_combout ;
wire \register_fifo:fifo_data[0][15]~2 ;
wire \register_fifo:fifo_data[0][16]~1_combout ;


dffeas \register_fifo:fifo_data[0][0] (
	.clk(clk),
	.d(\register_fifo:fifo_data[0][0]~1_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data00),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][0] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][0] .power_up = "low";

dffeas \register_fifo:fifo_data[0][1] (
	.clk(clk),
	.d(\register_fifo:fifo_data[0][1]~1_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data01),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][1] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][1] .power_up = "low";

dffeas \register_fifo:fifo_data[0][2] (
	.clk(clk),
	.d(\register_fifo:fifo_data[0][2]~1_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data02),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][2] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][2] .power_up = "low";

dffeas \register_fifo:fifo_data[0][3] (
	.clk(clk),
	.d(\register_fifo:fifo_data[0][3]~1_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data03),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][3] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][3] .power_up = "low";

dffeas \register_fifo:fifo_data[0][4] (
	.clk(clk),
	.d(\register_fifo:fifo_data[0][4]~1_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data04),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][4] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][4] .power_up = "low";

dffeas \register_fifo:fifo_data[0][5] (
	.clk(clk),
	.d(\register_fifo:fifo_data[0][5]~1_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data05),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][5] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][5] .power_up = "low";

dffeas \register_fifo:fifo_data[0][6] (
	.clk(clk),
	.d(\register_fifo:fifo_data[0][6]~1_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data06),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][6] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][6] .power_up = "low";

dffeas \register_fifo:fifo_data[0][7] (
	.clk(clk),
	.d(\register_fifo:fifo_data[0][7]~1_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data07),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][7] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][7] .power_up = "low";

dffeas \register_fifo:fifo_data[0][8] (
	.clk(clk),
	.d(\register_fifo:fifo_data[0][8]~1_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data08),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][8] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][8] .power_up = "low";

dffeas \register_fifo:fifo_data[0][9] (
	.clk(clk),
	.d(\register_fifo:fifo_data[0][9]~1_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data09),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][9] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][9] .power_up = "low";

dffeas \register_fifo:fifo_data[0][10] (
	.clk(clk),
	.d(\register_fifo:fifo_data[0][10]~1_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data010),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][10] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][10] .power_up = "low";

dffeas \register_fifo:fifo_data[0][11] (
	.clk(clk),
	.d(\register_fifo:fifo_data[0][11]~1_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data011),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][11] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][11] .power_up = "low";

dffeas \register_fifo:fifo_data[0][12] (
	.clk(clk),
	.d(\register_fifo:fifo_data[0][12]~1_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data012),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][12] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][12] .power_up = "low";

dffeas \register_fifo:fifo_data[0][13] (
	.clk(clk),
	.d(\register_fifo:fifo_data[0][13]~1_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data013),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][13] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][13] .power_up = "low";

dffeas \register_fifo:fifo_data[0][14] (
	.clk(clk),
	.d(\register_fifo:fifo_data[0][14]~1_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data014),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][14] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][14] .power_up = "low";

dffeas \register_fifo:fifo_data[0][15] (
	.clk(clk),
	.d(\register_fifo:fifo_data[0][15]~1_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data015),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][15] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][15] .power_up = "low";

dffeas \register_fifo:fifo_data[0][16] (
	.clk(clk),
	.d(\register_fifo:fifo_data[0][16]~1_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data016),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][16] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][16] .power_up = "low";

cycloneive_lcell_comb \register_fifo:fifo_data[0][0]~1 (
	.dataa(register_fifofifo_data00),
	.datab(register_fifofifo_data001),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(\register_fifo:fifo_data[0][0]~1_combout ),
	.cout(\register_fifo:fifo_data[0][0]~2 ));
defparam \register_fifo:fifo_data[0][0]~1 .lut_mask = 16'h66EE;
defparam \register_fifo:fifo_data[0][0]~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \register_fifo:fifo_data[0][1]~1 (
	.dataa(register_fifofifo_data01),
	.datab(register_fifofifo_data017),
	.datac(gnd),
	.datad(vcc),
	.cin(\register_fifo:fifo_data[0][0]~2 ),
	.combout(\register_fifo:fifo_data[0][1]~1_combout ),
	.cout(\register_fifo:fifo_data[0][1]~2 ));
defparam \register_fifo:fifo_data[0][1]~1 .lut_mask = 16'h967F;
defparam \register_fifo:fifo_data[0][1]~1 .sum_lutc_input = "cin";

cycloneive_lcell_comb \register_fifo:fifo_data[0][2]~1 (
	.dataa(register_fifofifo_data02),
	.datab(register_fifofifo_data021),
	.datac(gnd),
	.datad(vcc),
	.cin(\register_fifo:fifo_data[0][1]~2 ),
	.combout(\register_fifo:fifo_data[0][2]~1_combout ),
	.cout(\register_fifo:fifo_data[0][2]~2 ));
defparam \register_fifo:fifo_data[0][2]~1 .lut_mask = 16'h96EF;
defparam \register_fifo:fifo_data[0][2]~1 .sum_lutc_input = "cin";

cycloneive_lcell_comb \register_fifo:fifo_data[0][3]~1 (
	.dataa(register_fifofifo_data03),
	.datab(register_fifofifo_data031),
	.datac(gnd),
	.datad(vcc),
	.cin(\register_fifo:fifo_data[0][2]~2 ),
	.combout(\register_fifo:fifo_data[0][3]~1_combout ),
	.cout(\register_fifo:fifo_data[0][3]~2 ));
defparam \register_fifo:fifo_data[0][3]~1 .lut_mask = 16'h967F;
defparam \register_fifo:fifo_data[0][3]~1 .sum_lutc_input = "cin";

cycloneive_lcell_comb \register_fifo:fifo_data[0][4]~1 (
	.dataa(register_fifofifo_data04),
	.datab(register_fifofifo_data041),
	.datac(gnd),
	.datad(vcc),
	.cin(\register_fifo:fifo_data[0][3]~2 ),
	.combout(\register_fifo:fifo_data[0][4]~1_combout ),
	.cout(\register_fifo:fifo_data[0][4]~2 ));
defparam \register_fifo:fifo_data[0][4]~1 .lut_mask = 16'h96EF;
defparam \register_fifo:fifo_data[0][4]~1 .sum_lutc_input = "cin";

cycloneive_lcell_comb \register_fifo:fifo_data[0][5]~1 (
	.dataa(register_fifofifo_data05),
	.datab(register_fifofifo_data051),
	.datac(gnd),
	.datad(vcc),
	.cin(\register_fifo:fifo_data[0][4]~2 ),
	.combout(\register_fifo:fifo_data[0][5]~1_combout ),
	.cout(\register_fifo:fifo_data[0][5]~2 ));
defparam \register_fifo:fifo_data[0][5]~1 .lut_mask = 16'h967F;
defparam \register_fifo:fifo_data[0][5]~1 .sum_lutc_input = "cin";

cycloneive_lcell_comb \register_fifo:fifo_data[0][6]~1 (
	.dataa(register_fifofifo_data06),
	.datab(register_fifofifo_data061),
	.datac(gnd),
	.datad(vcc),
	.cin(\register_fifo:fifo_data[0][5]~2 ),
	.combout(\register_fifo:fifo_data[0][6]~1_combout ),
	.cout(\register_fifo:fifo_data[0][6]~2 ));
defparam \register_fifo:fifo_data[0][6]~1 .lut_mask = 16'h96EF;
defparam \register_fifo:fifo_data[0][6]~1 .sum_lutc_input = "cin";

cycloneive_lcell_comb \register_fifo:fifo_data[0][7]~1 (
	.dataa(register_fifofifo_data07),
	.datab(register_fifofifo_data071),
	.datac(gnd),
	.datad(vcc),
	.cin(\register_fifo:fifo_data[0][6]~2 ),
	.combout(\register_fifo:fifo_data[0][7]~1_combout ),
	.cout(\register_fifo:fifo_data[0][7]~2 ));
defparam \register_fifo:fifo_data[0][7]~1 .lut_mask = 16'h967F;
defparam \register_fifo:fifo_data[0][7]~1 .sum_lutc_input = "cin";

cycloneive_lcell_comb \register_fifo:fifo_data[0][8]~1 (
	.dataa(register_fifofifo_data08),
	.datab(register_fifofifo_data081),
	.datac(gnd),
	.datad(vcc),
	.cin(\register_fifo:fifo_data[0][7]~2 ),
	.combout(\register_fifo:fifo_data[0][8]~1_combout ),
	.cout(\register_fifo:fifo_data[0][8]~2 ));
defparam \register_fifo:fifo_data[0][8]~1 .lut_mask = 16'h96EF;
defparam \register_fifo:fifo_data[0][8]~1 .sum_lutc_input = "cin";

cycloneive_lcell_comb \register_fifo:fifo_data[0][9]~1 (
	.dataa(register_fifofifo_data09),
	.datab(register_fifofifo_data091),
	.datac(gnd),
	.datad(vcc),
	.cin(\register_fifo:fifo_data[0][8]~2 ),
	.combout(\register_fifo:fifo_data[0][9]~1_combout ),
	.cout(\register_fifo:fifo_data[0][9]~2 ));
defparam \register_fifo:fifo_data[0][9]~1 .lut_mask = 16'h967F;
defparam \register_fifo:fifo_data[0][9]~1 .sum_lutc_input = "cin";

cycloneive_lcell_comb \register_fifo:fifo_data[0][10]~1 (
	.dataa(register_fifofifo_data010),
	.datab(register_fifofifo_data0101),
	.datac(gnd),
	.datad(vcc),
	.cin(\register_fifo:fifo_data[0][9]~2 ),
	.combout(\register_fifo:fifo_data[0][10]~1_combout ),
	.cout(\register_fifo:fifo_data[0][10]~2 ));
defparam \register_fifo:fifo_data[0][10]~1 .lut_mask = 16'h96EF;
defparam \register_fifo:fifo_data[0][10]~1 .sum_lutc_input = "cin";

cycloneive_lcell_comb \register_fifo:fifo_data[0][11]~1 (
	.dataa(register_fifofifo_data011),
	.datab(register_fifofifo_data0111),
	.datac(gnd),
	.datad(vcc),
	.cin(\register_fifo:fifo_data[0][10]~2 ),
	.combout(\register_fifo:fifo_data[0][11]~1_combout ),
	.cout(\register_fifo:fifo_data[0][11]~2 ));
defparam \register_fifo:fifo_data[0][11]~1 .lut_mask = 16'h967F;
defparam \register_fifo:fifo_data[0][11]~1 .sum_lutc_input = "cin";

cycloneive_lcell_comb \register_fifo:fifo_data[0][12]~1 (
	.dataa(register_fifofifo_data012),
	.datab(register_fifofifo_data0121),
	.datac(gnd),
	.datad(vcc),
	.cin(\register_fifo:fifo_data[0][11]~2 ),
	.combout(\register_fifo:fifo_data[0][12]~1_combout ),
	.cout(\register_fifo:fifo_data[0][12]~2 ));
defparam \register_fifo:fifo_data[0][12]~1 .lut_mask = 16'h96EF;
defparam \register_fifo:fifo_data[0][12]~1 .sum_lutc_input = "cin";

cycloneive_lcell_comb \register_fifo:fifo_data[0][13]~1 (
	.dataa(register_fifofifo_data013),
	.datab(register_fifofifo_data0131),
	.datac(gnd),
	.datad(vcc),
	.cin(\register_fifo:fifo_data[0][12]~2 ),
	.combout(\register_fifo:fifo_data[0][13]~1_combout ),
	.cout(\register_fifo:fifo_data[0][13]~2 ));
defparam \register_fifo:fifo_data[0][13]~1 .lut_mask = 16'h967F;
defparam \register_fifo:fifo_data[0][13]~1 .sum_lutc_input = "cin";

cycloneive_lcell_comb \register_fifo:fifo_data[0][14]~1 (
	.dataa(register_fifofifo_data014),
	.datab(register_fifofifo_data0141),
	.datac(gnd),
	.datad(vcc),
	.cin(\register_fifo:fifo_data[0][13]~2 ),
	.combout(\register_fifo:fifo_data[0][14]~1_combout ),
	.cout(\register_fifo:fifo_data[0][14]~2 ));
defparam \register_fifo:fifo_data[0][14]~1 .lut_mask = 16'h96EF;
defparam \register_fifo:fifo_data[0][14]~1 .sum_lutc_input = "cin";

cycloneive_lcell_comb \register_fifo:fifo_data[0][15]~1 (
	.dataa(register_fifofifo_data015),
	.datab(register_fifofifo_data0151),
	.datac(gnd),
	.datad(vcc),
	.cin(\register_fifo:fifo_data[0][14]~2 ),
	.combout(\register_fifo:fifo_data[0][15]~1_combout ),
	.cout(\register_fifo:fifo_data[0][15]~2 ));
defparam \register_fifo:fifo_data[0][15]~1 .lut_mask = 16'h967F;
defparam \register_fifo:fifo_data[0][15]~1 .sum_lutc_input = "cin";

cycloneive_lcell_comb \register_fifo:fifo_data[0][16]~1 (
	.dataa(register_fifofifo_data016),
	.datab(register_fifofifo_data0161),
	.datac(gnd),
	.datad(gnd),
	.cin(\register_fifo:fifo_data[0][15]~2 ),
	.combout(\register_fifo:fifo_data[0][16]~1_combout ),
	.cout());
defparam \register_fifo:fifo_data[0][16]~1 .lut_mask = 16'h9696;
defparam \register_fifo:fifo_data[0][16]~1 .sum_lutc_input = "cin";

endmodule

module CicFilter_auk_dspip_integrator_cic_121_2 (
	register_fifofifo_data00,
	register_fifofifo_data01,
	register_fifofifo_data02,
	register_fifofifo_data03,
	register_fifofifo_data04,
	register_fifofifo_data05,
	register_fifofifo_data06,
	register_fifofifo_data07,
	register_fifofifo_data08,
	register_fifofifo_data09,
	register_fifofifo_data010,
	register_fifofifo_data011,
	register_fifofifo_data012,
	register_fifofifo_data013,
	register_fifofifo_data014,
	register_fifofifo_data015,
	register_fifofifo_data016,
	register_fifofifo_data001,
	register_fifofifo_data017,
	register_fifofifo_data021,
	register_fifofifo_data031,
	register_fifofifo_data041,
	register_fifofifo_data051,
	register_fifofifo_data061,
	register_fifofifo_data071,
	register_fifofifo_data081,
	register_fifofifo_data091,
	register_fifofifo_data0101,
	register_fifofifo_data0111,
	register_fifofifo_data0121,
	register_fifofifo_data0131,
	register_fifofifo_data0141,
	register_fifofifo_data0151,
	register_fifofifo_data0161,
	stall,
	clk,
	reset_n)/* synthesis synthesis_greybox=1 */;
output 	register_fifofifo_data00;
output 	register_fifofifo_data01;
output 	register_fifofifo_data02;
output 	register_fifofifo_data03;
output 	register_fifofifo_data04;
output 	register_fifofifo_data05;
output 	register_fifofifo_data06;
output 	register_fifofifo_data07;
output 	register_fifofifo_data08;
output 	register_fifofifo_data09;
output 	register_fifofifo_data010;
output 	register_fifofifo_data011;
output 	register_fifofifo_data012;
output 	register_fifofifo_data013;
output 	register_fifofifo_data014;
output 	register_fifofifo_data015;
output 	register_fifofifo_data016;
input 	register_fifofifo_data001;
input 	register_fifofifo_data017;
input 	register_fifofifo_data021;
input 	register_fifofifo_data031;
input 	register_fifofifo_data041;
input 	register_fifofifo_data051;
input 	register_fifofifo_data061;
input 	register_fifofifo_data071;
input 	register_fifofifo_data081;
input 	register_fifofifo_data091;
input 	register_fifofifo_data0101;
input 	register_fifofifo_data0111;
input 	register_fifofifo_data0121;
input 	register_fifofifo_data0131;
input 	register_fifofifo_data0141;
input 	register_fifofifo_data0151;
input 	register_fifofifo_data0161;
input 	stall;
input 	clk;
input 	reset_n;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



CicFilter_auk_dspip_delay_cic_121_5 \glogic:integrator_pipeline_0_generate:u1 (
	.register_fifofifo_data00(register_fifofifo_data00),
	.register_fifofifo_data01(register_fifofifo_data01),
	.register_fifofifo_data02(register_fifofifo_data02),
	.register_fifofifo_data03(register_fifofifo_data03),
	.register_fifofifo_data04(register_fifofifo_data04),
	.register_fifofifo_data05(register_fifofifo_data05),
	.register_fifofifo_data06(register_fifofifo_data06),
	.register_fifofifo_data07(register_fifofifo_data07),
	.register_fifofifo_data08(register_fifofifo_data08),
	.register_fifofifo_data09(register_fifofifo_data09),
	.register_fifofifo_data010(register_fifofifo_data010),
	.register_fifofifo_data011(register_fifofifo_data011),
	.register_fifofifo_data012(register_fifofifo_data012),
	.register_fifofifo_data013(register_fifofifo_data013),
	.register_fifofifo_data014(register_fifofifo_data014),
	.register_fifofifo_data015(register_fifofifo_data015),
	.register_fifofifo_data016(register_fifofifo_data016),
	.register_fifofifo_data001(register_fifofifo_data001),
	.register_fifofifo_data017(register_fifofifo_data017),
	.register_fifofifo_data021(register_fifofifo_data021),
	.register_fifofifo_data031(register_fifofifo_data031),
	.register_fifofifo_data041(register_fifofifo_data041),
	.register_fifofifo_data051(register_fifofifo_data051),
	.register_fifofifo_data061(register_fifofifo_data061),
	.register_fifofifo_data071(register_fifofifo_data071),
	.register_fifofifo_data081(register_fifofifo_data081),
	.register_fifofifo_data091(register_fifofifo_data091),
	.register_fifofifo_data0101(register_fifofifo_data0101),
	.register_fifofifo_data0111(register_fifofifo_data0111),
	.register_fifofifo_data0121(register_fifofifo_data0121),
	.register_fifofifo_data0131(register_fifofifo_data0131),
	.register_fifofifo_data0141(register_fifofifo_data0141),
	.register_fifofifo_data0151(register_fifofifo_data0151),
	.register_fifofifo_data0161(register_fifofifo_data0161),
	.enable(stall),
	.clk(clk),
	.reset(reset_n));

endmodule

module CicFilter_auk_dspip_delay_cic_121_5 (
	register_fifofifo_data00,
	register_fifofifo_data01,
	register_fifofifo_data02,
	register_fifofifo_data03,
	register_fifofifo_data04,
	register_fifofifo_data05,
	register_fifofifo_data06,
	register_fifofifo_data07,
	register_fifofifo_data08,
	register_fifofifo_data09,
	register_fifofifo_data010,
	register_fifofifo_data011,
	register_fifofifo_data012,
	register_fifofifo_data013,
	register_fifofifo_data014,
	register_fifofifo_data015,
	register_fifofifo_data016,
	register_fifofifo_data001,
	register_fifofifo_data017,
	register_fifofifo_data021,
	register_fifofifo_data031,
	register_fifofifo_data041,
	register_fifofifo_data051,
	register_fifofifo_data061,
	register_fifofifo_data071,
	register_fifofifo_data081,
	register_fifofifo_data091,
	register_fifofifo_data0101,
	register_fifofifo_data0111,
	register_fifofifo_data0121,
	register_fifofifo_data0131,
	register_fifofifo_data0141,
	register_fifofifo_data0151,
	register_fifofifo_data0161,
	enable,
	clk,
	reset)/* synthesis synthesis_greybox=1 */;
output 	register_fifofifo_data00;
output 	register_fifofifo_data01;
output 	register_fifofifo_data02;
output 	register_fifofifo_data03;
output 	register_fifofifo_data04;
output 	register_fifofifo_data05;
output 	register_fifofifo_data06;
output 	register_fifofifo_data07;
output 	register_fifofifo_data08;
output 	register_fifofifo_data09;
output 	register_fifofifo_data010;
output 	register_fifofifo_data011;
output 	register_fifofifo_data012;
output 	register_fifofifo_data013;
output 	register_fifofifo_data014;
output 	register_fifofifo_data015;
output 	register_fifofifo_data016;
input 	register_fifofifo_data001;
input 	register_fifofifo_data017;
input 	register_fifofifo_data021;
input 	register_fifofifo_data031;
input 	register_fifofifo_data041;
input 	register_fifofifo_data051;
input 	register_fifofifo_data061;
input 	register_fifofifo_data071;
input 	register_fifofifo_data081;
input 	register_fifofifo_data091;
input 	register_fifofifo_data0101;
input 	register_fifofifo_data0111;
input 	register_fifofifo_data0121;
input 	register_fifofifo_data0131;
input 	register_fifofifo_data0141;
input 	register_fifofifo_data0151;
input 	register_fifofifo_data0161;
input 	enable;
input 	clk;
input 	reset;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \register_fifo:fifo_data[0][0]~1_combout ;
wire \register_fifo:fifo_data[0][0]~2 ;
wire \register_fifo:fifo_data[0][1]~1_combout ;
wire \register_fifo:fifo_data[0][1]~2 ;
wire \register_fifo:fifo_data[0][2]~1_combout ;
wire \register_fifo:fifo_data[0][2]~2 ;
wire \register_fifo:fifo_data[0][3]~1_combout ;
wire \register_fifo:fifo_data[0][3]~2 ;
wire \register_fifo:fifo_data[0][4]~1_combout ;
wire \register_fifo:fifo_data[0][4]~2 ;
wire \register_fifo:fifo_data[0][5]~1_combout ;
wire \register_fifo:fifo_data[0][5]~2 ;
wire \register_fifo:fifo_data[0][6]~1_combout ;
wire \register_fifo:fifo_data[0][6]~2 ;
wire \register_fifo:fifo_data[0][7]~1_combout ;
wire \register_fifo:fifo_data[0][7]~2 ;
wire \register_fifo:fifo_data[0][8]~1_combout ;
wire \register_fifo:fifo_data[0][8]~2 ;
wire \register_fifo:fifo_data[0][9]~1_combout ;
wire \register_fifo:fifo_data[0][9]~2 ;
wire \register_fifo:fifo_data[0][10]~1_combout ;
wire \register_fifo:fifo_data[0][10]~2 ;
wire \register_fifo:fifo_data[0][11]~1_combout ;
wire \register_fifo:fifo_data[0][11]~2 ;
wire \register_fifo:fifo_data[0][12]~1_combout ;
wire \register_fifo:fifo_data[0][12]~2 ;
wire \register_fifo:fifo_data[0][13]~1_combout ;
wire \register_fifo:fifo_data[0][13]~2 ;
wire \register_fifo:fifo_data[0][14]~1_combout ;
wire \register_fifo:fifo_data[0][14]~2 ;
wire \register_fifo:fifo_data[0][15]~1_combout ;
wire \register_fifo:fifo_data[0][15]~2 ;
wire \register_fifo:fifo_data[0][16]~1_combout ;


dffeas \register_fifo:fifo_data[0][0] (
	.clk(clk),
	.d(\register_fifo:fifo_data[0][0]~1_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data00),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][0] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][0] .power_up = "low";

dffeas \register_fifo:fifo_data[0][1] (
	.clk(clk),
	.d(\register_fifo:fifo_data[0][1]~1_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data01),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][1] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][1] .power_up = "low";

dffeas \register_fifo:fifo_data[0][2] (
	.clk(clk),
	.d(\register_fifo:fifo_data[0][2]~1_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data02),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][2] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][2] .power_up = "low";

dffeas \register_fifo:fifo_data[0][3] (
	.clk(clk),
	.d(\register_fifo:fifo_data[0][3]~1_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data03),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][3] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][3] .power_up = "low";

dffeas \register_fifo:fifo_data[0][4] (
	.clk(clk),
	.d(\register_fifo:fifo_data[0][4]~1_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data04),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][4] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][4] .power_up = "low";

dffeas \register_fifo:fifo_data[0][5] (
	.clk(clk),
	.d(\register_fifo:fifo_data[0][5]~1_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data05),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][5] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][5] .power_up = "low";

dffeas \register_fifo:fifo_data[0][6] (
	.clk(clk),
	.d(\register_fifo:fifo_data[0][6]~1_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data06),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][6] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][6] .power_up = "low";

dffeas \register_fifo:fifo_data[0][7] (
	.clk(clk),
	.d(\register_fifo:fifo_data[0][7]~1_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data07),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][7] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][7] .power_up = "low";

dffeas \register_fifo:fifo_data[0][8] (
	.clk(clk),
	.d(\register_fifo:fifo_data[0][8]~1_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data08),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][8] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][8] .power_up = "low";

dffeas \register_fifo:fifo_data[0][9] (
	.clk(clk),
	.d(\register_fifo:fifo_data[0][9]~1_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data09),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][9] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][9] .power_up = "low";

dffeas \register_fifo:fifo_data[0][10] (
	.clk(clk),
	.d(\register_fifo:fifo_data[0][10]~1_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data010),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][10] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][10] .power_up = "low";

dffeas \register_fifo:fifo_data[0][11] (
	.clk(clk),
	.d(\register_fifo:fifo_data[0][11]~1_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data011),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][11] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][11] .power_up = "low";

dffeas \register_fifo:fifo_data[0][12] (
	.clk(clk),
	.d(\register_fifo:fifo_data[0][12]~1_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data012),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][12] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][12] .power_up = "low";

dffeas \register_fifo:fifo_data[0][13] (
	.clk(clk),
	.d(\register_fifo:fifo_data[0][13]~1_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data013),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][13] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][13] .power_up = "low";

dffeas \register_fifo:fifo_data[0][14] (
	.clk(clk),
	.d(\register_fifo:fifo_data[0][14]~1_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data014),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][14] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][14] .power_up = "low";

dffeas \register_fifo:fifo_data[0][15] (
	.clk(clk),
	.d(\register_fifo:fifo_data[0][15]~1_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data015),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][15] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][15] .power_up = "low";

dffeas \register_fifo:fifo_data[0][16] (
	.clk(clk),
	.d(\register_fifo:fifo_data[0][16]~1_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(enable),
	.q(register_fifofifo_data016),
	.prn(vcc));
defparam \register_fifo:fifo_data[0][16] .is_wysiwyg = "true";
defparam \register_fifo:fifo_data[0][16] .power_up = "low";

cycloneive_lcell_comb \register_fifo:fifo_data[0][0]~1 (
	.dataa(register_fifofifo_data00),
	.datab(register_fifofifo_data001),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(\register_fifo:fifo_data[0][0]~1_combout ),
	.cout(\register_fifo:fifo_data[0][0]~2 ));
defparam \register_fifo:fifo_data[0][0]~1 .lut_mask = 16'h66EE;
defparam \register_fifo:fifo_data[0][0]~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \register_fifo:fifo_data[0][1]~1 (
	.dataa(register_fifofifo_data01),
	.datab(register_fifofifo_data017),
	.datac(gnd),
	.datad(vcc),
	.cin(\register_fifo:fifo_data[0][0]~2 ),
	.combout(\register_fifo:fifo_data[0][1]~1_combout ),
	.cout(\register_fifo:fifo_data[0][1]~2 ));
defparam \register_fifo:fifo_data[0][1]~1 .lut_mask = 16'h967F;
defparam \register_fifo:fifo_data[0][1]~1 .sum_lutc_input = "cin";

cycloneive_lcell_comb \register_fifo:fifo_data[0][2]~1 (
	.dataa(register_fifofifo_data02),
	.datab(register_fifofifo_data021),
	.datac(gnd),
	.datad(vcc),
	.cin(\register_fifo:fifo_data[0][1]~2 ),
	.combout(\register_fifo:fifo_data[0][2]~1_combout ),
	.cout(\register_fifo:fifo_data[0][2]~2 ));
defparam \register_fifo:fifo_data[0][2]~1 .lut_mask = 16'h96EF;
defparam \register_fifo:fifo_data[0][2]~1 .sum_lutc_input = "cin";

cycloneive_lcell_comb \register_fifo:fifo_data[0][3]~1 (
	.dataa(register_fifofifo_data03),
	.datab(register_fifofifo_data031),
	.datac(gnd),
	.datad(vcc),
	.cin(\register_fifo:fifo_data[0][2]~2 ),
	.combout(\register_fifo:fifo_data[0][3]~1_combout ),
	.cout(\register_fifo:fifo_data[0][3]~2 ));
defparam \register_fifo:fifo_data[0][3]~1 .lut_mask = 16'h967F;
defparam \register_fifo:fifo_data[0][3]~1 .sum_lutc_input = "cin";

cycloneive_lcell_comb \register_fifo:fifo_data[0][4]~1 (
	.dataa(register_fifofifo_data04),
	.datab(register_fifofifo_data041),
	.datac(gnd),
	.datad(vcc),
	.cin(\register_fifo:fifo_data[0][3]~2 ),
	.combout(\register_fifo:fifo_data[0][4]~1_combout ),
	.cout(\register_fifo:fifo_data[0][4]~2 ));
defparam \register_fifo:fifo_data[0][4]~1 .lut_mask = 16'h96EF;
defparam \register_fifo:fifo_data[0][4]~1 .sum_lutc_input = "cin";

cycloneive_lcell_comb \register_fifo:fifo_data[0][5]~1 (
	.dataa(register_fifofifo_data05),
	.datab(register_fifofifo_data051),
	.datac(gnd),
	.datad(vcc),
	.cin(\register_fifo:fifo_data[0][4]~2 ),
	.combout(\register_fifo:fifo_data[0][5]~1_combout ),
	.cout(\register_fifo:fifo_data[0][5]~2 ));
defparam \register_fifo:fifo_data[0][5]~1 .lut_mask = 16'h967F;
defparam \register_fifo:fifo_data[0][5]~1 .sum_lutc_input = "cin";

cycloneive_lcell_comb \register_fifo:fifo_data[0][6]~1 (
	.dataa(register_fifofifo_data06),
	.datab(register_fifofifo_data061),
	.datac(gnd),
	.datad(vcc),
	.cin(\register_fifo:fifo_data[0][5]~2 ),
	.combout(\register_fifo:fifo_data[0][6]~1_combout ),
	.cout(\register_fifo:fifo_data[0][6]~2 ));
defparam \register_fifo:fifo_data[0][6]~1 .lut_mask = 16'h96EF;
defparam \register_fifo:fifo_data[0][6]~1 .sum_lutc_input = "cin";

cycloneive_lcell_comb \register_fifo:fifo_data[0][7]~1 (
	.dataa(register_fifofifo_data07),
	.datab(register_fifofifo_data071),
	.datac(gnd),
	.datad(vcc),
	.cin(\register_fifo:fifo_data[0][6]~2 ),
	.combout(\register_fifo:fifo_data[0][7]~1_combout ),
	.cout(\register_fifo:fifo_data[0][7]~2 ));
defparam \register_fifo:fifo_data[0][7]~1 .lut_mask = 16'h967F;
defparam \register_fifo:fifo_data[0][7]~1 .sum_lutc_input = "cin";

cycloneive_lcell_comb \register_fifo:fifo_data[0][8]~1 (
	.dataa(register_fifofifo_data08),
	.datab(register_fifofifo_data081),
	.datac(gnd),
	.datad(vcc),
	.cin(\register_fifo:fifo_data[0][7]~2 ),
	.combout(\register_fifo:fifo_data[0][8]~1_combout ),
	.cout(\register_fifo:fifo_data[0][8]~2 ));
defparam \register_fifo:fifo_data[0][8]~1 .lut_mask = 16'h96EF;
defparam \register_fifo:fifo_data[0][8]~1 .sum_lutc_input = "cin";

cycloneive_lcell_comb \register_fifo:fifo_data[0][9]~1 (
	.dataa(register_fifofifo_data09),
	.datab(register_fifofifo_data091),
	.datac(gnd),
	.datad(vcc),
	.cin(\register_fifo:fifo_data[0][8]~2 ),
	.combout(\register_fifo:fifo_data[0][9]~1_combout ),
	.cout(\register_fifo:fifo_data[0][9]~2 ));
defparam \register_fifo:fifo_data[0][9]~1 .lut_mask = 16'h967F;
defparam \register_fifo:fifo_data[0][9]~1 .sum_lutc_input = "cin";

cycloneive_lcell_comb \register_fifo:fifo_data[0][10]~1 (
	.dataa(register_fifofifo_data010),
	.datab(register_fifofifo_data0101),
	.datac(gnd),
	.datad(vcc),
	.cin(\register_fifo:fifo_data[0][9]~2 ),
	.combout(\register_fifo:fifo_data[0][10]~1_combout ),
	.cout(\register_fifo:fifo_data[0][10]~2 ));
defparam \register_fifo:fifo_data[0][10]~1 .lut_mask = 16'h96EF;
defparam \register_fifo:fifo_data[0][10]~1 .sum_lutc_input = "cin";

cycloneive_lcell_comb \register_fifo:fifo_data[0][11]~1 (
	.dataa(register_fifofifo_data011),
	.datab(register_fifofifo_data0111),
	.datac(gnd),
	.datad(vcc),
	.cin(\register_fifo:fifo_data[0][10]~2 ),
	.combout(\register_fifo:fifo_data[0][11]~1_combout ),
	.cout(\register_fifo:fifo_data[0][11]~2 ));
defparam \register_fifo:fifo_data[0][11]~1 .lut_mask = 16'h967F;
defparam \register_fifo:fifo_data[0][11]~1 .sum_lutc_input = "cin";

cycloneive_lcell_comb \register_fifo:fifo_data[0][12]~1 (
	.dataa(register_fifofifo_data012),
	.datab(register_fifofifo_data0121),
	.datac(gnd),
	.datad(vcc),
	.cin(\register_fifo:fifo_data[0][11]~2 ),
	.combout(\register_fifo:fifo_data[0][12]~1_combout ),
	.cout(\register_fifo:fifo_data[0][12]~2 ));
defparam \register_fifo:fifo_data[0][12]~1 .lut_mask = 16'h96EF;
defparam \register_fifo:fifo_data[0][12]~1 .sum_lutc_input = "cin";

cycloneive_lcell_comb \register_fifo:fifo_data[0][13]~1 (
	.dataa(register_fifofifo_data013),
	.datab(register_fifofifo_data0131),
	.datac(gnd),
	.datad(vcc),
	.cin(\register_fifo:fifo_data[0][12]~2 ),
	.combout(\register_fifo:fifo_data[0][13]~1_combout ),
	.cout(\register_fifo:fifo_data[0][13]~2 ));
defparam \register_fifo:fifo_data[0][13]~1 .lut_mask = 16'h967F;
defparam \register_fifo:fifo_data[0][13]~1 .sum_lutc_input = "cin";

cycloneive_lcell_comb \register_fifo:fifo_data[0][14]~1 (
	.dataa(register_fifofifo_data014),
	.datab(register_fifofifo_data0141),
	.datac(gnd),
	.datad(vcc),
	.cin(\register_fifo:fifo_data[0][13]~2 ),
	.combout(\register_fifo:fifo_data[0][14]~1_combout ),
	.cout(\register_fifo:fifo_data[0][14]~2 ));
defparam \register_fifo:fifo_data[0][14]~1 .lut_mask = 16'h96EF;
defparam \register_fifo:fifo_data[0][14]~1 .sum_lutc_input = "cin";

cycloneive_lcell_comb \register_fifo:fifo_data[0][15]~1 (
	.dataa(register_fifofifo_data015),
	.datab(register_fifofifo_data0151),
	.datac(gnd),
	.datad(vcc),
	.cin(\register_fifo:fifo_data[0][14]~2 ),
	.combout(\register_fifo:fifo_data[0][15]~1_combout ),
	.cout(\register_fifo:fifo_data[0][15]~2 ));
defparam \register_fifo:fifo_data[0][15]~1 .lut_mask = 16'h967F;
defparam \register_fifo:fifo_data[0][15]~1 .sum_lutc_input = "cin";

cycloneive_lcell_comb \register_fifo:fifo_data[0][16]~1 (
	.dataa(register_fifofifo_data016),
	.datab(register_fifofifo_data0161),
	.datac(gnd),
	.datad(gnd),
	.cin(\register_fifo:fifo_data[0][15]~2 ),
	.combout(\register_fifo:fifo_data[0][16]~1_combout ),
	.cout());
defparam \register_fifo:fifo_data[0][16]~1 .lut_mask = 16'h9696;
defparam \register_fifo:fifo_data[0][16]~1 .sum_lutc_input = "cin";

endmodule

module CicFilter_scfifo_2 (
	data,
	stall_reg,
	rate_cnt_proc,
	stall,
	dff_ra_0,
	dff_ra_1,
	dff_ra_2,
	dff_ra_3,
	dff_ra_4,
	dff_ra_5,
	dff_ra_6,
	dff_ra_7,
	dff_ra_8,
	dff_ra_9,
	dff_ra_10,
	dff_ra_11,
	dff_ra_12,
	dff_ra_13,
	dff_ra_14,
	dff_ra_15,
	dff_ra_16,
	ena_diff_0,
	Equal1,
	clock,
	reset_n,
	clken)/* synthesis synthesis_greybox=1 */;
input 	[16:0] data;
input 	stall_reg;
input 	rate_cnt_proc;
input 	stall;
output 	dff_ra_0;
output 	dff_ra_1;
output 	dff_ra_2;
output 	dff_ra_3;
output 	dff_ra_4;
output 	dff_ra_5;
output 	dff_ra_6;
output 	dff_ra_7;
output 	dff_ra_8;
output 	dff_ra_9;
output 	dff_ra_10;
output 	dff_ra_11;
output 	dff_ra_12;
output 	dff_ra_13;
output 	dff_ra_14;
output 	dff_ra_15;
output 	dff_ra_16;
input 	ena_diff_0;
input 	Equal1;
input 	clock;
input 	reset_n;
input 	clken;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



CicFilter_a_regfifo_1 subfifo(
	.data({data[16],data[15],data[14],data[13],data[12],data[11],data[10],data[9],data[8],data[7],data[6],data[5],data[4],data[3],data[2],data[1],data[0]}),
	.stall_reg(stall_reg),
	.rate_cnt_proc(rate_cnt_proc),
	.stall(stall),
	.dff_ra_0(dff_ra_0),
	.dff_ra_1(dff_ra_1),
	.dff_ra_2(dff_ra_2),
	.dff_ra_3(dff_ra_3),
	.dff_ra_4(dff_ra_4),
	.dff_ra_5(dff_ra_5),
	.dff_ra_6(dff_ra_6),
	.dff_ra_7(dff_ra_7),
	.dff_ra_8(dff_ra_8),
	.dff_ra_9(dff_ra_9),
	.dff_ra_10(dff_ra_10),
	.dff_ra_11(dff_ra_11),
	.dff_ra_12(dff_ra_12),
	.dff_ra_13(dff_ra_13),
	.dff_ra_14(dff_ra_14),
	.dff_ra_15(dff_ra_15),
	.dff_ra_16(dff_ra_16),
	.ena_diff_0(ena_diff_0),
	.Equal1(Equal1),
	.clock(clock),
	.reset_n(reset_n),
	.clken(clken));

endmodule

module CicFilter_a_regfifo_1 (
	data,
	stall_reg,
	rate_cnt_proc,
	stall,
	dff_ra_0,
	dff_ra_1,
	dff_ra_2,
	dff_ra_3,
	dff_ra_4,
	dff_ra_5,
	dff_ra_6,
	dff_ra_7,
	dff_ra_8,
	dff_ra_9,
	dff_ra_10,
	dff_ra_11,
	dff_ra_12,
	dff_ra_13,
	dff_ra_14,
	dff_ra_15,
	dff_ra_16,
	ena_diff_0,
	Equal1,
	clock,
	reset_n,
	clken)/* synthesis synthesis_greybox=1 */;
input 	[16:0] data;
input 	stall_reg;
input 	rate_cnt_proc;
input 	stall;
output 	dff_ra_0;
output 	dff_ra_1;
output 	dff_ra_2;
output 	dff_ra_3;
output 	dff_ra_4;
output 	dff_ra_5;
output 	dff_ra_6;
output 	dff_ra_7;
output 	dff_ra_8;
output 	dff_ra_9;
output 	dff_ra_10;
output 	dff_ra_11;
output 	dff_ra_12;
output 	dff_ra_13;
output 	dff_ra_14;
output 	dff_ra_15;
output 	dff_ra_16;
input 	ena_diff_0;
input 	Equal1;
input 	clock;
input 	reset_n;
input 	clken;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \dff_full~0_combout ;
wire \dff_full~q ;
wire \valid_wreq~combout ;
wire \dff_fifo[0]~q ;
wire \valid_rreq~0_combout ;
wire \dff_fifo[1]~q ;
wire \dff_fifo[2]~q ;
wire \dff_fifo[3]~q ;
wire \dff_fifo[4]~q ;
wire \dff_fifo[5]~q ;
wire \dff_fifo[6]~q ;
wire \dff_fifo[7]~q ;
wire \dff_fifo[8]~q ;
wire \dff_fifo[9]~q ;
wire \dff_fifo[10]~q ;
wire \dff_fifo[11]~q ;
wire \dff_fifo[12]~q ;
wire \dff_fifo[13]~q ;
wire \dff_fifo[14]~q ;
wire \dff_fifo[15]~q ;
wire \dff_fifo[16]~q ;


dffeas \dff_ra[0] (
	.clk(clock),
	.d(\dff_fifo[0]~q ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\valid_rreq~0_combout ),
	.q(dff_ra_0),
	.prn(vcc));
defparam \dff_ra[0] .is_wysiwyg = "true";
defparam \dff_ra[0] .power_up = "low";

dffeas \dff_ra[1] (
	.clk(clock),
	.d(\dff_fifo[1]~q ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\valid_rreq~0_combout ),
	.q(dff_ra_1),
	.prn(vcc));
defparam \dff_ra[1] .is_wysiwyg = "true";
defparam \dff_ra[1] .power_up = "low";

dffeas \dff_ra[2] (
	.clk(clock),
	.d(\dff_fifo[2]~q ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\valid_rreq~0_combout ),
	.q(dff_ra_2),
	.prn(vcc));
defparam \dff_ra[2] .is_wysiwyg = "true";
defparam \dff_ra[2] .power_up = "low";

dffeas \dff_ra[3] (
	.clk(clock),
	.d(\dff_fifo[3]~q ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\valid_rreq~0_combout ),
	.q(dff_ra_3),
	.prn(vcc));
defparam \dff_ra[3] .is_wysiwyg = "true";
defparam \dff_ra[3] .power_up = "low";

dffeas \dff_ra[4] (
	.clk(clock),
	.d(\dff_fifo[4]~q ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\valid_rreq~0_combout ),
	.q(dff_ra_4),
	.prn(vcc));
defparam \dff_ra[4] .is_wysiwyg = "true";
defparam \dff_ra[4] .power_up = "low";

dffeas \dff_ra[5] (
	.clk(clock),
	.d(\dff_fifo[5]~q ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\valid_rreq~0_combout ),
	.q(dff_ra_5),
	.prn(vcc));
defparam \dff_ra[5] .is_wysiwyg = "true";
defparam \dff_ra[5] .power_up = "low";

dffeas \dff_ra[6] (
	.clk(clock),
	.d(\dff_fifo[6]~q ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\valid_rreq~0_combout ),
	.q(dff_ra_6),
	.prn(vcc));
defparam \dff_ra[6] .is_wysiwyg = "true";
defparam \dff_ra[6] .power_up = "low";

dffeas \dff_ra[7] (
	.clk(clock),
	.d(\dff_fifo[7]~q ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\valid_rreq~0_combout ),
	.q(dff_ra_7),
	.prn(vcc));
defparam \dff_ra[7] .is_wysiwyg = "true";
defparam \dff_ra[7] .power_up = "low";

dffeas \dff_ra[8] (
	.clk(clock),
	.d(\dff_fifo[8]~q ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\valid_rreq~0_combout ),
	.q(dff_ra_8),
	.prn(vcc));
defparam \dff_ra[8] .is_wysiwyg = "true";
defparam \dff_ra[8] .power_up = "low";

dffeas \dff_ra[9] (
	.clk(clock),
	.d(\dff_fifo[9]~q ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\valid_rreq~0_combout ),
	.q(dff_ra_9),
	.prn(vcc));
defparam \dff_ra[9] .is_wysiwyg = "true";
defparam \dff_ra[9] .power_up = "low";

dffeas \dff_ra[10] (
	.clk(clock),
	.d(\dff_fifo[10]~q ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\valid_rreq~0_combout ),
	.q(dff_ra_10),
	.prn(vcc));
defparam \dff_ra[10] .is_wysiwyg = "true";
defparam \dff_ra[10] .power_up = "low";

dffeas \dff_ra[11] (
	.clk(clock),
	.d(\dff_fifo[11]~q ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\valid_rreq~0_combout ),
	.q(dff_ra_11),
	.prn(vcc));
defparam \dff_ra[11] .is_wysiwyg = "true";
defparam \dff_ra[11] .power_up = "low";

dffeas \dff_ra[12] (
	.clk(clock),
	.d(\dff_fifo[12]~q ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\valid_rreq~0_combout ),
	.q(dff_ra_12),
	.prn(vcc));
defparam \dff_ra[12] .is_wysiwyg = "true";
defparam \dff_ra[12] .power_up = "low";

dffeas \dff_ra[13] (
	.clk(clock),
	.d(\dff_fifo[13]~q ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\valid_rreq~0_combout ),
	.q(dff_ra_13),
	.prn(vcc));
defparam \dff_ra[13] .is_wysiwyg = "true";
defparam \dff_ra[13] .power_up = "low";

dffeas \dff_ra[14] (
	.clk(clock),
	.d(\dff_fifo[14]~q ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\valid_rreq~0_combout ),
	.q(dff_ra_14),
	.prn(vcc));
defparam \dff_ra[14] .is_wysiwyg = "true";
defparam \dff_ra[14] .power_up = "low";

dffeas \dff_ra[15] (
	.clk(clock),
	.d(\dff_fifo[15]~q ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\valid_rreq~0_combout ),
	.q(dff_ra_15),
	.prn(vcc));
defparam \dff_ra[15] .is_wysiwyg = "true";
defparam \dff_ra[15] .power_up = "low";

dffeas \dff_ra[16] (
	.clk(clock),
	.d(\dff_fifo[16]~q ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\valid_rreq~0_combout ),
	.q(dff_ra_16),
	.prn(vcc));
defparam \dff_ra[16] .is_wysiwyg = "true";
defparam \dff_ra[16] .power_up = "low";

cycloneive_lcell_comb \dff_full~0 (
	.dataa(\valid_wreq~combout ),
	.datab(\dff_full~q ),
	.datac(stall),
	.datad(ena_diff_0),
	.cin(gnd),
	.combout(\dff_full~0_combout ),
	.cout());
defparam \dff_full~0 .lut_mask = 16'hEFFF;
defparam \dff_full~0 .sum_lutc_input = "datac";

dffeas dff_full(
	.clk(clock),
	.d(\dff_full~0_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\dff_full~q ),
	.prn(vcc));
defparam dff_full.is_wysiwyg = "true";
defparam dff_full.power_up = "low";

cycloneive_lcell_comb valid_wreq(
	.dataa(rate_cnt_proc),
	.datab(Equal1),
	.datac(gnd),
	.datad(\dff_full~q ),
	.cin(gnd),
	.combout(\valid_wreq~combout ),
	.cout());
defparam valid_wreq.lut_mask = 16'hEEFF;
defparam valid_wreq.sum_lutc_input = "datac";

dffeas \dff_fifo[0] (
	.clk(clock),
	.d(data[0]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\valid_wreq~combout ),
	.q(\dff_fifo[0]~q ),
	.prn(vcc));
defparam \dff_fifo[0] .is_wysiwyg = "true";
defparam \dff_fifo[0] .power_up = "low";

cycloneive_lcell_comb \valid_rreq~0 (
	.dataa(clken),
	.datab(stall_reg),
	.datac(\dff_full~q ),
	.datad(ena_diff_0),
	.cin(gnd),
	.combout(\valid_rreq~0_combout ),
	.cout());
defparam \valid_rreq~0 .lut_mask = 16'hFFFE;
defparam \valid_rreq~0 .sum_lutc_input = "datac";

dffeas \dff_fifo[1] (
	.clk(clock),
	.d(data[1]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\valid_wreq~combout ),
	.q(\dff_fifo[1]~q ),
	.prn(vcc));
defparam \dff_fifo[1] .is_wysiwyg = "true";
defparam \dff_fifo[1] .power_up = "low";

dffeas \dff_fifo[2] (
	.clk(clock),
	.d(data[2]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\valid_wreq~combout ),
	.q(\dff_fifo[2]~q ),
	.prn(vcc));
defparam \dff_fifo[2] .is_wysiwyg = "true";
defparam \dff_fifo[2] .power_up = "low";

dffeas \dff_fifo[3] (
	.clk(clock),
	.d(data[3]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\valid_wreq~combout ),
	.q(\dff_fifo[3]~q ),
	.prn(vcc));
defparam \dff_fifo[3] .is_wysiwyg = "true";
defparam \dff_fifo[3] .power_up = "low";

dffeas \dff_fifo[4] (
	.clk(clock),
	.d(data[4]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\valid_wreq~combout ),
	.q(\dff_fifo[4]~q ),
	.prn(vcc));
defparam \dff_fifo[4] .is_wysiwyg = "true";
defparam \dff_fifo[4] .power_up = "low";

dffeas \dff_fifo[5] (
	.clk(clock),
	.d(data[5]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\valid_wreq~combout ),
	.q(\dff_fifo[5]~q ),
	.prn(vcc));
defparam \dff_fifo[5] .is_wysiwyg = "true";
defparam \dff_fifo[5] .power_up = "low";

dffeas \dff_fifo[6] (
	.clk(clock),
	.d(data[6]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\valid_wreq~combout ),
	.q(\dff_fifo[6]~q ),
	.prn(vcc));
defparam \dff_fifo[6] .is_wysiwyg = "true";
defparam \dff_fifo[6] .power_up = "low";

dffeas \dff_fifo[7] (
	.clk(clock),
	.d(data[7]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\valid_wreq~combout ),
	.q(\dff_fifo[7]~q ),
	.prn(vcc));
defparam \dff_fifo[7] .is_wysiwyg = "true";
defparam \dff_fifo[7] .power_up = "low";

dffeas \dff_fifo[8] (
	.clk(clock),
	.d(data[8]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\valid_wreq~combout ),
	.q(\dff_fifo[8]~q ),
	.prn(vcc));
defparam \dff_fifo[8] .is_wysiwyg = "true";
defparam \dff_fifo[8] .power_up = "low";

dffeas \dff_fifo[9] (
	.clk(clock),
	.d(data[9]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\valid_wreq~combout ),
	.q(\dff_fifo[9]~q ),
	.prn(vcc));
defparam \dff_fifo[9] .is_wysiwyg = "true";
defparam \dff_fifo[9] .power_up = "low";

dffeas \dff_fifo[10] (
	.clk(clock),
	.d(data[10]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\valid_wreq~combout ),
	.q(\dff_fifo[10]~q ),
	.prn(vcc));
defparam \dff_fifo[10] .is_wysiwyg = "true";
defparam \dff_fifo[10] .power_up = "low";

dffeas \dff_fifo[11] (
	.clk(clock),
	.d(data[11]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\valid_wreq~combout ),
	.q(\dff_fifo[11]~q ),
	.prn(vcc));
defparam \dff_fifo[11] .is_wysiwyg = "true";
defparam \dff_fifo[11] .power_up = "low";

dffeas \dff_fifo[12] (
	.clk(clock),
	.d(data[12]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\valid_wreq~combout ),
	.q(\dff_fifo[12]~q ),
	.prn(vcc));
defparam \dff_fifo[12] .is_wysiwyg = "true";
defparam \dff_fifo[12] .power_up = "low";

dffeas \dff_fifo[13] (
	.clk(clock),
	.d(data[13]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\valid_wreq~combout ),
	.q(\dff_fifo[13]~q ),
	.prn(vcc));
defparam \dff_fifo[13] .is_wysiwyg = "true";
defparam \dff_fifo[13] .power_up = "low";

dffeas \dff_fifo[14] (
	.clk(clock),
	.d(data[14]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\valid_wreq~combout ),
	.q(\dff_fifo[14]~q ),
	.prn(vcc));
defparam \dff_fifo[14] .is_wysiwyg = "true";
defparam \dff_fifo[14] .power_up = "low";

dffeas \dff_fifo[15] (
	.clk(clock),
	.d(data[15]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\valid_wreq~combout ),
	.q(\dff_fifo[15]~q ),
	.prn(vcc));
defparam \dff_fifo[15] .is_wysiwyg = "true";
defparam \dff_fifo[15] .power_up = "low";

dffeas \dff_fifo[16] (
	.clk(clock),
	.d(data[16]),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\valid_wreq~combout ),
	.q(\dff_fifo[16]~q ),
	.prn(vcc));
defparam \dff_fifo[16] .is_wysiwyg = "true";
defparam \dff_fifo[16] .power_up = "low";

endmodule
