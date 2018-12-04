#pragma once
#include "State.h"

class PowerOnSelfTest : public State
{
public:
	static PowerOnSelfTest* GetInstance();
	void SelftestOk(EmbeddedSystemX* context);
	void SelfTestFailed(EmbeddedSystemX* context, int errorNo);
	static void systemSelftest();
private:
	static PowerOnSelfTest* _instance;
	PowerOnSelfTest();
	~PowerOnSelfTest();
public:
	void Initialized(EmbeddedSystemX* context) override;
	void Restart(EmbeddedSystemX* context) override;
	void Configure(EmbeddedSystemX* context) override;
	void ConfigurationEnded(EmbeddedSystemX* context) override;
	void Exit(EmbeddedSystemX* context) override;
	void Stop(EmbeddedSystemX* context) override;
	void Start(EmbeddedSystemX* context) override;
	void Suspend(EmbeddedSystemX* context) override;
	void Resume(EmbeddedSystemX* context) override;
	void ConfigX(EmbeddedSystemX* context) override;
	void chMode(EmbeddedSystemX* context, int mode) override;
	void eventX(EmbeddedSystemX* context) override;
	void eventY(EmbeddedSystemX* context) override;
};

