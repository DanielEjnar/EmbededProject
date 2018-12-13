#pragma once
#ifdef _MSC_VER
	#include "stdafx.h"
#endif
#include "systemc.h"
#include "RosenbrockSimulator.h"
//#include "iostream"

SC_MODULE(Stim)
{
	sc_in<bool> clk;
	sc_out<bool> startSimulation;
	sc_in<bool> simulationDone;
  sc_out<double> a;
  sc_out<double> b;
	sc_out<sc_uint<CHROMOSOME_WIDTH> > chromosome_in;
  sc_in<double> fitness;

	void stimGen() {
		wait(10, SC_NS);
		std::cout << "simulation started - time: " << sc_time_stamp() << std::endl;
		a->write(1);
		b->write(100);
		chromosome_in->write(0xA5A5A5A5A5A5A5A5);
		wait(1, SC_NS);
		startSimulation->write(true);
		wait(10, SC_MS);
		std::cout << "simulation ended with fitness: " << fitness->read() << std::endl;

	}

	SC_CTOR(Stim) {
		SC_THREAD(stimGen);
		sensitive << clk.pos();
	}
};
