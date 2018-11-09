#pragma once
#include "RealTimeLoop.h"

class Mode1 :
	public RealTimeLoop
{
public:
	static Mode1* GetInstance();
	void chMode(RealTimeLoop* context);
private:
	static Mode1* _instance;
	Mode1();
	~Mode1();
};
