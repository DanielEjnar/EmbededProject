#include "stdafx.h"
#include "Stim.h"
#include <math.h>

void Stim::stimGen() {
	for(int i = 0; i < GENERATION_SIZE; i++) {
		generation_in[i] = 0xEA55;
		generation_fitness[i] = i + 5;
	}
	mutation_probability = pow(2, 23);
	random = pow(2, 16);
}
