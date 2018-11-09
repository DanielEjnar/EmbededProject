#pragma once
#include "RealTimeLoop.h"
#include "RealTimeLoopState.h"

class Mode2 :
	public RealTimeLoopState
{
public:
	static Mode2* GetInstance();
	void chMode(RealTimeLoop* context);
private:
	static Mode2* _instance;
	Mode2();
	~Mode2();
};
