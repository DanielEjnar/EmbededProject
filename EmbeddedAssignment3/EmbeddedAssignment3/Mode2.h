#pragma once
#include "RealTimeLoop.h"

class Mode2 :
	public RealTimeLoop
{
public:
	static Mode2* GetInstance();
	void chMode(RealTimeLoop* context);
private:
	static Mode2* _instance;
	Mode2();
	~Mode2();
};
