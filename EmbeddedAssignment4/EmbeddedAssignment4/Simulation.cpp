#include "Simulation.h"
#include "RealTimeExecution.h"
#include <thread>
#include "RealTimeLoop.h"

Simulation::Simulation()
{
}

Simulation::~Simulation()
{
}

void Simulation::RunRealTime()
{
}

void Simulation::RunSimulation(RealTimeExecution* client)
{
	// Do simulation here
	// Return by calling future
	simCount++;
	for (int i = 0; i < 100; i++)
		// sleep here
	client->RunRealTime();
}
