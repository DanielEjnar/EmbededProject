#pragma once
#include "SimulateRealTime.h"

class RealTimeExecution;

class Simulation : public SimulateRealTime
{
public:
	void RunRealTime();
	void RunSimulation(RealTimeExecution* client);
	Simulation();
	~Simulation();
};
