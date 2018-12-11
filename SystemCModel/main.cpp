#include "stdafx.h"
#include <systemc.h>
#include "GenerationGenerator.h"
#include "Stim.h"

#define CLK_PERIODE   20//ns
int sc_main(int argc, char* argv[]) {

	GenerationGenerator GenerationGenetor("GenerationGenetor");
	Stim Stim("Stim");
	
	sc_clock clock("clock", sc_time(CLK_PERIODE, SC_NS) ); // 50 MHz

	sc_signal<sc_uint<CHROMOSOME_WIDTH>> generation_in_channel[GENERATION_SIZE];
	sc_signal<sc_int<FITNESS_WIDTH>> generation_fitness_in_channel[FITNESS_WIDTH];
	sc_signal<sc_uint<CHROMOSOME_WIDTH>> generation_out_channel[GENERATION_SIZE];
	sc_signal<sc_uint<RANDOM_WIDTH>> mutation_probability_in_channel;
	sc_signal<sc_uint<RANDOM_WIDTH>> random_channel;

	// Wire GenerationGenerator
	for(int i = 0; i < FITNESS_WIDTH; i++) {
		GenerationGenetor.generation_fitness[i](generation_fitness_in_channel[i]);
	}

	for(int i = 0; i < GENERATION_SIZE; i++) {
		GenerationGenetor.generation_in[i](generation_in_channel[i]);
		GenerationGenetor.generation_out[i](generation_out_channel[i]);
	}
	GenerationGenetor.clk(clock);
	GenerationGenetor.mutation_probability(mutation_probability_in_channel);
	GenerationGenetor.random(random_channel);

	// Wire Stim
	for (int i = 0; i < FITNESS_WIDTH; i++) {
		Stim.generation_fitness[i](generation_fitness_in_channel[i]);
	}

	for (int i = 0; i < GENERATION_SIZE; i++) {
		Stim.generation_in[i](generation_in_channel[i]);
		Stim.generation_out[i](generation_out_channel[i]);
	}
	Stim.clk(clock);
	Stim.mutation_probability(mutation_probability_in_channel);
	Stim.random(random_channel);

	// Open VCD file
	sc_trace_file *tf = sc_create_vcd_trace_file("GenerationGenerator");
	tf->set_time_unit(1, SC_NS);
	sc_trace(tf, clock, "clock");
	sc_trace(tf, generation_in_channel, "generation_in_channel");
	sc_trace(tf, generation_fitness_in_channel, "generation_fitness_in_channel");
	sc_trace(tf, generation_out_channel, "generation_out_channel");
	sc_trace(tf, mutation_probability_in_channel, "mutation_probability_in_channel");
	sc_trace(tf, random_channel, "random_in_channel");

	sc_start(2000,SC_NS);
	sc_close_vcd_trace_file(tf);
	return 0;
}