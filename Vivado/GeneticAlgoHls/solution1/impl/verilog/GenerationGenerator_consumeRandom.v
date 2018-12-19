// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module GenerationGenerator_consumeRandom (
        ap_clk,
        ap_rst,
        random,
        GenerationGenerator_randomNumberIndex_V_i,
        GenerationGenerator_randomNumberIndex_V_o,
        GenerationGenerator_randomNumberIndex_V_o_ap_vld,
        GenerationGenerator_randomNumbers_V_address0,
        GenerationGenerator_randomNumbers_V_ce0,
        GenerationGenerator_randomNumbers_V_we0,
        GenerationGenerator_randomNumbers_V_d0
);

parameter    ap_ST_fsm_state2 = 2'd2;

input   ap_clk;
input   ap_rst;
input  [23:0] random;
input  [23:0] GenerationGenerator_randomNumberIndex_V_i;
output  [23:0] GenerationGenerator_randomNumberIndex_V_o;
output   GenerationGenerator_randomNumberIndex_V_o_ap_vld;
output  [7:0] GenerationGenerator_randomNumbers_V_address0;
output   GenerationGenerator_randomNumbers_V_ce0;
output   GenerationGenerator_randomNumbers_V_we0;
output  [23:0] GenerationGenerator_randomNumbers_V_d0;

reg GenerationGenerator_randomNumberIndex_V_o_ap_vld;
reg GenerationGenerator_randomNumbers_V_ce0;
reg GenerationGenerator_randomNumbers_V_we0;

wire   [31:0] tmp_fu_136_p1;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state2;
wire   [0:0] tmp_s_fu_141_p2;
wire   [23:0] tmp_17_fu_147_p2;
reg   [1:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd2;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b0) begin
        ap_CS_fsm <= ap_ST_fsm_state2;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        GenerationGenerator_randomNumberIndex_V_o_ap_vld = 1'b1;
    end else begin
        GenerationGenerator_randomNumberIndex_V_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        GenerationGenerator_randomNumbers_V_ce0 = 1'b1;
    end else begin
        GenerationGenerator_randomNumbers_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        GenerationGenerator_randomNumbers_V_we0 = 1'b1;
    end else begin
        GenerationGenerator_randomNumbers_V_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign GenerationGenerator_randomNumberIndex_V_o = ((tmp_s_fu_141_p2[0:0] === 1'b1) ? 24'd0 : tmp_17_fu_147_p2);

assign GenerationGenerator_randomNumbers_V_address0 = tmp_fu_136_p1;

assign GenerationGenerator_randomNumbers_V_d0 = random;

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign tmp_17_fu_147_p2 = (GenerationGenerator_randomNumberIndex_V_i + 24'd1);

assign tmp_fu_136_p1 = GenerationGenerator_randomNumberIndex_V_i;

assign tmp_s_fu_141_p2 = ((GenerationGenerator_randomNumberIndex_V_i == 24'd23) ? 1'b1 : 1'b0);

endmodule //GenerationGenerator_consumeRandom
