#pragma once
#include "stdafx.h"
#include "systemc.h"
#include "GenerationGenerator.h"
#include "iostream"

SC_MODULE(Stim)
{
	sc_in<bool> clk;
	sc_out<sc_uint<CHROMOSOME_WIDTH> > generation_parent1;
	sc_out<sc_uint<CHROMOSOME_WIDTH> > generation_parent2;
	sc_out<sc_uint<RANDOM_WIDTH> > mutation_probability;
	sc_out<sc_uint<RANDOM_WIDTH> > random;

	void stimGen() {
		wait(10, SC_NS);
		std::cout << "generate started - time: " << sc_time_stamp() << std::endl;
		mutation_probability->write(255);
		for(int i = 0; i < 160; i++)
		{
			random->write(rand()*RAND_MAX);
			wait(1, SC_NS);
		}
		generation_parent1->write(rand() * 2);
		generation_parent2->write(rand() * 2);
		wait(1, SC_MS);
	}

	SC_CTOR(Stim) {
		SC_THREAD(stimGen);
		sensitive << clk.pos();
	}
};
