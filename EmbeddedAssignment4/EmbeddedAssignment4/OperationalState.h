#pragma once
#include "State.h"
class OperationalState :
	public State
{
public:
	OperationalState();
	~OperationalState();
	virtual void SelftestOk(OperationalState* context);
	virtual void Initalized(OperationalState* context);
	virtual void Restart(OperationalState* context);
	virtual void Configure(OperationalState* context);
	virtual void ConfigurationEnded(OperationalState* context);
	virtual void Exit(OperationalState* context);
	virtual void Stop(OperationalState* context);
	virtual void Start(OperationalState* context);
	virtual void Suspend(OperationalState* context);
	virtual void Resume(OperationalState* context);
	virtual void SelfTestFailed(OperationalState* context, int errorNo);
	virtual void ConfigX(OperationalState* context);
	virtual void chMode(OperationalState* context);
	virtual void eventX(OperationalState* context);
	virtual void eventY(OperationalState* context);
};

