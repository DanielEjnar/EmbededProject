#pragma once
#include "EmbeddedSystemX.h"

class ApplicationModeSetting
{
public:
	ApplicationModeSetting();
	virtual ~ApplicationModeSetting();
	virtual void chMode();
	virtual void Suspend(EmbeddedSystemX* context);
	virtual void Stop(EmbeddedSystemX* context);
};

