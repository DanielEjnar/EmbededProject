#ifndef ROSENBROCKSIMULATOR_H
#define ROSENBROCKSIMULATOR_H
#include <systemc.h>

#define CHROMOSOME_WIDTH 64

SC_MODULE(RosenbrockSimulator) {
	sc_in<bool> clk;
	sc_in<bool> reset;
	sc_in<bool> startSimulation;
	sc_out<bool> simulationDone;
	sc_in<sc_uint<32> > a; //actually float
	sc_in<sc_uint<32> > b; //actually float
	sc_in<sc_uint<CHROMOSOME_WIDTH> > chromosome_in;
	sc_out<sc_uint<32> > fitness;//actually float

	void simulateRosenbrock(void);

	SC_CTOR(RosenbrockSimulator) {
	  SC_CTHREAD(simulateRosenbrock, clk.pos());
	  reset_signal_is(reset,false);
  }
};
#endif
