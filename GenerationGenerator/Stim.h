#pragma once
#ifdef _MSC_VER
	#include "stdafx.h"
#endif
#include "systemc.h"
#include "GenerationGenerator.h"
//#include "iostream"

SC_MODULE(Stim)
{
	sc_in<bool> clk;
	sc_out<sc_uint<CHROMOSOME_WIDTH> > generation_parent1;
	sc_out<sc_uint<CHROMOSOME_WIDTH> > generation_parent2;
	sc_out<sc_uint<RANDOM_WIDTH> > mutation_probability;
	sc_out<sc_uint<RANDOM_WIDTH> > random;
	sc_out<bool> startGenerating;
	sc_in<bool> generatingDone;

	void stimGen() {
		wait(10, SC_NS);
		mutation_probability->write(255);
		for(int i = 0; i < 160; i++)
		{
			random->write(130+i*8);
			wait(1, SC_NS);
		}
		generation_parent1->write(0xdeaddeadbeefbeef);
		generation_parent2->write(0x1234567812345678);
		startGenerating->write(true);
		wait(100, SC_NS);
	}

	SC_CTOR(Stim) {
		SC_THREAD(stimGen);
		sensitive << clk.pos();
	}
};
