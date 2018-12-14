#include "RosenbrockSimulator.h"
#include <string.h>
#include <math.h>
//#include <bitset>
//#include <iostream>
#include "ieee754float.h"

void RosenbrockSimulator::simulateRosenbrock(){
  while (true) {
	sc_uint<CHROMOSOME_WIDTH> notZero = pow(2, CHROMOSOME_WIDTH) - 1;
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
	//std::cout << "X bin: " << std::bitset<32>(x) << std::endl;
	//std::cout << "Y bin: " << std::bitset<32>(y) << std::endl;
	//std::cout << "X nat: " << x << std::endl;
	//std::cout << "Y nat: " << y << std::endl;

	float x_double, y_double;

	x_double = uint32ToFloat((uint32_t)x);
  	y_double = uint32ToFloat((uint32_t)y);

	//std::cout << "Xflout: " << x_double << std::endl;
	//std::cout << "Yflout: " << y_double << std::endl;

<<<<<<< HEAD
	 float result,a_local,b_local;
    a_local = uint32ToFloat(a->read());
    b_local = uint32ToFloat(b->read());

    result = floatToUint32_t((float)(pow((a_local-x_double),2)+b_local*pow((y_double-pow(x_double,2)),2)));
=======
	float result,a_local,b_local;
    a_local = uint32ToFloat(a->read());
    b_local = uint32ToFloat(b->read());

    float part1 = pow((a_local-x_double),2);
    float part2 = y_double-pow(x_double,2);
    float part3 = b_local*pow(part2,2);
    result = floatToUint32_t(part1+part3);

>>>>>>> 3b18648815b4d918dc1212e690325f29165de2aa
    fitness->write(result);
    //std::cout << "fitness: " << result << std::endl;
    simulationDone->write(true);
  }
}
