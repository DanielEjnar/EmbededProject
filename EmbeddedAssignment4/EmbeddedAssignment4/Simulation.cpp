#include "Simulation.h"
#include "RealTimeLoop.h"
#include "RealTimeExecution.h"


void Simulation::RunRealTime(RealTimeLoop* context)
{
	OperationalState* state = RealTimeExecution::GetInstance();
	context->setCurrent(state);

Simulation::Simulation()
{
}


Simulation::~Simulation()
{
}
