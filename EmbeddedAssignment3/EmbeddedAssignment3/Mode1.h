#pragma once
#include "RealTimeLoop.h"
#include "RealTimeLoopState.h"

class Mode1 :
	public RealTimeLoopState
{
public:
	static Mode1* GetInstance();
	void chMode(RealTimeLoop* context);
private:
	static Mode1* _instance;
	Mode1();
	~Mode1();
};
