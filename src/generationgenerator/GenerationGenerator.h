#ifndef GENERATIONGENERATOR_H
#define GENERATIONGENERATOR_H
#include <systemc.h>

#define CHROMOSOME_WIDTH 64
#define RANDOM_WIDTH 24
#define GENERATION_SIZE 10

SC_MODULE(GenerationGenerator) {
	sc_in<bool> clk;
	sc_in<bool> reset;
	sc_in<bool> startGenerating;
	sc_out<bool> generatingDone;
	sc_in<sc_uint<CHROMOSOME_WIDTH> > generation_parent1;
	sc_in<sc_uint<CHROMOSOME_WIDTH> > generation_parent2;
	sc_out<sc_uint<CHROMOSOME_WIDTH> > generation_child1;
	sc_out<sc_uint<CHROMOSOME_WIDTH> > generation_child2;
	sc_in<sc_uint<RANDOM_WIDTH> > mutation_probability;
	sc_in<sc_uint<RANDOM_WIDTH> > random;

	sc_uint<RANDOM_WIDTH> randomNumberIndex;
	sc_uint<RANDOM_WIDTH> trueRandomIndex;;
	sc_uint<RANDOM_WIDTH> randomNumbers[GENERATION_SIZE * 16];

	void produceRandom(void);
	sc_uint<RANDOM_WIDTH> trueRandom(void);
	void generateGeneration(void);

	SC_CTOR(GenerationGenerator) {
	  randomNumberIndex = 0;
	  trueRandomIndex = 0;
	  SC_CTHREAD(generateGeneration, clk.pos());
		reset_signal_is(reset,false);
	  SC_CTHREAD(produceRandom, clk.pos());
		reset_signal_is(reset,false);
  }
};
#endif
