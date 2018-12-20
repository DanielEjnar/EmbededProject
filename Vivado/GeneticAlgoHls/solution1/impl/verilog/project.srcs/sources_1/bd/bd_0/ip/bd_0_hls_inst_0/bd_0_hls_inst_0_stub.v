// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Dec 20 14:54:54 2018
// Host        : Centropy running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/cml/Desktop/EmbededProject/Vivado/GeneticAlgoHls/solution1/impl/verilog/project.srcs/sources_1/bd/bd_0/ip/bd_0_hls_inst_0/bd_0_hls_inst_0_stub.v
// Design      : bd_0_hls_inst_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "generationgenerator_top,Vivado 2018.3" *)
module bd_0_hls_inst_0(s_axi_slv0_AWADDR, s_axi_slv0_AWVALID, 
  s_axi_slv0_AWREADY, s_axi_slv0_WDATA, s_axi_slv0_WSTRB, s_axi_slv0_WVALID, 
  s_axi_slv0_WREADY, s_axi_slv0_BRESP, s_axi_slv0_BVALID, s_axi_slv0_BREADY, 
  s_axi_slv0_ARADDR, s_axi_slv0_ARVALID, s_axi_slv0_ARREADY, s_axi_slv0_RDATA, 
  s_axi_slv0_RRESP, s_axi_slv0_RVALID, s_axi_slv0_RREADY, aclk, aresetn)
/* synthesis syn_black_box black_box_pad_pin="s_axi_slv0_AWADDR[6:0],s_axi_slv0_AWVALID,s_axi_slv0_AWREADY,s_axi_slv0_WDATA[31:0],s_axi_slv0_WSTRB[3:0],s_axi_slv0_WVALID,s_axi_slv0_WREADY,s_axi_slv0_BRESP[1:0],s_axi_slv0_BVALID,s_axi_slv0_BREADY,s_axi_slv0_ARADDR[6:0],s_axi_slv0_ARVALID,s_axi_slv0_ARREADY,s_axi_slv0_RDATA[31:0],s_axi_slv0_RRESP[1:0],s_axi_slv0_RVALID,s_axi_slv0_RREADY,aclk,aresetn" */;
  input [6:0]s_axi_slv0_AWADDR;
  input s_axi_slv0_AWVALID;
  output s_axi_slv0_AWREADY;
  input [31:0]s_axi_slv0_WDATA;
  input [3:0]s_axi_slv0_WSTRB;
  input s_axi_slv0_WVALID;
  output s_axi_slv0_WREADY;
  output [1:0]s_axi_slv0_BRESP;
  output s_axi_slv0_BVALID;
  input s_axi_slv0_BREADY;
  input [6:0]s_axi_slv0_ARADDR;
  input s_axi_slv0_ARVALID;
  output s_axi_slv0_ARREADY;
  output [31:0]s_axi_slv0_RDATA;
  output [1:0]s_axi_slv0_RRESP;
  output s_axi_slv0_RVALID;
  input s_axi_slv0_RREADY;
  input aclk;
  input aresetn;
endmodule
