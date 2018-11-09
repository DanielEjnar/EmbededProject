#pragma once
#include "State.h"
#include "EmbeddedSystemX.h"

class Operational : public State
{
public:
	Operational();
	~Operational();
	void SelftestOk(EmbeddedSystemX* context);
	void Initalized(EmbeddedSystemX* context);
	void Restart(EmbeddedSystemX* context);
	void Configure(EmbeddedSystemX* context);
	void ConfigurationEnded(EmbeddedSystemX* context);
	void Exit(EmbeddedSystemX* context);
	void Stop(EmbeddedSystemX* context);
	void Start(EmbeddedSystemX* context);
	void Suspend(EmbeddedSystemX* context);
	void Resume(EmbeddedSystemX* context);
	void SelfTestFailed(EmbeddedSystemX* context, int errorNo);
	void ConfigX(EmbeddedSystemX* context);
	void chMode(EmbeddedSystemX* context);
	void eventX(EmbeddedSystemX* context);
	void eventY(EmbeddedSystemX* context);
	void setCurrent(Operational *s);
	static Operational* GetInstance();
private:
	static Operational* _instance;
	Operational* _currentState;
};
