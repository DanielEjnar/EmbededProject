#pragma once
#include "Operational.h"
#include "RealTimeLoop.h"
#include "ApplicationModeSetting.h"
#include "SimulateRealTime.h"

class RealTimeLoop :
	public Operational
{
public:
	RealTimeLoop();
	~RealTimeLoop();
	void Entry();
	void Exit(EmbeddedSystemX* context);
	void Restart(EmbeddedSystemX* context);
	void ChMode();
	void RunRealTime();
	void Simulate();
private:
	static ApplicationModeSetting* _appState;
	static SimulateRealTime* _simState;
};

