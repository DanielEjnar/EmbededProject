#ifndef STIM_H
#define STIM_H
#include "stdafx.h"
#include "systemc.h"
#include "GenerationGenerator.h"

SC_MODULE(Stim)
{
	sc_out<bool> clk;
	sc_out<sc_uint<CHROMOSOME_WIDTH> > generation_in[GENERATION_SIZE];
	sc_out<sc_int<FITNESS_WIDTH>> generation_fitness[GENERATION_SIZE];
	sc_in<sc_uint<CHROMOSOME_WIDTH> > generation_out[GENERATION_SIZE];
	sc_out<sc_uint<RANDOM_WIDTH>> mutation_probability;
	sc_out<sc_uint<RANDOM_WIDTH>> random;

	void StimGen();

	SC_CTOR(Stim)
	{
		SC_THREAD(StimGen);
		sensitive << clk.pos();
	}
};
#endif