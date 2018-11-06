#pragma once
#include "State.h"

class PowerOnSelfTest : public State
{
public:
	PowerOnSelfTest();
	~PowerOnSelfTest();
	static PowerOnSelfTest* GetInstance();
	void SelftestOk(EmbeddedSystemX* context);
	void Initalized(EmbeddedSystemX* context);
	void Restart(EmbeddedSystemX* context);
	void Configure(EmbeddedSystemX* context);
	void ConfigurationEnded(EmbeddedSystemX* context);
	void Exit(EmbeddedSystemX* context);
	void Stop(EmbeddedSystemX* context);
	void Start(EmbeddedSystemX* context);
	void Suspend(EmbeddedSystemX* context);
	void SelfTestFailed(EmbeddedSystemX* context, int errorNo);
	void ConfigX(EmbeddedSystemX* context);
	void chMode(EmbeddedSystemX* context);
	void eventX(EmbeddedSystemX* context);
	void eventY(EmbeddedSystemX* context);
	void Resume(EmbeddedSystemX* context);
private:
	static PowerOnSelfTest* _instance;
};

