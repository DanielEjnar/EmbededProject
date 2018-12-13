#ifndef ROSENBROCKSIMULATOR_H
#define ROSENBROCKSIMULATOR_H
#include <systemc.h>

#define CHROMOSOME_WIDTH 64

SC_MODULE(RosenbrockSimulator) {
	sc_in<bool> clk;
	sc_in<bool> reset;
	sc_in<bool> startSimulation;
	sc_out<bool> simulationDone;
  sc_in<double> a;
  sc_in<double> b;
	sc_in<sc_uint<CHROMOSOME_WIDTH> > chromosome_in;
  sc_out<double> fitness;


	void simulateRosenbrock(void);

	SC_CTOR(RosenbrockSimulator) {
	  SC_CTHREAD(simulateRosenbrock, clk.pos());
		reset_signal_is(reset,false);
  }
};
