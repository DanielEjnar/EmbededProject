#pragma once
#include "OperationalState.h"
#include "RealTimeLoop.h"

class RealTimeLoopState :
	public OperationalState
{
public:
	RealTimeLoopState();
	~RealTimeLoopState();
	virtual void SelftestOk(RealTimeLoop* context);
	virtual void Initalized(RealTimeLoop* context);
	virtual void Restart(RealTimeLoop* context);
	virtual void Configure(RealTimeLoop* context);
	virtual void ConfigurationEnded(RealTimeLoop* context);
	virtual void Exit(RealTimeLoop* context);
	virtual void Stop(RealTimeLoop* context);
	virtual void Start(RealTimeLoop* context);
	virtual void Suspend(RealTimeLoop* context);
	virtual void Resume(RealTimeLoop* context);
	virtual void SelfTestFailed(RealTimeLoop* context, int errorNo);
	virtual void ConfigX(RealTimeLoop* context);
	virtual void chMode(RealTimeLoop* context);
	virtual void eventX(RealTimeLoop* context);
	virtual void eventY(RealTimeLoop* context);
};

