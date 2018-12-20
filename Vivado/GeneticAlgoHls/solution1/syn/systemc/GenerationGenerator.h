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

#include "GenerationGenerator_generateGeneration.h"
#include "GenerationGenerator_produceRandom.h"
#include "GenerationGeneratbkb.h"

namespace ap_rtl {

struct GenerationGenerator : public sc_module {
    // Port declarations 10
    sc_in_clk clk;
    sc_in< sc_logic > reset;
    sc_in< sc_logic > startGenerating;
    sc_out< sc_logic > generatingDone;
    sc_in< sc_lv<64> > generation_parent1;
    sc_in< sc_lv<64> > generation_parent2;
    sc_out< sc_lv<64> > generation_child1;
    sc_out< sc_lv<64> > generation_child2;
    sc_in< sc_lv<24> > mutation_probability;
    sc_in< sc_lv<24> > random;


    // Module declarations
    GenerationGenerator(sc_module_name name);
    SC_HAS_PROCESS(GenerationGenerator);

    ~GenerationGenerator();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    GenerationGeneratbkb* GenerationGenerator_randomNumbers_V_U;
    GenerationGenerator_generateGeneration* grp_GenerationGenerator_generateGeneration_fu_104;
    GenerationGenerator_produceRandom* grp_GenerationGenerator_produceRandom_fu_134;
    sc_signal< sc_lv<8> > GenerationGenerator_randomNumbers_V_address0;
    sc_signal< sc_logic > GenerationGenerator_randomNumbers_V_ce0;
    sc_signal< sc_lv<24> > GenerationGenerator_randomNumbers_V_q0;
    sc_signal< sc_lv<1> > GenerationGenerator_s_load_fu_164_p1;
    sc_signal< sc_lv<2> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > grp_GenerationGenerator_generateGeneration_fu_104_generatingDone;
    sc_signal< sc_logic > grp_GenerationGenerator_generateGeneration_fu_104_generatingDone_ap_vld;
    sc_signal< sc_lv<64> > grp_GenerationGenerator_generateGeneration_fu_104_generation_child1;
    sc_signal< sc_logic > grp_GenerationGenerator_generateGeneration_fu_104_generation_child1_ap_vld;
    sc_signal< sc_lv<64> > grp_GenerationGenerator_generateGeneration_fu_104_generation_child2;
    sc_signal< sc_logic > grp_GenerationGenerator_generateGeneration_fu_104_generation_child2_ap_vld;
    sc_signal< sc_lv<24> > grp_GenerationGenerator_generateGeneration_fu_104_GenerationGenerator_trueRandomIndex_V_o;
    sc_signal< sc_logic > grp_GenerationGenerator_generateGeneration_fu_104_GenerationGenerator_trueRandomIndex_V_o_ap_vld;
    sc_signal< sc_lv<8> > grp_GenerationGenerator_generateGeneration_fu_104_GenerationGenerator_randomNumbers_V_address0;
    sc_signal< sc_logic > grp_GenerationGenerator_generateGeneration_fu_104_GenerationGenerator_randomNumbers_V_ce0;
    sc_signal< sc_lv<24> > grp_GenerationGenerator_produceRandom_fu_134_GenerationGenerator_randomNumberIndex_V_o;
    sc_signal< sc_logic > grp_GenerationGenerator_produceRandom_fu_134_GenerationGenerator_randomNumberIndex_V_o_ap_vld;
    sc_signal< sc_lv<8> > grp_GenerationGenerator_produceRandom_fu_134_GenerationGenerator_randomNumbers_V_address0;
    sc_signal< sc_logic > grp_GenerationGenerator_produceRandom_fu_134_GenerationGenerator_randomNumbers_V_ce0;
    sc_signal< sc_logic > grp_GenerationGenerator_produceRandom_fu_134_GenerationGenerator_randomNumbers_V_we0;
    sc_signal< sc_lv<24> > grp_GenerationGenerator_produceRandom_fu_134_GenerationGenerator_randomNumbers_V_d0;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<24> > GenerationGenerator_randomNumberIndex_V;
    sc_signal< sc_lv<24> > GenerationGenerator_trueRandomIndex_V;
    sc_signal< sc_lv<1> > GenerationGenerator_1_load_fu_168_p1;
    static const sc_logic ap_const_logic_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<24> ap_const_lv24_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_logic ap_const_logic_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_GenerationGenerator_randomNumberIndex_V();
    void thread_GenerationGenerator_trueRandomIndex_V();
    void thread_generatingDone();
    void thread_generation_child1();
    void thread_generation_child2();
    void thread_GenerationGenerator_1_load_fu_168_p1();
    void thread_GenerationGenerator_randomNumbers_V_address0();
    void thread_GenerationGenerator_randomNumbers_V_ce0();
    void thread_GenerationGenerator_s_load_fu_164_p1();
    void thread_ap_CS_fsm();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
