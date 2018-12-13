#ifdef _MSC_VER
	#include "stdafx.h"
#endif
#include <systemc.h>
#include "RosenbrockSimulator.h"
#include "Stim.h"

#define CLK_PERIODE   20//ns
int sc_main(int argc, char* argv[])
{
	RosenbrockSimulator RosenbrockSimulator("RosenbrockSimulator");
	Stim Stim("Stim");

	sc_clock clk("clock", sc_time(CLK_PERIODE, SC_NS)); // 50 MHz
	sc_signal<bool> reset("reset");

	sc_signal<bool> startSimulation;
	sc_signal<bool> simulationDone;
	sc_signal<float> a;
	sc_signal<float> b;
	sc_signal<float> fitness;
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
	sc_trace(tf, clk, "clock");
	sc_trace(tf, startSimulation, "startSimulation");
	sc_trace(tf, simulationDone, "simulationDone");
	sc_trace(tf, a, "a");
	sc_trace(tf, b, "b");
	sc_trace(tf, fitness, "fitness");
	sc_trace(tf, chromosome_in, "chromosome_in");

	reset = true;

	sc_start(2000,SC_NS);
	sc_close_vcd_trace_file(tf);
	return 0;
}
