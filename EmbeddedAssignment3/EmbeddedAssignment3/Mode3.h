#pragma once
#include "RealTimeLoop.h"
#include "RealTimeLoopState.h"

class Mode3 :
	public RealTimeLoopState
{
public:
	static Mode3* GetInstance();
	void chMode(RealTimeLoop* context);
private:
	static Mode3* _instance;
	Mode3();
	~Mode3();
};
