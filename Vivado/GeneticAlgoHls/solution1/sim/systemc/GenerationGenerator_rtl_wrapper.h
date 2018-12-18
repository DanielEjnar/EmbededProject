//RTL Wrapper auto-generated by Vivado HLS.
#include "GenerationGenerator.h"


SC_MODULE(GenerationGenerator_rtl_wrapper) {

    //ESL interface.

    sc_in<bool > clk;

    sc_in<bool > reset;

    sc_in<sc_uint<16> > generation_parent1;

    sc_in<sc_uint<16> > generation_parent2;

    sc_out<sc_uint<16> > generation_child1;

    sc_out<sc_uint<16> > generation_child2;

    sc_in<sc_uint<24> > mutation_probability;

    sc_in<sc_uint<24> > random;

    //RTL interface signals.

    sc_signal<sc_logic > rtl_clk;

    sc_signal<sc_logic > rtl_reset;

    sc_signal<sc_lv<16> > rtl_generation_parent1;

    sc_signal<sc_lv<16> > rtl_generation_parent2;

    sc_signal<sc_lv<16> > rtl_generation_child1;

    sc_signal<sc_lv<16> > rtl_generation_child2;

    sc_signal<sc_lv<24> > rtl_mutation_probability;

    sc_signal<sc_lv<24> > rtl_random;

    sc_signal<sc_logic> ap_reset;  // Added by AutoWrap.


GenerationGenerator* GenerationGenerator_inst;

    SC_CTOR(GenerationGenerator_rtl_wrapper) { 

        GenerationGenerator_inst = new GenerationGenerator("GenerationGenerator_rtl_inst");


        initInstances(GenerationGenerator_inst);

        SC_METHOD(signal_connection);

        sensitive<<clk<<reset<<generation_parent1<<generation_parent2<<rtl_generation_child1<<rtl_generation_child2<<mutation_probability<<random;

        SC_CTHREAD(proc_rst, .pos());


    }

    ~GenerationGenerator_rtl_wrapper() {

    delete GenerationGenerator_inst;

    }

    void initInstances(GenerationGenerator * GenerationGenerator_inst) {

        //The RTL model.

        
        GenerationGenerator_inst->clk(rtl_clk);

        GenerationGenerator_inst->reset(rtl_reset);

        GenerationGenerator_inst->generation_parent1(rtl_generation_parent1);

        GenerationGenerator_inst->generation_parent2(rtl_generation_parent2);

        GenerationGenerator_inst->generation_child1(rtl_generation_child1);

        GenerationGenerator_inst->generation_child2(rtl_generation_child2);

        GenerationGenerator_inst->mutation_probability(rtl_mutation_probability);

        GenerationGenerator_inst->random(rtl_random);

        GenerationGenerator_inst->ap_rst(ap_reset);

    }


    void signal_connection() {

        rtl_clk.write((sc_logic)(clk.read()));

        rtl_reset.write((sc_logic)(reset.read()));

        rtl_generation_parent1.write((sc_lv<16>)(generation_parent1.read()));

        rtl_generation_parent2.write((sc_lv<16>)(generation_parent2.read()));

        generation_child1.write((sc_lv<16>)(rtl_generation_child1.read()));


        generation_child2.write((sc_lv<16>)(rtl_generation_child2.read()));


        rtl_mutation_probability.write((sc_lv<24>)(mutation_probability.read()));

        rtl_random.write((sc_lv<24>)(random.read()));

    }


    void proc_rst() {

        ap_reset.write(SC_LOGIC_1);

        wait();

        ap_reset.write(SC_LOGIC_0);

    }

};
