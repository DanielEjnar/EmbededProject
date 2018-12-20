#ifdef _MSC_VER
	#include "stdafx.h"
#endif
#include <systemc.h>
#include "GenerationGenerator.h"
#include "Stim.h"

#define CLK_PERIODE   20//ns
int sc_main(int argc, char* argv[]) {

	GenerationGenerator GenerationGenerator("GenerationGenerator");
	Stim Stim("Stim");

	sc_clock clock("clock", sc_time(CLK_PERIODE, SC_NS)); // 50 MHz
	sc_signal<bool> reset("reset");

	sc_signal<sc_uint<CHROMOSOME_WIDTH> > generation_parent1_in_channel;
	sc_signal<sc_uint<CHROMOSOME_WIDTH> > generation_parent2_in_channel;
	sc_signal<sc_uint<CHROMOSOME_WIDTH> > generation_child1_out_channel;
	sc_signal<sc_uint<CHROMOSOME_WIDTH> > generation_child2_out_channel;
	sc_signal<sc_uint<RANDOM_WIDTH> > mutation_probability_in_channel("mutation_probability_in_channel");
	sc_signal<sc_uint<RANDOM_WIDTH> > random_channel("random_channel");
	sc_signal<bool> generatingDone;
	sc_signal<bool> startGenerating;

	// Wire GenerationGeneraton
	GenerationGenerator.generation_parent1(generation_parent1_in_channel);
	GenerationGenerator.generation_parent2(generation_parent2_in_channel);
	GenerationGenerator.generation_child1(generation_child1_out_channel);
	GenerationGenerator.generation_child2(generation_child2_out_channel);
	GenerationGenerator.clk(clock);
	GenerationGenerator.mutation_probability(mutation_probability_in_channel);
	GenerationGenerator.random(random_channel);
	GenerationGenerator.reset(reset);
	GenerationGenerator.startGenerating(startGenerating);
	GenerationGenerator.generatingDone(generatingDone);

	// Wire Stim
	Stim.generation_parent1(generation_parent1_in_channel);
	Stim.generation_parent2(generation_parent2_in_channel);
	Stim.clk(clock);
	Stim.mutation_probability(mutation_probability_in_channel);
	Stim.random(random_channel);
	Stim.startGenerating(startGenerating);
	Stim.generatingDone(generatingDone);

	// Open VCD file
	sc_trace_file *tf = sc_create_vcd_trace_file("GenerationGenerator");
	tf->set_time_unit(1, SC_NS);
	sc_trace(tf, clock, "clock");
	sc_trace(tf, generation_parent1_in_channel, "generation_parent1_in_channel");
	sc_trace(tf, generation_parent2_in_channel, "generation_parent2_in_channel");
	sc_trace(tf, generation_child1_out_channel, "generation_child1_out_channel");
	sc_trace(tf, generation_child2_out_channel, "generation_child2_out_channel");
	sc_trace(tf, mutation_probability_in_channel, "mutation_probability_in_channel");
	sc_trace(tf, random_channel, "random_in_channel");
	sc_trace(tf, startGenerating, "startGenerating");
	sc_trace(tf, generatingDone, "generatingDone");

	reset = true;

	sc_start(4000,SC_NS);
	sc_close_vcd_trace_file(tf);
	return 0;
}
