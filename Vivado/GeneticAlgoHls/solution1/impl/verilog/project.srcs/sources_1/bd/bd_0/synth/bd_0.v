//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Thu Dec 20 14:53:55 2018
//Host        : Centropy running 64-bit major release  (build 9200)
//Command     : generate_target bd_0.bd
//Design      : bd_0
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_0,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "bd_0.hwdef" *) 
module bd_0
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_SLV0 " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_SLV0, ADDR_WIDTH 12, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_0_aclk_0, DATA_WIDTH 32, FREQ_HZ 50000000.0, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [6:0]S_AXI_SLV0_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_SLV0 " *) output S_AXI_SLV0_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_SLV0 " *) input S_AXI_SLV0_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_SLV0 " *) input [6:0]S_AXI_SLV0_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_SLV0 " *) output S_AXI_SLV0_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_SLV0 " *) input S_AXI_SLV0_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_SLV0 " *) input S_AXI_SLV0_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_SLV0 " *) output [1:0]S_AXI_SLV0_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_SLV0 " *) output S_AXI_SLV0_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_SLV0 " *) output [31:0]S_AXI_SLV0_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_SLV0 " *) input S_AXI_SLV0_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_SLV0 " *) output [1:0]S_AXI_SLV0_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_SLV0 " *) output S_AXI_SLV0_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_SLV0 " *) input [31:0]S_AXI_SLV0_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_SLV0 " *) output S_AXI_SLV0_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_SLV0 " *) input [3:0]S_AXI_SLV0_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_SLV0 " *) input S_AXI_SLV0_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK, ASSOCIATED_BUSIF S_AXI_SLV0, ASSOCIATED_RESET aresetn, CLK_DOMAIN bd_0_aclk_0, FREQ_HZ 50000000.0, INSERT_VIP 0, PHASE 0.000" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input aresetn;

  wire [6:0]S_AXI_SLV0_0_1_ARADDR;
  wire S_AXI_SLV0_0_1_ARREADY;
  wire S_AXI_SLV0_0_1_ARVALID;
  wire [6:0]S_AXI_SLV0_0_1_AWADDR;
  wire S_AXI_SLV0_0_1_AWREADY;
  wire S_AXI_SLV0_0_1_AWVALID;
  wire S_AXI_SLV0_0_1_BREADY;
  wire [1:0]S_AXI_SLV0_0_1_BRESP;
  wire S_AXI_SLV0_0_1_BVALID;
  wire [31:0]S_AXI_SLV0_0_1_RDATA;
  wire S_AXI_SLV0_0_1_RREADY;
  wire [1:0]S_AXI_SLV0_0_1_RRESP;
  wire S_AXI_SLV0_0_1_RVALID;
  wire [31:0]S_AXI_SLV0_0_1_WDATA;
  wire S_AXI_SLV0_0_1_WREADY;
  wire [3:0]S_AXI_SLV0_0_1_WSTRB;
  wire S_AXI_SLV0_0_1_WVALID;
  wire aclk_0_1;
  wire aresetn_0_1;

  assign S_AXI_SLV0_0_1_ARADDR = S_AXI_SLV0_araddr[6:0];
  assign S_AXI_SLV0_0_1_ARVALID = S_AXI_SLV0_arvalid;
  assign S_AXI_SLV0_0_1_AWADDR = S_AXI_SLV0_awaddr[6:0];
  assign S_AXI_SLV0_0_1_AWVALID = S_AXI_SLV0_awvalid;
  assign S_AXI_SLV0_0_1_BREADY = S_AXI_SLV0_bready;
  assign S_AXI_SLV0_0_1_RREADY = S_AXI_SLV0_rready;
  assign S_AXI_SLV0_0_1_WDATA = S_AXI_SLV0_wdata[31:0];
  assign S_AXI_SLV0_0_1_WSTRB = S_AXI_SLV0_wstrb[3:0];
  assign S_AXI_SLV0_0_1_WVALID = S_AXI_SLV0_wvalid;
  assign S_AXI_SLV0_arready = S_AXI_SLV0_0_1_ARREADY;
  assign S_AXI_SLV0_awready = S_AXI_SLV0_0_1_AWREADY;
  assign S_AXI_SLV0_bresp[1:0] = S_AXI_SLV0_0_1_BRESP;
  assign S_AXI_SLV0_bvalid = S_AXI_SLV0_0_1_BVALID;
  assign S_AXI_SLV0_rdata[31:0] = S_AXI_SLV0_0_1_RDATA;
  assign S_AXI_SLV0_rresp[1:0] = S_AXI_SLV0_0_1_RRESP;
  assign S_AXI_SLV0_rvalid = S_AXI_SLV0_0_1_RVALID;
  assign S_AXI_SLV0_wready = S_AXI_SLV0_0_1_WREADY;
  assign aclk_0_1 = aclk;
  assign aresetn_0_1 = aresetn;
  bd_0_hls_inst_0 hls_inst
       (.aclk(aclk_0_1),
        .aresetn(aresetn_0_1),
        .s_axi_slv0_ARADDR(S_AXI_SLV0_0_1_ARADDR),
        .s_axi_slv0_ARREADY(S_AXI_SLV0_0_1_ARREADY),
        .s_axi_slv0_ARVALID(S_AXI_SLV0_0_1_ARVALID),
        .s_axi_slv0_AWADDR(S_AXI_SLV0_0_1_AWADDR),
        .s_axi_slv0_AWREADY(S_AXI_SLV0_0_1_AWREADY),
        .s_axi_slv0_AWVALID(S_AXI_SLV0_0_1_AWVALID),
        .s_axi_slv0_BREADY(S_AXI_SLV0_0_1_BREADY),
        .s_axi_slv0_BRESP(S_AXI_SLV0_0_1_BRESP),
        .s_axi_slv0_BVALID(S_AXI_SLV0_0_1_BVALID),
        .s_axi_slv0_RDATA(S_AXI_SLV0_0_1_RDATA),
        .s_axi_slv0_RREADY(S_AXI_SLV0_0_1_RREADY),
        .s_axi_slv0_RRESP(S_AXI_SLV0_0_1_RRESP),
        .s_axi_slv0_RVALID(S_AXI_SLV0_0_1_RVALID),
        .s_axi_slv0_WDATA(S_AXI_SLV0_0_1_WDATA),
        .s_axi_slv0_WREADY(S_AXI_SLV0_0_1_WREADY),
        .s_axi_slv0_WSTRB(S_AXI_SLV0_0_1_WSTRB),
        .s_axi_slv0_WVALID(S_AXI_SLV0_0_1_WVALID));
endmodule
