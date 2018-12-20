// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _RosenbrockSimulator_HH_
#define _RosenbrockSimulator_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "RosenbrockSimulator_simulateRosenbrock.h"

namespace ap_rtl {

struct RosenbrockSimulator : public sc_module {
    // Port declarations 8
    sc_in_clk clk;
    sc_in< sc_logic > reset;
    sc_in< sc_logic > startSimulation;
    sc_out< sc_logic > simulationDone;
    sc_in< sc_lv<32> > a;
    sc_in< sc_lv<32> > b;
    sc_in< sc_lv<64> > chromosome_in;
    sc_out< sc_lv<32> > fitness;


    // Module declarations
    RosenbrockSimulator(sc_module_name name);
    SC_HAS_PROCESS(RosenbrockSimulator);

    ~RosenbrockSimulator();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    RosenbrockSimulator_simulateRosenbrock* grp_RosenbrockSimulator_simulateRosenbrock_fu_88;
    sc_signal< sc_logic > grp_RosenbrockSimulator_simulateRosenbrock_fu_88_simulationDone;
    sc_signal< sc_logic > grp_RosenbrockSimulator_simulateRosenbrock_fu_88_simulationDone_ap_vld;
    sc_signal< sc_lv<32> > grp_RosenbrockSimulator_simulateRosenbrock_fu_88_fitness;
    sc_signal< sc_logic > grp_RosenbrockSimulator_simulateRosenbrock_fu_88_fitness_ap_vld;
    sc_signal< sc_lv<2> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    static const sc_logic ap_const_logic_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_logic ap_const_logic_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_fitness();
    void thread_simulationDone();
    void thread_ap_CS_fsm();
    void thread_ap_CS_fsm_state2();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
