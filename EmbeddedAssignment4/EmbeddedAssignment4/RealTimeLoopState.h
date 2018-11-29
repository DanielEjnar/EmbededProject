#pragma once
#include "OperationalState.h"
#include "ApplicationModeSetting.h"

class RealTimeLoopState :
	public OperationalState
{
public:
	RealTimeLoopState();
	~RealTimeLoopState();
	virtual void SelftestOk(ApplicationModeSetting* context);
	virtual void Initalized(ApplicationModeSetting* context);
	virtual void Restart(ApplicationModeSetting* context);
	virtual void Configure(ApplicationModeSetting* context);
	virtual void ConfigurationEnded(ApplicationModeSetting* context);
	virtual void Exit(ApplicationModeSetting* context);
	virtual void Stop(ApplicationModeSetting* context);
	virtual void Start(ApplicationModeSetting* context);
	virtual void Suspend(ApplicationModeSetting* context);
	virtual void Resume(ApplicationModeSetting* context);
	virtual void SelfTestFailed(ApplicationModeSetting* context, int errorNo);
	virtual void ConfigX(ApplicationModeSetting* context);
	virtual void chMode(ApplicationModeSetting* context);
	virtual void eventX(ApplicationModeSetting* context);
	virtual void eventY(ApplicationModeSetting* context);
};

