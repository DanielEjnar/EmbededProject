#pragma once
#include "Operational.h"
#include "Operational.h"

class Configuration : public Operational
{
public:
	static Configuration* GetInstance();
	void ConfigurationEnded(EmbeddedSystemX* context);
	void ReadConfigurationInfo();
	void PerformConfigurationX();
	void Restart(EmbeddedSystemX* context) override;
	void SelftestOk(EmbeddedSystemX* context) override;
	void Initialized(EmbeddedSystemX* context) override;
	void Configure(EmbeddedSystemX* context) override;
	void Exit(EmbeddedSystemX* context) override;
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
	Configuration();
	~Configuration();
	static Configuration* _instance;
};
