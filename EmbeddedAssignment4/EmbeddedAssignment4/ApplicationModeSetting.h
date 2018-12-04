#pragma once
#include "EmbeddedSystemX.h"
#include "RealTimeLoop.h"

class ApplicationModeSetting
{
public:
	ApplicationModeSetting();
	virtual ~ApplicationModeSetting();
	void chMode(RealTimeLoop* context);
private:
	static ApplicationModeSetting* _state;
};

