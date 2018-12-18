// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _GenerationGenerator_HH_
#define _GenerationGenerator_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "GenerationGenerator_consumeRandom.h"
#include "GenerationGenerator_generateGeneration.h"
#include "GenerationGeneratbkb.h"

namespace ap_rtl {

struct GenerationGenerator : public sc_module {
    // Port declarations 10
    sc_in< sc_logic > clk;
    sc_in< sc_logic > reset;
    sc_in< sc_lv<16> > generation_parent1;
    sc_in< sc_lv<16> > generation_parent2;
    sc_out< sc_lv<16> > generation_child1;
    sc_out< sc_lv<16> > generation_child2;
    sc_in< sc_lv<24> > mutation_probability;
    sc_in< sc_lv<24> > random;
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    // Internal clock declarations for combination SystemC design. 
    sc_clock ap_sc_inter_clock;


    // Module declarations
    GenerationGenerator(sc_module_name name);
    SC_HAS_PROCESS(GenerationGenerator);

    ~GenerationGenerator();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    GenerationGeneratbkb* GenerationGenerator_randomNumbers_V_U;
    GenerationGenerator_consumeRandom* StgValue_19_GenerationGenerator_consumeRandom_fu_92;
    GenerationGenerator_generateGeneration* grp_GenerationGenerator_generateGeneration_fu_118;
    sc_signal< sc_lv<8> > GenerationGenerator_randomNumbers_V_address0;
    sc_signal< sc_logic > GenerationGenerator_randomNumbers_V_ce0;
    sc_signal< sc_lv<24> > GenerationGenerator_randomNumbers_V_q0;
    sc_signal< sc_lv<24> > GenerationGenerator_randomNumbers_V_q1;
    sc_signal< sc_lv<24> > StgValue_19_GenerationGenerator_consumeRandom_fu_92_GenerationGenerator_randomNumberIndex_V_o;
    sc_signal< sc_logic > StgValue_19_GenerationGenerator_consumeRandom_fu_92_GenerationGenerator_randomNumberIndex_V_o_ap_vld;
    sc_signal< sc_lv<8> > StgValue_19_GenerationGenerator_consumeRandom_fu_92_GenerationGenerator_randomNumbers_V_address0;
    sc_signal< sc_logic > StgValue_19_GenerationGenerator_consumeRandom_fu_92_GenerationGenerator_randomNumbers_V_ce0;
    sc_signal< sc_logic > StgValue_19_GenerationGenerator_consumeRandom_fu_92_GenerationGenerator_randomNumbers_V_we0;
    sc_signal< sc_lv<24> > StgValue_19_GenerationGenerator_consumeRandom_fu_92_GenerationGenerator_randomNumbers_V_d0;
    sc_signal< sc_lv<16> > grp_GenerationGenerator_generateGeneration_fu_118_generation_child1;
    sc_signal< sc_logic > grp_GenerationGenerator_generateGeneration_fu_118_generation_child1_ap_vld;
    sc_signal< sc_lv<16> > grp_GenerationGenerator_generateGeneration_fu_118_generation_child2;
    sc_signal< sc_logic > grp_GenerationGenerator_generateGeneration_fu_118_generation_child2_ap_vld;
    sc_signal< sc_lv<24> > grp_GenerationGenerator_generateGeneration_fu_118_GenerationGenerator_trueRandomIndex_V_o;
    sc_signal< sc_logic > grp_GenerationGenerator_generateGeneration_fu_118_GenerationGenerator_trueRandomIndex_V_o_ap_vld;
    sc_signal< sc_lv<8> > grp_GenerationGenerator_generateGeneration_fu_118_GenerationGenerator_randomNumbers_V_address0;
    sc_signal< sc_logic > grp_GenerationGenerator_generateGeneration_fu_118_GenerationGenerator_randomNumbers_V_ce0;
    sc_signal< sc_lv<8> > grp_GenerationGenerator_generateGeneration_fu_118_GenerationGenerator_randomNumbers_V_address1;
    sc_signal< sc_logic > grp_GenerationGenerator_generateGeneration_fu_118_GenerationGenerator_randomNumbers_V_ce1;
    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<1> > GenerationGenerator_s_load_fu_144_p1;
    sc_signal< sc_lv<24> > GenerationGenerator_randomNumberIndex_V;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<24> > GenerationGenerator_trueRandomIndex_V;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    static const sc_logic ap_const_logic_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<24> ap_const_lv24_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_logic ap_const_logic_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_GenerationGenerator_trueRandomIndex_V();
    void thread_generation_child1();
    void thread_generation_child2();
    void thread_GenerationGenerator_randomNumberIndex_V();
    void thread_GenerationGenerator_randomNumbers_V_address0();
    void thread_GenerationGenerator_randomNumbers_V_ce0();
    void thread_GenerationGenerator_s_load_fu_144_p1();
    void thread_ap_CS_fsm();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
