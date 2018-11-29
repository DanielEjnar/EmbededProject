#pragma once
class SimulateRealTimeState
{
public:
	SimulateRealTimeState();
	virtual ~SimulateRealTimeState();

private:
	static SimulateRealTimeState* _state;
};

