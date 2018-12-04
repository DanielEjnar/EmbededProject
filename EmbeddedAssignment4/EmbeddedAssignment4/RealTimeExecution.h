#pragma once
#include "SimProxy.h"


class RealTimeExecution :
	public SimulateRealTime
{
public:
	void RunRealTime();
	RealTimeExecution();
	~RealTimeExecution();
	void Start();
	//	void RunRealTime() override;
	//	void Simulate();
	//	void Start();
private:
	SimProxy* simProxy;
};

