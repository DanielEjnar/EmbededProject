#pragma once
#include "SimProxy.h"


class RealTimeExecution :
	public SimulateRealTime
{
public:
	RealTimeExecution();
	~RealTimeExecution();
	void RunRealTime();
	void Start();
private:
	SimProxy* simProxy;
};

