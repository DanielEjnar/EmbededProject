// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module GenerationGenerator_generateGeneration (
        ap_clk,
        ap_rst,
        startGenerating,
        generatingDone,
        generatingDone_ap_vld,
        generation_parent1,
        generation_parent2,
        generation_child1,
        generation_child1_ap_vld,
        generation_child2,
        generation_child2_ap_vld,
        mutation_probability,
        GenerationGenerator_trueRandomIndex_V_i,
        GenerationGenerator_trueRandomIndex_V_o,
        GenerationGenerator_trueRandomIndex_V_o_ap_vld,
        GenerationGenerator_randomNumbers_V_address0,
        GenerationGenerator_randomNumbers_V_ce0,
        GenerationGenerator_randomNumbers_V_q0
);

parameter    ap_ST_fsm_state2 = 15'd2;
parameter    ap_ST_fsm_state3 = 15'd4;
parameter    ap_ST_fsm_state4 = 15'd8;
parameter    ap_ST_fsm_state5 = 15'd16;
parameter    ap_ST_fsm_state6 = 15'd32;
parameter    ap_ST_fsm_state7 = 15'd64;
parameter    ap_ST_fsm_state8 = 15'd128;
parameter    ap_ST_fsm_state9 = 15'd256;
parameter    ap_ST_fsm_state10 = 15'd512;
parameter    ap_ST_fsm_state11 = 15'd1024;
parameter    ap_ST_fsm_state12 = 15'd2048;
parameter    ap_ST_fsm_state13 = 15'd4096;
parameter    ap_ST_fsm_state14 = 15'd8192;
parameter    ap_ST_fsm_state15 = 15'd16384;

input   ap_clk;
input   ap_rst;
input   startGenerating;
output   generatingDone;
output   generatingDone_ap_vld;
input  [63:0] generation_parent1;
input  [63:0] generation_parent2;
output  [63:0] generation_child1;
output   generation_child1_ap_vld;
output  [63:0] generation_child2;
output   generation_child2_ap_vld;
input  [23:0] mutation_probability;
input  [23:0] GenerationGenerator_trueRandomIndex_V_i;
output  [23:0] GenerationGenerator_trueRandomIndex_V_o;
output   GenerationGenerator_trueRandomIndex_V_o_ap_vld;
output  [7:0] GenerationGenerator_randomNumbers_V_address0;
output   GenerationGenerator_randomNumbers_V_ce0;
input  [23:0] GenerationGenerator_randomNumbers_V_q0;

reg generatingDone;
reg generatingDone_ap_vld;
reg generation_child1_ap_vld;
reg generation_child2_ap_vld;
reg[23:0] GenerationGenerator_trueRandomIndex_V_o;
reg GenerationGenerator_trueRandomIndex_V_o_ap_vld;
reg[7:0] GenerationGenerator_randomNumbers_V_address0;
reg GenerationGenerator_randomNumbers_V_ce0;

reg   [63:0] val_V_3_reg_472;
(* fsm_encoding = "none" *) reg   [14:0] ap_CS_fsm;
wire    ap_CS_fsm_state3;
reg   [63:0] val_V_4_reg_477;
wire    ap_CS_fsm_state4;
wire   [23:0] p_tmp_s_fu_319_p3;
reg   [23:0] p_tmp_s_reg_482;
wire    ap_CS_fsm_state5;
reg   [23:0] val_V_reg_487;
wire   [6:0] j_1_fu_334_p2;
reg   [6:0] j_1_reg_495;
wire    ap_CS_fsm_state7;
wire   [0:0] exitcond1_fu_328_p2;
wire   [23:0] p_tmp_1_fu_361_p3;
wire    ap_CS_fsm_state8;
wire   [63:0] child1_V_2_fu_388_p2;
wire   [6:0] j_2_fu_400_p2;
reg   [6:0] j_2_reg_518;
wire    ap_CS_fsm_state10;
wire   [0:0] exitcond_fu_394_p2;
wire   [23:0] p_tmp_2_fu_423_p3;
reg   [23:0] p_tmp_2_reg_528;
wire   [63:0] child2_V_2_fu_454_p2;
wire    ap_CS_fsm_state11;
reg   [23:0] GenerationGenerator_2_reg_210;
wire    ap_CS_fsm_state6;
reg   [63:0] v_V_reg_220;
reg   [6:0] j_reg_231;
reg   [23:0] GenerationGenerator_5_reg_243;
wire    ap_CS_fsm_state9;
reg   [63:0] v_V_1_reg_253;
reg   [6:0] j1_reg_264;
wire   [31:0] tmp_9_fu_340_p1;
wire   [31:0] tmp_13_fu_406_p1;
wire   [0:0] grp_read_fu_130_p2;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state15;
wire   [0:0] tmp_11_fu_460_p2;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state13;
wire   [0:0] tmp_2_fu_287_p2;
wire   [23:0] tmp_3_fu_293_p2;
wire   [23:0] storemerge_i_fu_299_p3;
wire   [0:0] tmp_6_fu_307_p2;
wire   [23:0] tmp_7_fu_313_p2;
wire   [0:0] tmp_s_fu_349_p2;
wire   [23:0] tmp_1_fu_355_p2;
wire   [31:0] j_cast2_fu_345_p1;
wire   [0:0] grp_fu_276_p2;
wire   [31:0] op2_assign_fu_370_p2;
wire   [31:0] child1_V_1_fu_376_p3;
wire  signed [63:0] child1_V_1_cast_fu_384_p1;
wire   [0:0] tmp_14_fu_411_p2;
wire   [23:0] tmp_15_fu_417_p2;
wire   [31:0] j1_cast1_fu_432_p1;
wire   [31:0] op2_assign_1_fu_436_p2;
wire   [31:0] child2_V_1_fu_442_p3;
wire  signed [63:0] child2_V_1_cast_fu_450_p1;
wire   [0:0] tmp_11_fu_460_p0;
reg   [14:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 15'd2;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b0) begin
        ap_CS_fsm <= ap_ST_fsm_state2;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        GenerationGenerator_2_reg_210 <= p_tmp_1_fu_361_p3;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        GenerationGenerator_2_reg_210 <= p_tmp_s_reg_482;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        GenerationGenerator_5_reg_243 <= GenerationGenerator_2_reg_210;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        GenerationGenerator_5_reg_243 <= p_tmp_2_reg_528;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        j1_reg_264 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        j1_reg_264 <= j_2_reg_518;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        j_reg_231 <= j_1_reg_495;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        j_reg_231 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v_V_1_reg_253 <= val_V_3_reg_472;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v_V_1_reg_253 <= child2_V_2_fu_454_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        v_V_reg_220 <= child1_V_2_fu_388_p2;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v_V_reg_220 <= val_V_4_reg_477;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        j_1_reg_495 <= j_1_fu_334_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        j_2_reg_518 <= j_2_fu_400_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) & (1'd0 == exitcond_fu_394_p2))) begin
        p_tmp_2_reg_528 <= p_tmp_2_fu_423_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        p_tmp_s_reg_482 <= p_tmp_s_fu_319_p3;
        val_V_reg_487 <= mutation_probability;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        val_V_3_reg_472 <= generation_parent1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        val_V_4_reg_477 <= generation_parent2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        GenerationGenerator_randomNumbers_V_address0 = tmp_13_fu_406_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        GenerationGenerator_randomNumbers_V_address0 = tmp_9_fu_340_p1;
    end else begin
        GenerationGenerator_randomNumbers_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state10))) begin
        GenerationGenerator_randomNumbers_V_ce0 = 1'b1;
    end else begin
        GenerationGenerator_randomNumbers_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) & (1'd0 == exitcond_fu_394_p2))) begin
        GenerationGenerator_trueRandomIndex_V_o = p_tmp_2_fu_423_p3;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        GenerationGenerator_trueRandomIndex_V_o = p_tmp_1_fu_361_p3;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        GenerationGenerator_trueRandomIndex_V_o = p_tmp_s_fu_319_p3;
    end else begin
        GenerationGenerator_trueRandomIndex_V_o = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state8) | ((1'b1 == ap_CS_fsm_state10) & (1'd0 == exitcond_fu_394_p2)))) begin
        GenerationGenerator_trueRandomIndex_V_o_ap_vld = 1'b1;
    end else begin
        GenerationGenerator_trueRandomIndex_V_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        generatingDone = 1'd1;
    end else if (((1'b1 == ap_CS_fsm_state2) & ~(1'd0 == grp_read_fu_130_p2))) begin
        generatingDone = 1'd0;
    end else begin
        generatingDone = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state2) & ~(1'd0 == grp_read_fu_130_p2)) | (1'b1 == ap_CS_fsm_state14))) begin
        generatingDone_ap_vld = 1'b1;
    end else begin
        generatingDone_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        generation_child1_ap_vld = 1'b1;
    end else begin
        generation_child1_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        generation_child2_ap_vld = 1'b1;
    end else begin
        generation_child2_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & ~(1'd0 == grp_read_fu_130_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((1'b1 == ap_CS_fsm_state7) & (exitcond1_fu_328_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((1'b1 == ap_CS_fsm_state10) & (1'd0 == exitcond_fu_394_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            if (((1'b1 == ap_CS_fsm_state15) & ~(1'd0 == tmp_11_fu_460_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign child1_V_1_cast_fu_384_p1 = $signed(child1_V_1_fu_376_p3);

assign child1_V_1_fu_376_p3 = ((grp_fu_276_p2[0:0] === 1'b1) ? op2_assign_fu_370_p2 : 32'd0);

assign child1_V_2_fu_388_p2 = (child1_V_1_cast_fu_384_p1 ^ v_V_reg_220);

assign child2_V_1_cast_fu_450_p1 = $signed(child2_V_1_fu_442_p3);

assign child2_V_1_fu_442_p3 = ((grp_fu_276_p2[0:0] === 1'b1) ? op2_assign_1_fu_436_p2 : 32'd0);

assign child2_V_2_fu_454_p2 = (child2_V_1_cast_fu_450_p1 ^ v_V_1_reg_253);

assign exitcond1_fu_328_p2 = ((j_reg_231 == 7'd64) ? 1'b1 : 1'b0);

assign exitcond_fu_394_p2 = ((j1_reg_264 == 7'd64) ? 1'b1 : 1'b0);

assign generation_child1 = v_V_reg_220;

assign generation_child2 = v_V_1_reg_253;

assign grp_fu_276_p2 = ((GenerationGenerator_randomNumbers_V_q0 < val_V_reg_487) ? 1'b1 : 1'b0);

assign grp_read_fu_130_p2 = startGenerating;

assign j1_cast1_fu_432_p1 = j1_reg_264;

assign j_1_fu_334_p2 = (j_reg_231 + 7'd1);

assign j_2_fu_400_p2 = (j1_reg_264 + 7'd1);

assign j_cast2_fu_345_p1 = j_reg_231;

assign op2_assign_1_fu_436_p2 = 32'd1 << j1_cast1_fu_432_p1;

assign op2_assign_fu_370_p2 = 32'd1 << j_cast2_fu_345_p1;

assign p_tmp_1_fu_361_p3 = ((tmp_s_fu_349_p2[0:0] === 1'b1) ? 24'd0 : tmp_1_fu_355_p2);

assign p_tmp_2_fu_423_p3 = ((tmp_14_fu_411_p2[0:0] === 1'b1) ? 24'd0 : tmp_15_fu_417_p2);

assign p_tmp_s_fu_319_p3 = ((tmp_6_fu_307_p2[0:0] === 1'b1) ? 24'd0 : tmp_7_fu_313_p2);

assign storemerge_i_fu_299_p3 = ((tmp_2_fu_287_p2[0:0] === 1'b1) ? 24'd0 : tmp_3_fu_293_p2);

assign tmp_11_fu_460_p0 = startGenerating;

assign tmp_11_fu_460_p2 = (tmp_11_fu_460_p0 ^ 1'd1);

assign tmp_13_fu_406_p1 = GenerationGenerator_5_reg_243;

assign tmp_14_fu_411_p2 = ((GenerationGenerator_5_reg_243 == 24'd23) ? 1'b1 : 1'b0);

assign tmp_15_fu_417_p2 = (GenerationGenerator_5_reg_243 + 24'd1);

assign tmp_1_fu_355_p2 = (GenerationGenerator_2_reg_210 + 24'd1);

assign tmp_2_fu_287_p2 = ((GenerationGenerator_trueRandomIndex_V_i == 24'd23) ? 1'b1 : 1'b0);

assign tmp_3_fu_293_p2 = (GenerationGenerator_trueRandomIndex_V_i + 24'd1);

assign tmp_6_fu_307_p2 = ((storemerge_i_fu_299_p3 == 24'd23) ? 1'b1 : 1'b0);

assign tmp_7_fu_313_p2 = (storemerge_i_fu_299_p3 + 24'd1);

assign tmp_9_fu_340_p1 = GenerationGenerator_2_reg_210;

assign tmp_s_fu_349_p2 = ((GenerationGenerator_2_reg_210 == 24'd23) ? 1'b1 : 1'b0);

endmodule //GenerationGenerator_generateGeneration
