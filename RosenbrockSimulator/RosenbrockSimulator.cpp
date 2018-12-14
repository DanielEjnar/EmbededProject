#include "RosenbrockSimulator.h"
#include <string.h>
#include <math.h>
#include <bitset>
#include <iostream>
#include "ieee754float.h"

void RosenbrockSimulator::simulateRosenbrock(){
  sc_uint<CHROMOSOME_WIDTH> notZero = pow(2, CHROMOSOME_WIDTH) - 1;
  while (true) {
    wait();
    while(startSimulation->read()==false){ wait(); }
    simulationDone->write(false);

    sc_uint<CHROMOSOME_WIDTH> tmpChromosome = chromosome_in->read();
    sc_uint<CHROMOSOME_WIDTH/2 > x = 10, y = 10;
    x = tmpChromosome >> ( CHROMOSOME_WIDTH >> 1 );
	y = tmpChromosome;

  	//std::cout << "yBitmask: " << std::bitset<64>(~((1 << (sc_uint<CHROMOSOME_WIDTH>)((CHROMOSOME_WIDTH >> 1)) - 1))) << std::endl;
	//y = tmpChromosome & (sc_uint<CHROMOSOME_WIDTH>)~((1 << (sc_uint<CHROMOSOME_WIDTH>)((CHROMOSOME_WIDTH >> 1))-1));
	//std::cout << "ybitmask: " << std::bitset<64>((sc_uint<CHROMOSOME_WIDTH>)(pow(2, CHROMOSOME_WIDTH + 1) - 1)) << std::endl;
	//y = tmpChromosome & (sc_uint<CHROMOSOME_WIDTH>)(pow(2, CHROMOSOME_WIDTH + 1) - 1);

	//sc_uint<CHROMOSOME_WIDTH> bitMask = ~(notZero >> ((CHROMOSOME_WIDTH / 2)-1));

	//std::cout << "Bitmask bin: " << std::bitset<64>(bitMask) << std::endl;
	std::cout << "X bin: " << std::bitset<32>(x) << std::endl;
	std::cout << "Y bin: " << std::bitset<32>(y) << std::endl;
	std::cout << "X nat: " << x << std::endl;
	std::cout << "Y nat: " << y << std::endl;

	float x_double, y_double;

  x_double = uint32ToFloat((uint32_t)x);
  y_double = uint32ToFloat((uint32_t)y);

	std::cout << "Xflout: " << x_double << std::endl;
	std::cout << "Yflout: " << y_double << std::endl;

	float result,a_local,b_local;
    a_local = a->read();
    b_local = b->read();

    result = floatToUint32_t(pow((a_local-x_double),2)+b_local*pow((y_double-pow(x_double,2)),2));
    fitness->write(result);
	  std::cout << "fitness: " << result << std::endl;
    simulationDone->write(true);
  }
}
