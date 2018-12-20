// ==============================================================
// File generated on Thu Dec 20 14:53:36 +0100 2018
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
module generationgenerator_top (
s_axi_slv0_AWADDR,
s_axi_slv0_AWVALID,
s_axi_slv0_AWREADY,
s_axi_slv0_WDATA,
s_axi_slv0_WSTRB,
s_axi_slv0_WVALID,
s_axi_slv0_WREADY,
s_axi_slv0_BRESP,
s_axi_slv0_BVALID,
s_axi_slv0_BREADY,
s_axi_slv0_ARADDR,
s_axi_slv0_ARVALID,
s_axi_slv0_ARREADY,
s_axi_slv0_RDATA,
s_axi_slv0_RRESP,
s_axi_slv0_RVALID,
s_axi_slv0_RREADY,
aresetn,
aclk
);

parameter C_S_AXI_SLV0_ADDR_WIDTH = 7;
parameter C_S_AXI_SLV0_DATA_WIDTH = 32;
parameter RESET_ACTIVE_LOW = 1;

input [C_S_AXI_SLV0_ADDR_WIDTH - 1:0] s_axi_slv0_AWADDR ;
input s_axi_slv0_AWVALID ;
output s_axi_slv0_AWREADY ;
input [C_S_AXI_SLV0_DATA_WIDTH - 1:0] s_axi_slv0_WDATA ;
input [C_S_AXI_SLV0_DATA_WIDTH/8 - 1:0] s_axi_slv0_WSTRB ;
input s_axi_slv0_WVALID ;
output s_axi_slv0_WREADY ;
output [2 - 1:0] s_axi_slv0_BRESP ;
output s_axi_slv0_BVALID ;
input s_axi_slv0_BREADY ;
input [C_S_AXI_SLV0_ADDR_WIDTH - 1:0] s_axi_slv0_ARADDR ;
input s_axi_slv0_ARVALID ;
output s_axi_slv0_ARREADY ;
output [C_S_AXI_SLV0_DATA_WIDTH - 1:0] s_axi_slv0_RDATA ;
output [2 - 1:0] s_axi_slv0_RRESP ;
output s_axi_slv0_RVALID ;
input s_axi_slv0_RREADY ;

input aresetn ;

input aclk ;


wire [C_S_AXI_SLV0_ADDR_WIDTH - 1:0] s_axi_slv0_AWADDR;
wire s_axi_slv0_AWVALID;
wire s_axi_slv0_AWREADY;
wire [C_S_AXI_SLV0_DATA_WIDTH - 1:0] s_axi_slv0_WDATA;
wire [C_S_AXI_SLV0_DATA_WIDTH/8 - 1:0] s_axi_slv0_WSTRB;
wire s_axi_slv0_WVALID;
wire s_axi_slv0_WREADY;
wire [2 - 1:0] s_axi_slv0_BRESP;
wire s_axi_slv0_BVALID;
wire s_axi_slv0_BREADY;
wire [C_S_AXI_SLV0_ADDR_WIDTH - 1:0] s_axi_slv0_ARADDR;
wire s_axi_slv0_ARVALID;
wire s_axi_slv0_ARREADY;
wire [C_S_AXI_SLV0_DATA_WIDTH - 1:0] s_axi_slv0_RDATA;
wire [2 - 1:0] s_axi_slv0_RRESP;
wire s_axi_slv0_RVALID;
wire s_axi_slv0_RREADY;

wire aresetn;


wire [1 - 1:0] sig_GenerationGenerator_startGenerating;
wire [1 - 1:0] sig_GenerationGenerator_generatingDone;
wire [64 - 1:0] sig_GenerationGenerator_generation_parent1;
wire [64 - 1:0] sig_GenerationGenerator_generation_parent2;
wire [64 - 1:0] sig_GenerationGenerator_generation_child1;
wire [64 - 1:0] sig_GenerationGenerator_generation_child2;
wire [24 - 1:0] sig_GenerationGenerator_mutation_probability;
wire [24 - 1:0] sig_GenerationGenerator_random;

wire sig_GenerationGenerator_reset;



GenerationGenerator GenerationGenerator_U(
    .startGenerating(sig_GenerationGenerator_startGenerating),
    .generatingDone(sig_GenerationGenerator_generatingDone),
    .generation_parent1(sig_GenerationGenerator_generation_parent1),
    .generation_parent2(sig_GenerationGenerator_generation_parent2),
    .generation_child1(sig_GenerationGenerator_generation_child1),
    .generation_child2(sig_GenerationGenerator_generation_child2),
    .mutation_probability(sig_GenerationGenerator_mutation_probability),
    .random(sig_GenerationGenerator_random),
    .reset(sig_GenerationGenerator_reset),
    .clk(aclk)
);

GenerationGenerator_slv0_if #(
    .C_ADDR_WIDTH(C_S_AXI_SLV0_ADDR_WIDTH),
    .C_DATA_WIDTH(C_S_AXI_SLV0_DATA_WIDTH))
GenerationGenerator_slv0_if_U(
    .ACLK(aclk),
    .ARESETN(aresetn),
    .I_startGenerating(sig_GenerationGenerator_startGenerating),
    .O_generatingDone(sig_GenerationGenerator_generatingDone),
    .I_generation_parent1(sig_GenerationGenerator_generation_parent1),
    .I_generation_parent2(sig_GenerationGenerator_generation_parent2),
    .O_generation_child1(sig_GenerationGenerator_generation_child1),
    .O_generation_child2(sig_GenerationGenerator_generation_child2),
    .I_mutation_probability(sig_GenerationGenerator_mutation_probability),
    .I_random(sig_GenerationGenerator_random),
    .AWADDR(s_axi_slv0_AWADDR),
    .AWVALID(s_axi_slv0_AWVALID),
    .AWREADY(s_axi_slv0_AWREADY),
    .WDATA(s_axi_slv0_WDATA),
    .WSTRB(s_axi_slv0_WSTRB),
    .WVALID(s_axi_slv0_WVALID),
    .WREADY(s_axi_slv0_WREADY),
    .BRESP(s_axi_slv0_BRESP),
    .BVALID(s_axi_slv0_BVALID),
    .BREADY(s_axi_slv0_BREADY),
    .ARADDR(s_axi_slv0_ARADDR),
    .ARVALID(s_axi_slv0_ARVALID),
    .ARREADY(s_axi_slv0_ARREADY),
    .RDATA(s_axi_slv0_RDATA),
    .RRESP(s_axi_slv0_RRESP),
    .RVALID(s_axi_slv0_RVALID),
    .RREADY(s_axi_slv0_RREADY));

GenerationGenerator_reset_if #(
    .RESET_ACTIVE_LOW(RESET_ACTIVE_LOW))
reset_if_U(
    .dout(sig_GenerationGenerator_reset),
    .din(aresetn));

endmodule
