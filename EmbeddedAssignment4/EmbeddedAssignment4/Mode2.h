#pragma once
#include "RealTimeLoop.h"
#include "RealTimeLoopState.h"

class Mode2 :
	public ApplicationModeSetting
{
public:
	Mode2();
	~Mode2();
	void chMode(ApplicationModeSetting* context);
};

