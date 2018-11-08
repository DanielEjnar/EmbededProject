#pragma once
class EmbeddedSystemX;

class State
{
public:
	State();
	virtual ~State();
	virtual void SelftestOk(EmbeddedSystemX* context);
	virtual void Initalized(EmbeddedSystemX* context);
	virtual void Restart(EmbeddedSystemX* context);
	virtual void Configure(EmbeddedSystemX* context);
	virtual void ConfigurationEnded(EmbeddedSystemX* context);
	virtual void Exit(EmbeddedSystemX* context);
	virtual void Stop(EmbeddedSystemX* context);
	virtual void Start(EmbeddedSystemX* context);
	virtual void Suspend(EmbeddedSystemX* context);
	virtual void Resume(EmbeddedSystemX* context);
	virtual void SelfTestFailed(EmbeddedSystemX* context, int errorNo);
	virtual void ConfigX(EmbeddedSystemX* context);
	virtual void chMode(EmbeddedSystemX* context);
	virtual void eventX(EmbeddedSystemX* context);
	virtual void eventY(EmbeddedSystemX* context);
};

