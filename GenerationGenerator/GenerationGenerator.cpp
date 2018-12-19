#ifdef _MSC_VER
	#include "stdafx.h"
#endif
#include "GenerationGenerator.h"

void GenerationGenerator::consumeRandom(void) {
#pragma HLS resource core=AXI4LiteS metadata="-bus_bundle slv1" variable=random
  sc_uint<RANDOM_WIDTH> tmpRnd;
	while(true){
		wait();
		tmpRnd = random.read();
		if(tmpRnd == randomNumbers[((randomNumberIndex-1) > RANDOM_WIDTH) ? RANDOM_WIDTH-1 : randomNumberIndex-1]){
			randomNumbers[randomNumberIndex] = tmpRnd;
			if(randomNumberIndex == RANDOM_WIDTH-1) {
				randomNumberIndex = 0;
			} else {
				randomNumberIndex = randomNumberIndex + 1;
			}
		}
	}
}

sc_uint<RANDOM_WIDTH> GenerationGenerator::trueRandom(void) {
	sc_uint<RANDOM_WIDTH> randomNumber = randomNumbers[trueRandomIndex];
	if (trueRandomIndex == RANDOM_WIDTH - 1) {
		trueRandomIndex = 0;
	}
	else {
		trueRandomIndex = trueRandomIndex + 1;
	}
	return randomNumber;
}

void GenerationGenerator::generateGeneration(void) {
	#pragma HLS resource core=AXI4LiteS metadata="-bus_bundle slv0" variable=generation_parent1
	#pragma HLS resource core=AXI4LiteS metadata="-bus_bundle slv0" variable=generation_parent2
	#pragma HLS resource core=AXI4LiteS metadata="-bus_bundle slv0" variable=generation_child1
	#pragma HLS resource core=AXI4LiteS metadata="-bus_bundle slv0" variable=generation_child2
	#pragma HLS resource core=AXI4LiteS metadata="-bus_bundle slv0" variable=generation_parent1
	#pragma HLS resource core=AXI4LiteS metadata="-bus_bundle slv0" variable=mutation_probability
	#pragma HLS resource core=AXI4LiteS metadata="-bus_bundle slv0" variable=startGenerating
	#pragma HLS resource core=AXI4LiteS metadata="-bus_bundle slv0" variable=generatingDone

	while(true) {
		wait();
		while (startGenerating->read() == false) { wait(); }
		generatingDone->write(false);

		// get the fitness and previous generation_in
		sc_uint<CHROMOSOME_WIDTH> parent1 = generation_parent1->read();
		sc_uint<CHROMOSOME_WIDTH> parent2 = generation_parent2->read();

		// Generate = num of bits
		// X = 16 bits, y = 16 bits
		// chromosome = XY

		// crossover
		// Make crossover points
		sc_uint<CHROMOSOME_WIDTH> notZero = pow(2, CHROMOSOME_WIDTH) - 1;

		sc_uint<RANDOM_WIDTH> point1 = trueRandom();
		sc_uint<RANDOM_WIDTH> point2 = trueRandom();

		//0-2^24
		//0-CHROMOSOME_WIDTH
		//Scale
		point1 = (sc_uint<RANDOM_WIDTH + CHROMOSOME_WIDTH>) (point1 * (CHROMOSOME_WIDTH - 1)) >> RANDOM_WIDTH;
		point2 = (sc_uint<RANDOM_WIDTH + CHROMOSOME_WIDTH>) (point2 * (CHROMOSOME_WIDTH - 1)) >> RANDOM_WIDTH;

		// Sort high and low number
		sc_uint<RANDOM_WIDTH> highNum;
		sc_uint<RANDOM_WIDTH> lowNum;
		if(point1 > point2) {
			highNum = point1;
			lowNum = point2;
		} else {
			highNum = point2;
			lowNum = point1;
		}

		sc_uint<CHROMOSOME_WIDTH> bitMask1 = notZero >> lowNum & ~notZero >> highNum;
		sc_uint<CHROMOSOME_WIDTH> bitMask2 = ~bitMask1;

		sc_uint<CHROMOSOME_WIDTH> child1 = (parent1 & bitMask1) + (bitMask2 & parent2);
		sc_uint<CHROMOSOME_WIDTH> child2 = (parent1 & bitMask2) + (bitMask1 & parent2);


		// mutate - get random positions to mutate OR get a random number per bit and see if it mutates
		sc_uint<RANDOM_WIDTH> randomMutationProb = mutation_probability.read();

		// Mutating child 1
		mutateChild1: for (int j = 0; j < CHROMOSOME_WIDTH; j++) {
			#pragma HLS PIPLEINE II=2
			if (trueRandom() < randomMutationProb) {
				child1 ^= (1 << j);
			}
		}

		// Mutating child 2
		mutateChild2: for (int j = 0; j < CHROMOSOME_WIDTH; j++) {
			#pragma HLS PIPLEINE II=2
			if (trueRandom() < randomMutationProb) {
				child2 ^= (1 << j);
			}
		}

		// set generation_out
		generation_child1->write(child1);
		generation_child2->write(child2);
		generatingDone->write(true);
	}
}
