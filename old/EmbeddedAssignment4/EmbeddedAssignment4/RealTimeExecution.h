#pragma once
#include "SimProxy.h"

extern SimProxy simProxy;
class RealTimeExecution :
	public SimulateRealTime
{
public:
	RealTimeExecution();
	~RealTimeExecution();
	void RunRealTime();
	void Start();
};

