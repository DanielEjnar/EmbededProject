#pragma once
#include "RealTimeLoop.h"
#include "RealTimeLoopState.h"

class Mode3 :
	public RealTimeLoopState
{
public:
	Mode3();
	~Mode3();
	void chMode(RealTimeLoop* context);
};

