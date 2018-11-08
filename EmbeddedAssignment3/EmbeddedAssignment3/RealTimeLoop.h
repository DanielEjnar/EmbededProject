#pragma once
#include "Operational.h"
class RealTimeLoop :public Operational
{
public:
	static RealTimeLoop* GetInstance();
	void Stop(Operational* context);
	void Suspend(Operational* context);
private:
	RealTimeLoop();
	~RealTimeLoop();
	static RealTimeLoop* _instance;

};
