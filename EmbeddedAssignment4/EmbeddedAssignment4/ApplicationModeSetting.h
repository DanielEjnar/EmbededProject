#pragma once
#include "Operational.h"
#include "OperationalState.h"
#include "SimulateRealTimeState.h"

class ApplicationModeSetting : public OperationalState
{
public:
	static ApplicationModeSetting* GetInstance();
	void Stop(Operational* context);
	void Suspend(Operational* context);
private:
	ApplicationModeSetting();
	~ApplicationModeSetting();
	static ApplicationModeSetting* _applicationModeSettingState;
};
