#pragma once
#include "State.h"
class OperationalState;

class Operational :
	public State
{
public:
	Operational();
	~Operational();
	void SelftestOk(OperationalState* context);
	void Initalized(OperationalState* context);
	void Restart(OperationalState* context);
	void Configure(OperationalState* context);
	void ConfigurationEnded(OperationalState* context);
	void Exit(OperationalState* context);
	void Stop(OperationalState* context);
	void Start(OperationalState* context);
	void Suspend(OperationalState* context);
	void Resume(OperationalState* context);
	void SelfTestFailed(OperationalState* context, int errorNo);
	void ConfigX(OperationalState* context);
	void chMode(OperationalState* context);
	void eventX(OperationalState* context);
	void eventY(OperationalState* context);
	void setCurrent(OperationalState *s);
private:
	OperationalState* _currentState;
};
