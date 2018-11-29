#pragma once
#include "SimulateRealTimeState.h"
class RealTimeLoop;

class Simulation :
	public SimulateRealTimeState
{
public:
	void RunRealTime(RealTimeLoop* context);
	Simulation();
	virtual ~Simulation();
};

