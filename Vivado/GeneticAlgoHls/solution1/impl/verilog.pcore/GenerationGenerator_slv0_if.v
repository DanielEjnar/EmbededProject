// ==============================================================
// File generated on Thu Dec 20 14:51:05 +0100 2018
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1ns/1ps
module GenerationGenerator_slv0_if
#(parameter
    C_ADDR_WIDTH = 7,
    C_DATA_WIDTH = 32
)(
    // axi4 lite slave signals
    input  wire                      ACLK,
    input  wire                      ARESETN,
    input  wire [C_ADDR_WIDTH-1:0]   AWADDR,
    input  wire                      AWVALID,
    output wire                      AWREADY,
    input  wire [C_DATA_WIDTH-1:0]   WDATA,
    input  wire [C_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                      WVALID,
    output wire                      WREADY,
    output wire [1:0]                BRESP,
    output wire                      BVALID,
    input  wire                      BREADY,
    input  wire [C_ADDR_WIDTH-1:0]   ARADDR,
    input  wire                      ARVALID,
    output wire                      ARREADY,
    output wire [C_DATA_WIDTH-1:0]   RDATA,
    output wire [1:0]                RRESP,
    output wire                      RVALID,
    input  wire                      RREADY,
    // user signals
    output wire [0:0]                I_startGenerating,
    input  wire [0:0]                O_generatingDone,
    output wire [63:0]               I_generation_parent1,
    output wire [63:0]               I_generation_parent2,
    input  wire [63:0]               O_generation_child1,
    input  wire [63:0]               O_generation_child2,
    output wire [23:0]               I_mutation_probability,
    output wire [23:0]               I_random
);
//------------------------Address Info-------------------
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : reserved
// 0x14 : Data signal of startGenerating
//        bit 0  - startGenerating[0] (Read/Write)
//        others - reserved
// 0x18 : reserved
// 0x1c : Data signal of generatingDone
//        bit 0  - generatingDone[0] (Read)
//        others - reserved
// 0x20 : reserved
// 0x24 : Data signal of generation_parent1
//        bit 31~0 - generation_parent1[31:0] (Read/Write)
// 0x28 : Data signal of generation_parent1
//        bit 31~0 - generation_parent1[63:32] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of generation_parent2
//        bit 31~0 - generation_parent2[31:0] (Read/Write)
// 0x34 : Data signal of generation_parent2
//        bit 31~0 - generation_parent2[63:32] (Read/Write)
// 0x38 : reserved
// 0x3c : Data signal of generation_child1
//        bit 31~0 - generation_child1[31:0] (Read)
// 0x40 : Data signal of generation_child1
//        bit 31~0 - generation_child1[63:32] (Read)
// 0x44 : reserved
// 0x48 : Data signal of generation_child2
//        bit 31~0 - generation_child2[31:0] (Read)
// 0x4c : Data signal of generation_child2
//        bit 31~0 - generation_child2[63:32] (Read)
// 0x50 : reserved
// 0x54 : Data signal of mutation_probability
//        bit 23~0 - mutation_probability[23:0] (Read/Write)
//        others   - reserved
// 0x58 : reserved
// 0x5c : Data signal of random
//        bit 23~0 - random[23:0] (Read/Write)
//        others   - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
// address bits
localparam
    ADDR_BITS = 7;

// address
localparam
    ADDR_STARTGENERATING_CTRL        = 7'h10,
    ADDR_STARTGENERATING_DATA_0      = 7'h14,
    ADDR_GENERATINGDONE_CTRL         = 7'h18,
    ADDR_GENERATINGDONE_DATA_0       = 7'h1c,
    ADDR_GENERATION_PARENT1_CTRL     = 7'h20,
    ADDR_GENERATION_PARENT1_DATA_0   = 7'h24,
    ADDR_GENERATION_PARENT1_DATA_1   = 7'h28,
    ADDR_GENERATION_PARENT2_CTRL     = 7'h2c,
    ADDR_GENERATION_PARENT2_DATA_0   = 7'h30,
    ADDR_GENERATION_PARENT2_DATA_1   = 7'h34,
    ADDR_GENERATION_CHILD1_CTRL      = 7'h38,
    ADDR_GENERATION_CHILD1_DATA_0    = 7'h3c,
    ADDR_GENERATION_CHILD1_DATA_1    = 7'h40,
    ADDR_GENERATION_CHILD2_CTRL      = 7'h44,
    ADDR_GENERATION_CHILD2_DATA_0    = 7'h48,
    ADDR_GENERATION_CHILD2_DATA_1    = 7'h4c,
    ADDR_MUTATION_PROBABILITY_CTRL   = 7'h50,
    ADDR_MUTATION_PROBABILITY_DATA_0 = 7'h54,
    ADDR_RANDOM_CTRL                 = 7'h58,
    ADDR_RANDOM_DATA_0               = 7'h5c;

// axi write fsm
localparam
    WRIDLE = 2'd0,
    WRDATA = 2'd1,
    WRRESP = 2'd2;

// axi read fsm
localparam
    RDIDLE = 2'd0,
    RDDATA = 2'd1;

//------------------------Local signal-------------------
// axi write
reg  [1:0]           wstate;
reg  [1:0]           wnext;
reg  [ADDR_BITS-1:0] waddr;
wire [31:0]          wmask;
wire                 aw_hs;
wire                 w_hs;
// axi read
reg  [1:0]           rstate;
reg  [1:0]           rnext;
reg  [31:0]          rdata;
wire                 ar_hs;
wire [ADDR_BITS-1:0] raddr;
// internal registers
reg  [0:0]           _startGenerating;
wire [0:0]           _generatingDone;
reg  [63:0]          _generation_parent1;
reg  [63:0]          _generation_parent2;
wire [63:0]          _generation_child1;
wire [63:0]          _generation_child2;
reg  [23:0]          _mutation_probability;
reg  [23:0]          _random;

//------------------------Body---------------------------
//++++++++++++++++++++++++axi write++++++++++++++++++++++
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (~ARESETN)
        wstate <= WRIDLE;
    else
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (WVALID)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (aw_hs)
        waddr <= AWADDR[ADDR_BITS-1:0];
end
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++axi read+++++++++++++++++++++++
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA);
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (~ARESETN)
        rstate <= RDIDLE;
    else
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ar_hs) begin
        rdata <= 1'b0;
        case (raddr)
            ADDR_STARTGENERATING_DATA_0: begin
                rdata <= _startGenerating[0:0];
            end
            ADDR_GENERATINGDONE_DATA_0: begin
                rdata <= _generatingDone[0:0];
            end
            ADDR_GENERATION_PARENT1_DATA_0: begin
                rdata <= _generation_parent1[31:0];
            end
            ADDR_GENERATION_PARENT1_DATA_1: begin
                rdata <= _generation_parent1[63:32];
            end
            ADDR_GENERATION_PARENT2_DATA_0: begin
                rdata <= _generation_parent2[31:0];
            end
            ADDR_GENERATION_PARENT2_DATA_1: begin
                rdata <= _generation_parent2[63:32];
            end
            ADDR_GENERATION_CHILD1_DATA_0: begin
                rdata <= _generation_child1[31:0];
            end
            ADDR_GENERATION_CHILD1_DATA_1: begin
                rdata <= _generation_child1[63:32];
            end
            ADDR_GENERATION_CHILD2_DATA_0: begin
                rdata <= _generation_child2[31:0];
            end
            ADDR_GENERATION_CHILD2_DATA_1: begin
                rdata <= _generation_child2[63:32];
            end
            ADDR_MUTATION_PROBABILITY_DATA_0: begin
                rdata <= _mutation_probability[23:0];
            end
            ADDR_RANDOM_DATA_0: begin
                rdata <= _random[23:0];
            end
        endcase
    end
end
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++internal registers+++++++++++++
assign I_startGenerating      = _startGenerating;
assign _generatingDone        = O_generatingDone;
assign I_generation_parent1   = _generation_parent1;
assign I_generation_parent2   = _generation_parent2;
assign _generation_child1     = O_generation_child1;
assign _generation_child2     = O_generation_child2;
assign I_mutation_probability = _mutation_probability;
assign I_random               = _random;

// _startGenerating[0:0]
always @(posedge ACLK) begin
    if (w_hs && waddr == ADDR_STARTGENERATING_DATA_0)
        _startGenerating[0:0] <= (WDATA[31:0] & wmask) | (_startGenerating[0:0] & ~wmask);
end

// _generation_parent1[31:0]
always @(posedge ACLK) begin
    if (w_hs && waddr == ADDR_GENERATION_PARENT1_DATA_0)
        _generation_parent1[31:0] <= (WDATA[31:0] & wmask) | (_generation_parent1[31:0] & ~wmask);
end

// _generation_parent1[63:32]
always @(posedge ACLK) begin
    if (w_hs && waddr == ADDR_GENERATION_PARENT1_DATA_1)
        _generation_parent1[63:32] <= (WDATA[31:0] & wmask) | (_generation_parent1[63:32] & ~wmask);
end

// _generation_parent2[31:0]
always @(posedge ACLK) begin
    if (w_hs && waddr == ADDR_GENERATION_PARENT2_DATA_0)
        _generation_parent2[31:0] <= (WDATA[31:0] & wmask) | (_generation_parent2[31:0] & ~wmask);
end

// _generation_parent2[63:32]
always @(posedge ACLK) begin
    if (w_hs && waddr == ADDR_GENERATION_PARENT2_DATA_1)
        _generation_parent2[63:32] <= (WDATA[31:0] & wmask) | (_generation_parent2[63:32] & ~wmask);
end

// _mutation_probability[23:0]
always @(posedge ACLK) begin
    if (w_hs && waddr == ADDR_MUTATION_PROBABILITY_DATA_0)
        _mutation_probability[23:0] <= (WDATA[31:0] & wmask) | (_mutation_probability[23:0] & ~wmask);
end

// _random[23:0]
always @(posedge ACLK) begin
    if (w_hs && waddr == ADDR_RANDOM_DATA_0)
        _random[23:0] <= (WDATA[31:0] & wmask) | (_random[23:0] & ~wmask);
end

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++

endmodule
