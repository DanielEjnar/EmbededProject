#ifndef GENERATIONGENERATOR_H
#define GENERATIONGENERATOR_H
#include <systemc.h>

#define CHROMOSOME_WIDTH 16
#define GENERATION_SIZE 10
#define RANDOM_WIDTH 24
#define FITNESS_WIDTH 16

SC_MODULE(GenerationGenerator) {
	sc_in<bool> clk;
	sc_in<bool> reset;
	sc_in<sc_uint<CHROMOSOME_WIDTH> > generation_in[GENERATION_SIZE];
	sc_in<sc_int<FITNESS_WIDTH>> generation_fitness[GENERATION_SIZE];
	sc_out<sc_uint<CHROMOSOME_WIDTH> > generation_out[GENERATION_SIZE];
	sc_in<sc_uint<RANDOM_WIDTH>> mutation_probability;
	sc_in<sc_uint<RANDOM_WIDTH>> random;

	sc_uint<RANDOM_WIDTH> randomNumberIndex = 0;
	sc_uint<RANDOM_WIDTH> trueRandomIndex = 0;
	sc_uint<RANDOM_WIDTH> randomNumbers[GENERATION_SIZE * 16];

	void consumeRandom(void);
	sc_uint<RANDOM_WIDTH> trueRandom(void);
	void generateGeneration(void);

	SC_CTOR(GenerationGenerator) {
	  //SC_CTHREAD(generateGeneration, clk.pos());
	  SC_METHOD(generateGeneration);
	  sensitive << generation_in[0];
	  SC_METHOD(consumeRandom);
	  sensitive << random;
	  //reset_signal_is(reset, false);
  }
};
#endif
