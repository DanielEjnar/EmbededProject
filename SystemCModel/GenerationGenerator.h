#ifndef GENERATIONGENERATOR_H
#define GENERATIONGENERATOR_H
#include <systemc.h>

#define CHROMOSOME_WIDTH 64
#define GENERATION_SIZE 10
#define RANDOM_WIDTH 24

SC_MODULE(GenerationGenerator) {
  SC_CTOR(GenerationGenerator) {
    SC_CTHREAD(consumeRandom,clk.pos());
    reset_is << reset; //not sure

  }
  sc_in<bool> clk;
  sc_in<bool> reset;
  sc_in<sc_uint<CHROMOSOME_WIDTH> > generation_in[GENERATION_SIZE];
  sc_out<sc_uint<CHROMOSOME_WIDTH> > generation_out[GENERATION_SIZE];
  sc_in<sc_uint<RANDOM_WIDTH> > randomNumber

  sc_uint<RANDOM_WIDTH> randomNumbers[GENERATION_SIZE*2]

  void consumeRandom(void);
  void generateGeneration(void);
};
#endif
