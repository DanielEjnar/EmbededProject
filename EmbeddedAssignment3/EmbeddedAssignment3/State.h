#pragma once
class EmbeddedSystemX;

class State
{
public:
	State();
	~State();
	virtual void SelftestOk(EmbeddedSystemX* context) = 0;
	virtual void Initalized(EmbeddedSystemX* context) = 0;
	virtual void Restart(EmbeddedSystemX* context) = 0;
	virtual void Configure(EmbeddedSystemX* context) = 0;
	virtual void ConfigurationEnded(EmbeddedSystemX* context) = 0;
	virtual void Exit(EmbeddedSystemX* context) = 0;
	virtual void Stop(EmbeddedSystemX* context) = 0;
	virtual void Start(EmbeddedSystemX* context) = 0;
	virtual void Suspend(EmbeddedSystemX* context) = 0;
	virtual void Resume(EmbeddedSystemX* context) = 0;
	virtual void SelfTestFailed(EmbeddedSystemX* context, int errorNo) = 0;
	virtual void ConfigX(EmbeddedSystemX* context) = 0;
	virtual void chMode(EmbeddedSystemX* context) = 0;
	virtual void eventX(EmbeddedSystemX* context) = 0;
	virtual void eventY(EmbeddedSystemX* context) = 0;
};

