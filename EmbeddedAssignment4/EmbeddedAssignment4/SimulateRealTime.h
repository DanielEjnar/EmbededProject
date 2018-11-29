#pragma once
class SimulateRealTime
{
public:
	SimulateRealTime();
	virtual ~SimulateRealTime();
	static SimulateRealTime* GetInstance();
private:
	static SimulateRealTime * _instance;
};

