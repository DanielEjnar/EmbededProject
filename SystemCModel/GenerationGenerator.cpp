#include "stdafx.h"
#include "GenerationGenerator.h"

void GenerationGenerator::consumeRandom(void) {
	randomNumbers[randomNumberIndex] = random.read();
	if(randomNumberIndex == RANDOM_WIDTH-1) {
		randomNumberIndex = 0;
	} else {
		randomNumberIndex = randomNumberIndex + 1;
	}
}

sc_uint<RANDOM_WIDTH> GenerationGenerator::trueRandom(void) { 
	sc_uint<RANDOM_WIDTH> randomNumber = randomNumbers[trueRandomIndex];
	if (trueRandomIndex == RANDOM_WIDTH - 1) {
		trueRandomIndex = 0;
	}
	else {
		trueRandomIndex = randomNumberIndex + 1;
	}
	return randomNumber;
}

void GenerationGenerator::generateGeneration(void) {
	sc_int<16> fitness[16];

	// get the fitness and previous generation_in
	sc_uint<CHROMOSOME_WIDTH> previousGeneration[GENERATION_SIZE];

	for(int i = 0; i < GENERATION_SIZE; i++)
	{
		fitness[i] = generation_fitness[i]->read();
		previousGeneration[i] = generation_in[i]->read();
	}

	sc_int<16> largest = 0, largestIndex = 0, secondLargest = 0, secondLargestIndex = 0;
	// Find indexes of two most fit chromosomes
	for (int i = 0; i<GENERATION_SIZE; i++) {
		if (fitness[i] > largest) {
			secondLargest = largest;
			secondLargestIndex = largestIndex;
			largest = fitness[i];
			largestIndex = i;
		}
		else if (fitness[i] > secondLargest) {
			secondLargest = fitness[i];
			secondLargestIndex = i;
		}
	}

	//int index = std::distance(fitness, std::max_element(fitness, fitness + 16));

	// Generate = num of bits
	// X = 16 bits, y = 16 bits
	// chromosome = XY

	// crossover - need to set number of crossoverpoints?
	// Make crossover points
	int point1 = trueRandom();
	int point2 = trueRandom();
	sc_uint<CHROMOSOME_WIDTH> zero = 0;
	sc_uint<CHROMOSOME_WIDTH> bitMask1 = ((~zero) >> point1) & (~(~zero) >> point2);
	sc_uint<CHROMOSOME_WIDTH> bitMask2 = ~bitMask1;

	sc_uint<CHROMOSOME_WIDTH> previousLargest = previousGeneration[largestIndex];
	sc_uint<CHROMOSOME_WIDTH> previousSecondLargest = previousGeneration[secondLargestIndex];

	sc_uint<CHROMOSOME_WIDTH> child1 = (previousLargest & bitMask1) + (bitMask2 & previousSecondLargest);
	sc_uint<CHROMOSOME_WIDTH> child2 = (previousLargest & bitMask2) + (bitMask1 & previousSecondLargest);

	sc_uint<CHROMOSOME_WIDTH> childArray[GENERATION_SIZE];
	childArray[0] = child1;
	childArray[1] = child2;

	// mutate - get random positions to mutate OR get a random number per bit and see if it mutates
	sc_uint<RANDOM_WIDTH> randomMutationProb = mutation_probability.read();
	for(int i = 0; i < GENERATION_SIZE; i++)
	{
		for(int j = 0; j < CHROMOSOME_WIDTH; j++)
		{
			if (trueRandom() < mutation_probability.read())
				childArray[i] ^= (1 << j);
		}
	}

	// set generation_out
	for(int i = 0; i < GENERATION_SIZE; i++) {
		generation_out[i]->write(childArray[i]);
	}
}
