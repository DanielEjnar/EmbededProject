//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Thu Dec 20 14:53:55 2018
//Host        : Centropy running 64-bit major release  (build 9200)
//Command     : generate_target bd_0_wrapper.bd
//Design      : bd_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_0_wrapper
   (S_AXI_SLV0_araddr,
    S_AXI_SLV0_arready,
    S_AXI_SLV0_arvalid,
    S_AXI_SLV0_awaddr,
    S_AXI_SLV0_awready,
    S_AXI_SLV0_awvalid,
    S_AXI_SLV0_bready,
    S_AXI_SLV0_bresp,
    S_AXI_SLV0_bvalid,
    S_AXI_SLV0_rdata,
    S_AXI_SLV0_rready,
    S_AXI_SLV0_rresp,
    S_AXI_SLV0_rvalid,
    S_AXI_SLV0_wdata,
    S_AXI_SLV0_wready,
    S_AXI_SLV0_wstrb,
    S_AXI_SLV0_wvalid,
    aclk,
    aresetn);
  input [6:0]S_AXI_SLV0_araddr;
  output S_AXI_SLV0_arready;
  input S_AXI_SLV0_arvalid;
  input [6:0]S_AXI_SLV0_awaddr;
  output S_AXI_SLV0_awready;
  input S_AXI_SLV0_awvalid;
  input S_AXI_SLV0_bready;
  output [1:0]S_AXI_SLV0_bresp;
  output S_AXI_SLV0_bvalid;
  output [31:0]S_AXI_SLV0_rdata;
  input S_AXI_SLV0_rready;
  output [1:0]S_AXI_SLV0_rresp;
  output S_AXI_SLV0_rvalid;
  input [31:0]S_AXI_SLV0_wdata;
  output S_AXI_SLV0_wready;
  input [3:0]S_AXI_SLV0_wstrb;
  input S_AXI_SLV0_wvalid;
  input aclk;
  input aresetn;

  wire [6:0]S_AXI_SLV0_araddr;
  wire S_AXI_SLV0_arready;
  wire S_AXI_SLV0_arvalid;
  wire [6:0]S_AXI_SLV0_awaddr;
  wire S_AXI_SLV0_awready;
  wire S_AXI_SLV0_awvalid;
  wire S_AXI_SLV0_bready;
  wire [1:0]S_AXI_SLV0_bresp;
  wire S_AXI_SLV0_bvalid;
  wire [31:0]S_AXI_SLV0_rdata;
  wire S_AXI_SLV0_rready;
  wire [1:0]S_AXI_SLV0_rresp;
  wire S_AXI_SLV0_rvalid;
  wire [31:0]S_AXI_SLV0_wdata;
  wire S_AXI_SLV0_wready;
  wire [3:0]S_AXI_SLV0_wstrb;
  wire S_AXI_SLV0_wvalid;
  wire aclk;
  wire aresetn;

  bd_0 bd_0_i
       (.S_AXI_SLV0_araddr(S_AXI_SLV0_araddr),
        .S_AXI_SLV0_arready(S_AXI_SLV0_arready),
        .S_AXI_SLV0_arvalid(S_AXI_SLV0_arvalid),
        .S_AXI_SLV0_awaddr(S_AXI_SLV0_awaddr),
        .S_AXI_SLV0_awready(S_AXI_SLV0_awready),
        .S_AXI_SLV0_awvalid(S_AXI_SLV0_awvalid),
        .S_AXI_SLV0_bready(S_AXI_SLV0_bready),
        .S_AXI_SLV0_bresp(S_AXI_SLV0_bresp),
        .S_AXI_SLV0_bvalid(S_AXI_SLV0_bvalid),
        .S_AXI_SLV0_rdata(S_AXI_SLV0_rdata),
        .S_AXI_SLV0_rready(S_AXI_SLV0_rready),
        .S_AXI_SLV0_rresp(S_AXI_SLV0_rresp),
        .S_AXI_SLV0_rvalid(S_AXI_SLV0_rvalid),
        .S_AXI_SLV0_wdata(S_AXI_SLV0_wdata),
        .S_AXI_SLV0_wready(S_AXI_SLV0_wready),
        .S_AXI_SLV0_wstrb(S_AXI_SLV0_wstrb),
        .S_AXI_SLV0_wvalid(S_AXI_SLV0_wvalid),
        .aclk(aclk),
        .aresetn(aresetn));
endmodule
