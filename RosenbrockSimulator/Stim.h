#pragma once
#ifdef _MSC_VER
	#include "stdafx.h"
#endif
#include "systemc.h"
#include "RosenbrockSimulator.h"
#include "ieee754float.h"
//#include "iostream"

SC_MODULE(Stim)
{
	sc_in<bool> clk;
	sc_out<bool> startSimulation;
	sc_in<bool> simulationDone;
	sc_out<sc_uint<32> > a;//actually float
	sc_out<sc_uint<32> > b;//actually float
	sc_out<sc_uint<CHROMOSOME_WIDTH> > chromosome_in;
	sc_in<sc_uint<32> > fitness;//actually float

	void stimGen() {
		wait(10, SC_NS);
<<<<<<< HEAD
		//std::cout << "simulation started - time: " << sc_time_stamp() << std::endl;
		a->write(1);
		b->write(100);
=======
		std::cout << "simulation started - time: " << sc_time_stamp() << std::endl;
		a->write(floatToUint32_t(1));
		b->write(floatToUint32_t(100));
>>>>>>> ff167961357d1e196b6738cf30f20c78c2917dbd
		chromosome_in->write(0x7f7fffff7f7fffff);
		wait(1, SC_NS);
		startSimulation->write(true);
		wait(10, SC_MS);
<<<<<<< HEAD
		//std::cout << "simulation ended with fitness: " << fitness->read() << std::endl;
=======
		std::cout << "simulation ended with fitness: " << uint32ToFloat(fitness->read()) << std::endl;
>>>>>>> ff167961357d1e196b6738cf30f20c78c2917dbd
		wait(1, SC_MS);
	}

	SC_CTOR(Stim) {
		SC_THREAD(stimGen);
		sensitive << clk.pos();
	}
};
