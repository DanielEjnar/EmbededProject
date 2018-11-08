#pragma once
#include "Operational.h"
#include "OperationalState.h"

class RealTimeLoop :public OperationalState
{
public:
	static RealTimeLoop* GetInstance();
	void Stop(Operational* context);
	void Suspend(Operational* context);
private:
	RealTimeLoop();
	~RealTimeLoop();
	static RealTimeLoop* _instance;

};
