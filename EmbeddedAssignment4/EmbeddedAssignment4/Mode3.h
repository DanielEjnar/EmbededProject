#pragma once
#include "RealTimeLoop.h"
#include "RealTimeLoopState.h"

class Mode3 :
	public ApplicationModeSetting
{
public:
	Mode3();
	~Mode3();
	void chMode(ApplicationModeSetting* context);
};

