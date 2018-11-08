#pragma once
#include "RealTimeLoop.h"
#include "RealTimeLoopState.h"

class Mode1 :
	public RealTimeLoopState
{
public:
	Mode1();
	~Mode1();
	void chMode(RealTimeLoop* context);
};

