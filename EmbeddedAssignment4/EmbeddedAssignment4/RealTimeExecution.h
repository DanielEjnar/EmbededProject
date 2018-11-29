#pragma once
#include "SimulateRealTime.h"
class RealTimeExecution :
	public SimulateRealTime
{
public:
	virtual void RunRealTime() = 0;
	virtual void Simulate() = 0;
	RealTimeExecution();
	~RealTimeExecution();
};

