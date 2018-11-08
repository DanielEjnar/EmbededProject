#pragma once
#include "RealTimeLoop.h"
#include "RealTimeLoopState.h"

class Mode2 :
	public RealTimeLoopState
{
public:
	Mode2();
	~Mode2();
	void chMode(RealTimeLoop* context);
};

