#ifdef _MSC_VER
	#include "stdafx.h"
#endif
#include <systemc.h>
#include "RosenbrockSimulator.h"
#include "Stim.h"

#define CLK_PERIODE   20//ns
int sc_main(int argc, char* argv[]) {

	RosenbrockSimulator RosenbrockSimulator("RosenbrockSimulator");
	Stim Stim("Stim");

	sc_clock clock("clock", sc_time(CLK_PERIODE, SC_NS)); // 50 MHz
	sc_signal<bool> reset("reset");

	sc_signal<bool> startSimulation;
	sc_signal<bool> simulationDone;
	sc_signal<double> a;
	sc_signal<double> b;
	sc_signal<double> fitness;
	sc_signal<sc_uint<CHROMOSOME_WIDTH> > chromosome_in;

	// Wire GenerationGeneraton
	RosenbrockSimulator.clk(clk);
	RosenbrockSimulator.reset(reset);
	RosenbrockSimulator.startSimulation(startSimulation);
	RosenbrockSimulator.simulationDone(simulationDone);
	RosenbrockSimulator.a(a);
	RosenbrockSimulator.b(b);
	RosenbrockSimulator.chromosome_in(chromosome_in);
	RosenbrockSimulator.fitness(fitness);

	// Wire Stim
	Stim.clk(clk);
	Stim.startSimulation(startSimulation);
	Stim.simulationDone(simulationDone);
	Stim.a(a);
	Stim.b(b);
	Stim.chromosome_in(chromosome_in);
	Stim.fitness(fitness);

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

	reset = true;

	sc_start(2000,SC_NS);
	sc_close_vcd_trace_file(tf);
	return 0;
}
