#pragma once
#include "State.h"
class Operational :
	public State
{
public:
	Operational();
	virtual ~Operational();
	void SelftestOk(EmbeddedSystemX* context) override = 0;
	void Initialized(EmbeddedSystemX* context) override = 0;
	void Restart(EmbeddedSystemX* context) override = 0;
	void Configure(EmbeddedSystemX* context) override = 0;
	void ConfigurationEnded(EmbeddedSystemX* context) override = 0;
	void Exit(EmbeddedSystemX* context) override = 0;
	void Stop(EmbeddedSystemX* context) override = 0;
	void Start(EmbeddedSystemX* context) override = 0;
	void Suspend(EmbeddedSystemX* context) override = 0;
	void Resume(EmbeddedSystemX* context) override = 0;
	void SelfTestFailed(EmbeddedSystemX* context, int errorNo) override = 0;
	void ConfigX(EmbeddedSystemX* context) override = 0;
	void chMode(EmbeddedSystemX* context, int mode) override = 0;
	void eventX(EmbeddedSystemX* context) override = 0;
	void eventY(EmbeddedSystemX* context) override = 0;
};

