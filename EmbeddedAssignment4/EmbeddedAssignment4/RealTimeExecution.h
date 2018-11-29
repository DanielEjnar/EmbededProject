#pragma once
#include "SimulateRealTimeState.h"
class RealTimeExecution :
	public SimulateRealTimeState
{
public:
	static RealTimeExecution* GetInstance();
	RealTimeExecution();
	virtual ~RealTimeExecution();

private:
	static RealTimeExecution* _state;
};

