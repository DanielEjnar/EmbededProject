#pragma once
#include "stdafx.h"
#include "systemc.h"
#include "GenerationGenerator.h"
#include "iostream"

SC_MODULE(Stim)
{
	sc_in<bool> clk;
	sc_out<sc_uint<CHROMOSOME_WIDTH>> generation_in[GENERATION_SIZE];
	sc_out<sc_int<FITNESS_WIDTH>> generation_fitness[GENERATION_SIZE];
	sc_out<sc_uint<RANDOM_WIDTH>> mutation_probability;
	sc_out<sc_uint<RANDOM_WIDTH>> random;

	void stimGen() {
		wait(10, SC_NS);
		std::cout << "generate started - time: " << sc_time_stamp() << std::endl;
		mutation_probability->write(255);
		for(int i = 0; i < 160; i++)
		{
			random->write(rand()*RAND_MAX);
			wait(1, SC_NS);
		}
		for (int i = 0; i < GENERATION_SIZE; i++) {
			generation_in[i]->write(rand()*2);
			generation_fitness[i]->write(i + 5);
		}
		wait(1, SC_MS);
	}

	SC_CTOR(Stim) {
		SC_THREAD(stimGen);
		sensitive << clk.pos();
	}
};