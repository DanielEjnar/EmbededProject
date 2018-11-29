#pragma once
#include "Operational.h"
#include "SimulateRealTimeState.h"
#include "ApplicationModeSetting.h"

class RealTimeLoop : public Operational
{
public:
	RealTimeLoop();
	virtual ~RealTimeLoop();

private:
	static ApplicationModeSetting* _applicationModeSettingState;
	static SimulateRealTimeState* _simulateRealTimeState;
};

