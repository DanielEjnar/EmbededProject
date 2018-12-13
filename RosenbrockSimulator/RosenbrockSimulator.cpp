#include "RosenbrockSimulator.h"
#include <string.h>
#include <math.h>

void RosenbrockSimulator::simulateRosenbrock(){
  while (true) {
    wait();
    while(startSimulation->read()==true){ wait(); }
    simulationDone->write(false);

    sc_uint<CHROMOSOME_WIDTH> tmpChromosome = chromosome_in->read();
    sc_uint<CHROMOSOME_WIDTH/2 > x,y;
    x = tmpChromosome >> ( CHROMOSOME_WIDTH >> 1 );
    y = tmpChromosome & ((1 << (CHROMOSOME_WIDTH >> 1))-1);

    double x_double, y_double;
    memcpy(&x_double, &x,CHROMOSOME_WIDTH/2);
    memcpy(&y_double, &y,CHROMOSOME_WIDTH/2);

    double result,a_local,b_local;
    a_local = a->read();
    b_local = b->read();

    result = pow((a_local-x_double),2)+b_local*pow((y_double-pow(x_double,2)),2);
    fitness->write(result);
    simulationDone->write(true);
  }
}
