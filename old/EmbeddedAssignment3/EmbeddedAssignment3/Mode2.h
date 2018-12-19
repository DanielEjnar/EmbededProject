#pragma once
#include "RealTimeLoop.h"
#include "RealTimeLoop.h"

class Mode2 :
	public RealTimeLoop
{
public:
	static Mode2* GetInstance();
	void chMode(EmbeddedSystemX* context) override;
	void Restart(EmbeddedSystemX* context) override;
	static void responseM2eventX();
	static void responseM2eventY();
private:
	static Mode2* _instance;
	Mode2();
	~Mode2();
public:
	void SelftestOk(EmbeddedSystemX* context) override;
	void Initialized(EmbeddedSystemX* context) override;
	void Configure(EmbeddedSystemX* context) override;
	void ConfigurationEnded(EmbeddedSystemX* context) override;
	void Exit(EmbeddedSystemX* context) override;
	void Stop(EmbeddedSystemX* context) override;
	void Start(EmbeddedSystemX* context) override;
	void Suspend(EmbeddedSystemX* context) override;
	void Resume(EmbeddedSystemX* context) override;
	void SelfTestFailed(EmbeddedSystemX* context, int errorNo) override;
	void ConfigX(EmbeddedSystemX* context) override;
	void eventX(EmbeddedSystemX* context) override;
	void eventY(EmbeddedSystemX* context) override;
};
