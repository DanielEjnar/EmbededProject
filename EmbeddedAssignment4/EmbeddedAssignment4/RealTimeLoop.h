#pragma once
#include "Operational.h"
#include "RealTimeLoop.h"
#include "ApplicationModeSetting.h"
#include "SimulateRealTime.h"

extern int simCount;
class RealTimeLoop :
	public Operational
{
public:
	static RealTimeLoop* GetInstance();
	void Entry();
	void Exit(EmbeddedSystemX* context);
	void Restart(EmbeddedSystemX* context);
	void RunRealTime();
	void Simulate();
	void setCurrent(ApplicationModeSetting* newAppState);
	void SelftestOk(EmbeddedSystemX* context) override;
	void Initialized(EmbeddedSystemX* context) override;
	void Configure(EmbeddedSystemX* context) override;
	void ConfigurationEnded(EmbeddedSystemX* context) override;
	void Stop(EmbeddedSystemX* context) override;
	void Start(EmbeddedSystemX* context) override;
	void Suspend(EmbeddedSystemX* context) override;
	void Resume(EmbeddedSystemX* context) override;
	void SelfTestFailed(EmbeddedSystemX* context, int errorNo) override;
	void ConfigX(EmbeddedSystemX* context) override;
	void chMode(EmbeddedSystemX* context, int mode) override;
	void eventX(EmbeddedSystemX* context) override;
	void eventY(EmbeddedSystemX* context) override;
private:
	RealTimeLoop();
	~RealTimeLoop();
	static ApplicationModeSetting* _appState;
	static RealTimeExecution* _simState;
	static RealTimeLoop* _instance;
};
