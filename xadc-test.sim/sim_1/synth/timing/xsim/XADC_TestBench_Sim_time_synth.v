// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Wed Jul  3 18:42:26 2024
// Host        : deulamco-4060M running 64-bit Ubuntu 24.04 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/deulamco/Documents/FPGAs/xadc-test/xadc-test.sim/sim_1/synth/timing/xsim/XADC_TestBench_Sim_time_synth.v
// Design      : XADC_TestBench
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module XADC_TestBench
   (di_in,
    daddr_in,
    den_in,
    dwe_in,
    drdy_out,
    do_out,
    dclk_in,
    reset_in,
    vp_in,
    vn_in,
    ot_out,
    channel_out,
    eoc_out,
    alarm_out,
    eos_out,
    busy_out);
  input [15:0]di_in;
  input [6:0]daddr_in;
  input den_in;
  input dwe_in;
  output drdy_out;
  output [15:0]do_out;
  input dclk_in;
  input reset_in;
  input vp_in;
  input vn_in;
  output ot_out;
  output [4:0]channel_out;
  output eoc_out;
  output alarm_out;
  output eos_out;
  output busy_out;

  wire alarm_out;
  wire alarm_out_OBUF;
  wire busy_out;
  wire busy_out_OBUF;
  wire [4:0]channel_out;
  wire [4:0]channel_out_OBUF;
  wire [6:0]daddr_in;
  wire [6:0]daddr_in_IBUF;
  wire dclk_in;
  wire dclk_in_IBUF;
  wire den_in;
  wire den_in_IBUF;
  wire [15:0]di_in;
  wire [15:0]di_in_IBUF;
  wire [15:0]do_out;
  wire [15:0]do_out_OBUF;
  wire drdy_out;
  wire drdy_out_OBUF;
  wire dwe_in;
  wire dwe_in_IBUF;
  wire eoc_out;
  wire eoc_out_OBUF;
  wire eos_out;
  wire eos_out_OBUF;
  wire ot_out;
  wire reset_in;
  wire reset_in_IBUF;
  wire vn_in;
  wire vn_in_IBUF;
  wire vp_in;
  wire vp_in_IBUF;

initial begin
 $sdf_annotate("XADC_TestBench_Sim_time_synth.sdf",,,,"tool_control");
end
  (* IMPORTED_FROM = "/home/deulamco/Documents/FPGAs/xadc-test/xadc-test.gen/sources_1/ip/xadc_wiz_0/xadc_wiz_0.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  xadc_wiz_0 XADC_INST
       (.alarm_out(alarm_out_OBUF),
        .busy_out(busy_out_OBUF),
        .channel_out(channel_out_OBUF),
        .daddr_in(daddr_in_IBUF),
        .dclk_in(dclk_in_IBUF),
        .den_in(den_in_IBUF),
        .di_in(di_in_IBUF),
        .do_out(do_out_OBUF),
        .drdy_out(drdy_out_OBUF),
        .dwe_in(dwe_in_IBUF),
        .eoc_out(eoc_out_OBUF),
        .eos_out(eos_out_OBUF),
        .reset_in(reset_in_IBUF),
        .vn_in(vn_in_IBUF),
        .vp_in(vp_in_IBUF));
  OBUF alarm_out_OBUF_inst
       (.I(alarm_out_OBUF),
        .O(alarm_out));
  OBUF busy_out_OBUF_inst
       (.I(busy_out_OBUF),
        .O(busy_out));
  OBUF \channel_out_OBUF[0]_inst 
       (.I(channel_out_OBUF[0]),
        .O(channel_out[0]));
  OBUF \channel_out_OBUF[1]_inst 
       (.I(channel_out_OBUF[1]),
        .O(channel_out[1]));
  OBUF \channel_out_OBUF[2]_inst 
       (.I(channel_out_OBUF[2]),
        .O(channel_out[2]));
  OBUF \channel_out_OBUF[3]_inst 
       (.I(channel_out_OBUF[3]),
        .O(channel_out[3]));
  OBUF \channel_out_OBUF[4]_inst 
       (.I(channel_out_OBUF[4]),
        .O(channel_out[4]));
  IBUF \daddr_in_IBUF[0]_inst 
       (.I(daddr_in[0]),
        .O(daddr_in_IBUF[0]));
  IBUF \daddr_in_IBUF[1]_inst 
       (.I(daddr_in[1]),
        .O(daddr_in_IBUF[1]));
  IBUF \daddr_in_IBUF[2]_inst 
       (.I(daddr_in[2]),
        .O(daddr_in_IBUF[2]));
  IBUF \daddr_in_IBUF[3]_inst 
       (.I(daddr_in[3]),
        .O(daddr_in_IBUF[3]));
  IBUF \daddr_in_IBUF[4]_inst 
       (.I(daddr_in[4]),
        .O(daddr_in_IBUF[4]));
  IBUF \daddr_in_IBUF[5]_inst 
       (.I(daddr_in[5]),
        .O(daddr_in_IBUF[5]));
  IBUF \daddr_in_IBUF[6]_inst 
       (.I(daddr_in[6]),
        .O(daddr_in_IBUF[6]));
  IBUF dclk_in_IBUF_inst
       (.I(dclk_in),
        .O(dclk_in_IBUF));
  IBUF den_in_IBUF_inst
       (.I(den_in),
        .O(den_in_IBUF));
  IBUF \di_in_IBUF[0]_inst 
       (.I(di_in[0]),
        .O(di_in_IBUF[0]));
  IBUF \di_in_IBUF[10]_inst 
       (.I(di_in[10]),
        .O(di_in_IBUF[10]));
  IBUF \di_in_IBUF[11]_inst 
       (.I(di_in[11]),
        .O(di_in_IBUF[11]));
  IBUF \di_in_IBUF[12]_inst 
       (.I(di_in[12]),
        .O(di_in_IBUF[12]));
  IBUF \di_in_IBUF[13]_inst 
       (.I(di_in[13]),
        .O(di_in_IBUF[13]));
  IBUF \di_in_IBUF[14]_inst 
       (.I(di_in[14]),
        .O(di_in_IBUF[14]));
  IBUF \di_in_IBUF[15]_inst 
       (.I(di_in[15]),
        .O(di_in_IBUF[15]));
  IBUF \di_in_IBUF[1]_inst 
       (.I(di_in[1]),
        .O(di_in_IBUF[1]));
  IBUF \di_in_IBUF[2]_inst 
       (.I(di_in[2]),
        .O(di_in_IBUF[2]));
  IBUF \di_in_IBUF[3]_inst 
       (.I(di_in[3]),
        .O(di_in_IBUF[3]));
  IBUF \di_in_IBUF[4]_inst 
       (.I(di_in[4]),
        .O(di_in_IBUF[4]));
  IBUF \di_in_IBUF[5]_inst 
       (.I(di_in[5]),
        .O(di_in_IBUF[5]));
  IBUF \di_in_IBUF[6]_inst 
       (.I(di_in[6]),
        .O(di_in_IBUF[6]));
  IBUF \di_in_IBUF[7]_inst 
       (.I(di_in[7]),
        .O(di_in_IBUF[7]));
  IBUF \di_in_IBUF[8]_inst 
       (.I(di_in[8]),
        .O(di_in_IBUF[8]));
  IBUF \di_in_IBUF[9]_inst 
       (.I(di_in[9]),
        .O(di_in_IBUF[9]));
  OBUF \do_out_OBUF[0]_inst 
       (.I(do_out_OBUF[0]),
        .O(do_out[0]));
  OBUF \do_out_OBUF[10]_inst 
       (.I(do_out_OBUF[10]),
        .O(do_out[10]));
  OBUF \do_out_OBUF[11]_inst 
       (.I(do_out_OBUF[11]),
        .O(do_out[11]));
  OBUF \do_out_OBUF[12]_inst 
       (.I(do_out_OBUF[12]),
        .O(do_out[12]));
  OBUF \do_out_OBUF[13]_inst 
       (.I(do_out_OBUF[13]),
        .O(do_out[13]));
  OBUF \do_out_OBUF[14]_inst 
       (.I(do_out_OBUF[14]),
        .O(do_out[14]));
  OBUF \do_out_OBUF[15]_inst 
       (.I(do_out_OBUF[15]),
        .O(do_out[15]));
  OBUF \do_out_OBUF[1]_inst 
       (.I(do_out_OBUF[1]),
        .O(do_out[1]));
  OBUF \do_out_OBUF[2]_inst 
       (.I(do_out_OBUF[2]),
        .O(do_out[2]));
  OBUF \do_out_OBUF[3]_inst 
       (.I(do_out_OBUF[3]),
        .O(do_out[3]));
  OBUF \do_out_OBUF[4]_inst 
       (.I(do_out_OBUF[4]),
        .O(do_out[4]));
  OBUF \do_out_OBUF[5]_inst 
       (.I(do_out_OBUF[5]),
        .O(do_out[5]));
  OBUF \do_out_OBUF[6]_inst 
       (.I(do_out_OBUF[6]),
        .O(do_out[6]));
  OBUF \do_out_OBUF[7]_inst 
       (.I(do_out_OBUF[7]),
        .O(do_out[7]));
  OBUF \do_out_OBUF[8]_inst 
       (.I(do_out_OBUF[8]),
        .O(do_out[8]));
  OBUF \do_out_OBUF[9]_inst 
       (.I(do_out_OBUF[9]),
        .O(do_out[9]));
  OBUF drdy_out_OBUF_inst
       (.I(drdy_out_OBUF),
        .O(drdy_out));
  IBUF dwe_in_IBUF_inst
       (.I(dwe_in),
        .O(dwe_in_IBUF));
  OBUF eoc_out_OBUF_inst
       (.I(eoc_out_OBUF),
        .O(eoc_out));
  OBUF eos_out_OBUF_inst
       (.I(eos_out_OBUF),
        .O(eos_out));
  OBUFT ot_out_OBUF_inst
       (.I(1'b0),
        .O(ot_out),
        .T(1'b1));
  IBUF reset_in_IBUF_inst
       (.I(reset_in),
        .O(reset_in_IBUF));
  IBUF vn_in_IBUF_inst
       (.I(vn_in),
        .O(vn_in_IBUF));
  IBUF vp_in_IBUF_inst
       (.I(vp_in),
        .O(vp_in_IBUF));
endmodule

module xadc_wiz_0
   (daddr_in,
    dclk_in,
    den_in,
    di_in,
    dwe_in,
    reset_in,
    busy_out,
    channel_out,
    do_out,
    drdy_out,
    eoc_out,
    eos_out,
    alarm_out,
    vp_in,
    vn_in);
  input [6:0]daddr_in;
  input dclk_in;
  input den_in;
  input [15:0]di_in;
  input dwe_in;
  input reset_in;
  output busy_out;
  output [4:0]channel_out;
  output [15:0]do_out;
  output drdy_out;
  output eoc_out;
  output eos_out;
  output alarm_out;
  input vp_in;
  input vn_in;

  wire alarm_out;
  wire busy_out;
  wire [4:0]channel_out;
  wire [6:0]daddr_in;
  wire dclk_in;
  wire den_in;
  wire [15:0]di_in;
  wire [15:0]do_out;
  wire drdy_out;
  wire dwe_in;
  wire eoc_out;
  wire eos_out;
  wire reset_in;
  wire vn_in;
  wire vp_in;
  wire NLW_inst_JTAGBUSY_UNCONNECTED;
  wire NLW_inst_JTAGLOCKED_UNCONNECTED;
  wire NLW_inst_JTAGMODIFIED_UNCONNECTED;
  wire NLW_inst_OT_UNCONNECTED;
  wire [6:0]NLW_inst_ALM_UNCONNECTED;
  wire [4:0]NLW_inst_MUXADDR_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  XADC #(
    .INIT_40(16'h0000),
    .INIT_41(16'h31AF),
    .INIT_42(16'h0400),
    .INIT_43(16'h0000),
    .INIT_44(16'h0000),
    .INIT_45(16'h0000),
    .INIT_46(16'h0000),
    .INIT_47(16'h0000),
    .INIT_48(16'h0100),
    .INIT_49(16'h0000),
    .INIT_4A(16'h0000),
    .INIT_4B(16'h0000),
    .INIT_4C(16'h0000),
    .INIT_4D(16'h0000),
    .INIT_4E(16'h0000),
    .INIT_4F(16'h0000),
    .INIT_50(16'hB5ED),
    .INIT_51(16'h57E4),
    .INIT_52(16'hA147),
    .INIT_53(16'hCA33),
    .INIT_54(16'hA93A),
    .INIT_55(16'h52C6),
    .INIT_56(16'h9555),
    .INIT_57(16'hAE4E),
    .INIT_58(16'h5999),
    .INIT_59(16'h0000),
    .INIT_5A(16'h0000),
    .INIT_5B(16'h0000),
    .INIT_5C(16'h5111),
    .INIT_5D(16'h0000),
    .INIT_5E(16'h0000),
    .INIT_5F(16'h0000),
    .IS_CONVSTCLK_INVERTED(1'b0),
    .IS_DCLK_INVERTED(1'b0),
    .SIM_DEVICE("7SERIES"),
    .SIM_MONITOR_FILE("design.txt")) 
    inst
       (.ALM({alarm_out,NLW_inst_ALM_UNCONNECTED[6:0]}),
        .BUSY(busy_out),
        .CHANNEL(channel_out),
        .CONVST(1'b0),
        .CONVSTCLK(1'b0),
        .DADDR(daddr_in),
        .DCLK(dclk_in),
        .DEN(den_in),
        .DI(di_in),
        .DO(do_out),
        .DRDY(drdy_out),
        .DWE(dwe_in),
        .EOC(eoc_out),
        .EOS(eos_out),
        .JTAGBUSY(NLW_inst_JTAGBUSY_UNCONNECTED),
        .JTAGLOCKED(NLW_inst_JTAGLOCKED_UNCONNECTED),
        .JTAGMODIFIED(NLW_inst_JTAGMODIFIED_UNCONNECTED),
        .MUXADDR(NLW_inst_MUXADDR_UNCONNECTED[4:0]),
        .OT(NLW_inst_OT_UNCONNECTED),
        .RESET(reset_in),
        .VAUXN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .VAUXP({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .VN(vn_in),
        .VP(vp_in));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
