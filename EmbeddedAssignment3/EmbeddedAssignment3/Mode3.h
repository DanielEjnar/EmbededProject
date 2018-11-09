#pragma once
#include "RealTimeLoop.h"

class Mode3 :
	public RealTimeLoop
{
public:
	static Mode3* GetInstance();
	void chMode(RealTimeLoop* context);
private:
	static Mode3* _instance;
	Mode3();
	~Mode3();
};
