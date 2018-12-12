#include "stdafx.h"
#include "GenerationGenerator.h"
#include <bitset>

void GenerationGenerator::consumeRandom(void) {
	randomNumbers[randomNumberIndex] = random.read();
	std::cout << "New random number: " << randomNumbers[randomNumberIndex] << std::endl;
	if(randomNumberIndex == RANDOM_WIDTH-1) {
		randomNumberIndex = 0;
	} else {
		randomNumberIndex = randomNumberIndex + 1;
	}
}

sc_uint<RANDOM_WIDTH> GenerationGenerator::trueRandom(void) {
	//std::cout << "True random index: " << trueRandomIndex << std::endl;
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
	//while(true) {
	//wait();
	sc_int<16> fitness[16];
	std::cout << "generateGeneration called" << std::endl;

	// get the fitness and previous generation_in
	sc_uint<CHROMOSOME_WIDTH> previousGeneration[GENERATION_SIZE];

	for(int i = 0; i < GENERATION_SIZE; i++)
	{
		fitness[i] = generation_fitness[i]->read();
		previousGeneration[i] = generation_in[i]->read();
	}

	std::cout << "Previous gen is: " << previousGeneration[0] << std::endl;

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
	sc_uint<CHROMOSOME_WIDTH> notZero = pow(2, CHROMOSOME_WIDTH) - 1;
	sc_uint<CHROMOSOME_WIDTH> childArray[GENERATION_SIZE];
	for(int i = 0; i < GENERATION_SIZE >> 1; i++)
	{
			std::cout << "Making two children" << std::endl;
			sc_uint<RANDOM_WIDTH> point1 = trueRandom();
			sc_uint<RANDOM_WIDTH> point2 = trueRandom();

			std::cout << "Point1: " << point1 << std::endl;
			std::cout << "Point2: " << point2 << std::endl;

			//0-2^24
			//0-CHROMOSOME_WIDTH
			//Scale
			point1 = (sc_uint<RANDOM_WIDTH + CHROMOSOME_WIDTH>) (point1 * (CHROMOSOME_WIDTH - 1)) >> RANDOM_WIDTH;
			point2 = (sc_uint<RANDOM_WIDTH + CHROMOSOME_WIDTH>) (point2 * (CHROMOSOME_WIDTH - 1)) >> RANDOM_WIDTH;

			std::cout << "Point1 after shift: " << point1 << std::endl;
			std::cout << "Point2 after shift: " << point2 << std::endl;

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
	
			sc_uint<CHROMOSOME_WIDTH> previousLargest = previousGeneration[largestIndex];
			sc_uint<CHROMOSOME_WIDTH> previousSecondLargest = previousGeneration[secondLargestIndex];

			sc_uint<CHROMOSOME_WIDTH> child1 = (previousLargest & bitMask1) + (bitMask2 & previousSecondLargest);
			sc_uint<CHROMOSOME_WIDTH> child2 = (previousLargest & bitMask2) + (bitMask1 & previousSecondLargest);

			std::cout << "Bitmask for child1: " << std::bitset<16>(bitMask1) << std::endl;
			std::cout << "Bitmask for child2: " << std::bitset<16>(bitMask2) << std::endl;
			childArray[2*i] = child1;
			childArray[2*i+1] = child2;
	}

	// mutate - get random positions to mutate OR get a random number per bit and see if it mutates
	sc_uint<RANDOM_WIDTH> randomMutationProb = mutation_probability.read();
	for(int i = 0; i < GENERATION_SIZE; i++)
	{
		std::cout << "Calling true random() once for: " << i << std::endl;
		for(int j = 0; j < CHROMOSOME_WIDTH; j++)
		{
			if (trueRandom() < randomMutationProb) {
				std::cout << "Mutating!" << randomMutationProb << std::endl;
				childArray[i] ^= (1 << j);
			}
		}
	}

	// set generation_out
	for(int i = 0; i < GENERATION_SIZE; i++) {
		generation_out[i]->write(childArray[i]);
		std::cout << "Value is: " << std::bitset<16>(childArray[i]) << std::endl;
	}
	//}
}
