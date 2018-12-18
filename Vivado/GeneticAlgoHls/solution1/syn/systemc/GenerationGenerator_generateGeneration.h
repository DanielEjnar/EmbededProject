// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _GenerationGenerator_generateGeneration_HH_
#define _GenerationGenerator_generateGeneration_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct GenerationGenerator_generateGeneration : public sc_module {
    // Port declarations 21
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > startGenerating;
    sc_out< sc_logic > generatingDone;
    sc_out< sc_logic > generatingDone_ap_vld;
    sc_in< sc_lv<16> > generation_parent1;
    sc_in< sc_lv<16> > generation_parent2;
    sc_out< sc_lv<16> > generation_child1;
    sc_out< sc_logic > generation_child1_ap_vld;
    sc_out< sc_lv<16> > generation_child2;
    sc_out< sc_logic > generation_child2_ap_vld;
    sc_in< sc_lv<24> > mutation_probability;
    sc_in< sc_lv<24> > GenerationGenerator_trueRandomIndex_V_i;
    sc_out< sc_lv<24> > GenerationGenerator_trueRandomIndex_V_o;
    sc_out< sc_logic > GenerationGenerator_trueRandomIndex_V_o_ap_vld;
    sc_out< sc_lv<8> > GenerationGenerator_randomNumbers_V_address0;
    sc_out< sc_logic > GenerationGenerator_randomNumbers_V_ce0;
    sc_in< sc_lv<24> > GenerationGenerator_randomNumbers_V_q0;
    sc_out< sc_lv<8> > GenerationGenerator_randomNumbers_V_address1;
    sc_out< sc_logic > GenerationGenerator_randomNumbers_V_ce1;
    sc_in< sc_lv<24> > GenerationGenerator_randomNumbers_V_q1;


    // Module declarations
    GenerationGenerator_generateGeneration(sc_module_name name);
    SC_HAS_PROCESS(GenerationGenerator_generateGeneration);

    ~GenerationGenerator_generateGeneration();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<8> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > tmp_read_fu_150_p2;
    sc_signal< sc_lv<24> > storemerge_i_fu_336_p3;
    sc_signal< sc_lv<24> > storemerge_i_reg_661;
    sc_signal< sc_lv<5> > tmp_9_reg_672;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<5> > tmp_10_reg_679;
    sc_signal< sc_lv<24> > p_tmp_s_fu_423_p3;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<16> > child1_V_fu_500_p2;
    sc_signal< sc_lv<16> > child2_V_fu_518_p2;
    sc_signal< sc_lv<16> > child2_V_reg_696;
    sc_signal< sc_lv<24> > val_V_reg_701;
    sc_signal< sc_lv<16> > j_cast2_fu_524_p1;
    sc_signal< sc_lv<16> > j_cast2_reg_707;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<5> > j_1_fu_534_p2;
    sc_signal< sc_lv<5> > j_1_reg_715;
    sc_signal< sc_lv<1> > exitcond1_fu_528_p2;
    sc_signal< sc_lv<24> > p_tmp_1_fu_557_p3;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<16> > child1_V_2_fu_584_p2;
    sc_signal< sc_lv<16> > j1_cast1_fu_590_p1;
    sc_signal< sc_lv<16> > j1_cast1_reg_735;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<5> > j_2_fu_600_p2;
    sc_signal< sc_lv<5> > j_2_reg_743;
    sc_signal< sc_lv<1> > exitcond_fu_594_p2;
    sc_signal< sc_lv<24> > p_tmp_2_fu_623_p3;
    sc_signal< sc_lv<24> > p_tmp_2_reg_753;
    sc_signal< sc_lv<16> > child2_V_2_fu_650_p2;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<24> > GenerationGenerator_5_reg_249;
    sc_signal< sc_lv<16> > v_V_reg_259;
    sc_signal< sc_lv<5> > j_reg_270;
    sc_signal< sc_lv<24> > GenerationGenerator_8_reg_281;
    sc_signal< sc_lv<16> > v_V_1_reg_291;
    sc_signal< sc_lv<5> > j1_reg_302;
    sc_signal< sc_lv<32> > tmp_s_fu_319_p1;
    sc_signal< sc_lv<32> > tmp_4_fu_344_p1;
    sc_signal< sc_lv<32> > tmp_13_fu_540_p1;
    sc_signal< sc_lv<32> > tmp_17_fu_606_p1;
    sc_signal< sc_lv<1> > tmp_2_fu_324_p2;
    sc_signal< sc_lv<24> > tmp_3_fu_330_p2;
    sc_signal< sc_lv<28> > p_shl6_fu_353_p3;
    sc_signal< sc_lv<29> > p_shl6_cast_fu_361_p1;
    sc_signal< sc_lv<29> > tmp_7_cast4_fu_349_p1;
    sc_signal< sc_lv<29> > tmp_8_fu_365_p2;
    sc_signal< sc_lv<28> > p_shl_fu_385_p3;
    sc_signal< sc_lv<29> > p_shl_cast_fu_393_p1;
    sc_signal< sc_lv<29> > tmp_10_cast3_fu_381_p1;
    sc_signal< sc_lv<29> > tmp_7_fu_397_p2;
    sc_signal< sc_lv<1> > tmp_5_fu_413_p2;
    sc_signal< sc_lv<24> > tmp_6_fu_418_p2;
    sc_signal< sc_lv<1> > tmp_11_fu_432_p2;
    sc_signal< sc_lv<5> > highNum_V_fu_436_p3;
    sc_signal< sc_lv<5> > lowNum_V_fu_446_p3;
    sc_signal< sc_lv<16> > lowNum_V_cast_fu_452_p1;
    sc_signal< sc_lv<16> > highNum_V_cast_fu_442_p1;
    sc_signal< sc_lv<17> > tmp_16_cast_fu_462_p1;
    sc_signal< sc_lv<17> > rhs_V_fu_466_p2;
    sc_signal< sc_lv<16> > r_V_fu_456_p2;
    sc_signal< sc_lv<16> > tmp_12_fu_472_p1;
    sc_signal< sc_lv<16> > bitMask1_V_fu_476_p2;
    sc_signal< sc_lv<16> > bitMask2_V_fu_482_p2;
    sc_signal< sc_lv<16> > r_V_1_fu_488_p2;
    sc_signal< sc_lv<16> > r_V_2_fu_494_p2;
    sc_signal< sc_lv<16> > r_V_3_fu_506_p2;
    sc_signal< sc_lv<16> > r_V_4_fu_512_p2;
    sc_signal< sc_lv<1> > tmp_14_fu_545_p2;
    sc_signal< sc_lv<24> > tmp_15_fu_551_p2;
    sc_signal< sc_lv<1> > tmp_16_fu_566_p2;
    sc_signal< sc_lv<16> > op2_assign_fu_571_p2;
    sc_signal< sc_lv<16> > child1_V_1_fu_576_p3;
    sc_signal< sc_lv<1> > tmp_18_fu_611_p2;
    sc_signal< sc_lv<24> > tmp_19_fu_617_p2;
    sc_signal< sc_lv<1> > tmp_20_fu_632_p2;
    sc_signal< sc_lv<16> > op2_assign_1_fu_637_p2;
    sc_signal< sc_lv<16> > child2_V_1_fu_642_p3;
    sc_signal< sc_lv<8> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<8> ap_ST_fsm_state2;
    static const sc_lv<8> ap_ST_fsm_state3;
    static const sc_lv<8> ap_ST_fsm_state4;
    static const sc_lv<8> ap_ST_fsm_state5;
    static const sc_lv<8> ap_ST_fsm_state6;
    static const sc_lv<8> ap_ST_fsm_state7;
    static const sc_lv<8> ap_ST_fsm_state8;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<24> ap_const_lv24_17;
    static const sc_lv<24> ap_const_lv24_1;
    static const sc_lv<24> ap_const_lv24_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_1C;
    static const sc_lv<16> ap_const_lv16_FFFF;
    static const sc_lv<17> ap_const_lv17_10000;
    static const sc_lv<5> ap_const_lv5_10;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<16> ap_const_lv16_1;
    static const sc_lv<16> ap_const_lv16_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_GenerationGenerator_randomNumbers_V_address0();
    void thread_GenerationGenerator_randomNumbers_V_address1();
    void thread_GenerationGenerator_randomNumbers_V_ce0();
    void thread_GenerationGenerator_randomNumbers_V_ce1();
    void thread_GenerationGenerator_trueRandomIndex_V_o();
    void thread_GenerationGenerator_trueRandomIndex_V_o_ap_vld();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_bitMask1_V_fu_476_p2();
    void thread_bitMask2_V_fu_482_p2();
    void thread_child1_V_1_fu_576_p3();
    void thread_child1_V_2_fu_584_p2();
    void thread_child1_V_fu_500_p2();
    void thread_child2_V_1_fu_642_p3();
    void thread_child2_V_2_fu_650_p2();
    void thread_child2_V_fu_518_p2();
    void thread_exitcond1_fu_528_p2();
    void thread_exitcond_fu_594_p2();
    void thread_generatingDone();
    void thread_generatingDone_ap_vld();
    void thread_generation_child1();
    void thread_generation_child1_ap_vld();
    void thread_generation_child2();
    void thread_generation_child2_ap_vld();
    void thread_highNum_V_cast_fu_442_p1();
    void thread_highNum_V_fu_436_p3();
    void thread_j1_cast1_fu_590_p1();
    void thread_j_1_fu_534_p2();
    void thread_j_2_fu_600_p2();
    void thread_j_cast2_fu_524_p1();
    void thread_lowNum_V_cast_fu_452_p1();
    void thread_lowNum_V_fu_446_p3();
    void thread_op2_assign_1_fu_637_p2();
    void thread_op2_assign_fu_571_p2();
    void thread_p_shl6_cast_fu_361_p1();
    void thread_p_shl6_fu_353_p3();
    void thread_p_shl_cast_fu_393_p1();
    void thread_p_shl_fu_385_p3();
    void thread_p_tmp_1_fu_557_p3();
    void thread_p_tmp_2_fu_623_p3();
    void thread_p_tmp_s_fu_423_p3();
    void thread_r_V_1_fu_488_p2();
    void thread_r_V_2_fu_494_p2();
    void thread_r_V_3_fu_506_p2();
    void thread_r_V_4_fu_512_p2();
    void thread_r_V_fu_456_p2();
    void thread_rhs_V_fu_466_p2();
    void thread_storemerge_i_fu_336_p3();
    void thread_tmp_10_cast3_fu_381_p1();
    void thread_tmp_11_fu_432_p2();
    void thread_tmp_12_fu_472_p1();
    void thread_tmp_13_fu_540_p1();
    void thread_tmp_14_fu_545_p2();
    void thread_tmp_15_fu_551_p2();
    void thread_tmp_16_cast_fu_462_p1();
    void thread_tmp_16_fu_566_p2();
    void thread_tmp_17_fu_606_p1();
    void thread_tmp_18_fu_611_p2();
    void thread_tmp_19_fu_617_p2();
    void thread_tmp_20_fu_632_p2();
    void thread_tmp_2_fu_324_p2();
    void thread_tmp_3_fu_330_p2();
    void thread_tmp_4_fu_344_p1();
    void thread_tmp_5_fu_413_p2();
    void thread_tmp_6_fu_418_p2();
    void thread_tmp_7_cast4_fu_349_p1();
    void thread_tmp_7_fu_397_p2();
    void thread_tmp_8_fu_365_p2();
    void thread_tmp_read_fu_150_p2();
    void thread_tmp_s_fu_319_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
