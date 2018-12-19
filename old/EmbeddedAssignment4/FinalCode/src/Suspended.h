#pragma once
#include "Operational.h"
#include "Operational.h"

class Suspended : public Operational
{
public:
	static Suspended* GetInstance();
	void Stop(EmbeddedSystemX* context) override;
	void Resume(EmbeddedSystemX* context) override;
	void Restart(EmbeddedSystemX* context) override;
private:
	static Suspended* _instance;
	Suspended();
	~Suspended();
public:
	void SelftestOk(EmbeddedSystemX* context) override;
	void Initialized(EmbeddedSystemX* context) override;
	void Configure(EmbeddedSystemX* context) override;
	void ConfigurationEnded(EmbeddedSystemX* context) override;
	void Exit(EmbeddedSystemX* context) override;
	void Start(EmbeddedSystemX* context) override;
	void Suspend(EmbeddedSystemX* context) override;
	void SelfTestFailed(EmbeddedSystemX* context, int errorNo) override;
	void ConfigX(EmbeddedSystemX* context) override;
	void chMode(EmbeddedSystemX* context, int mode) override;
	void eventX(EmbeddedSystemX* context) override;
	void eventY(EmbeddedSystemX* context) override;
};
