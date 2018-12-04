#pragma once
#include <queue>
#include "Simulation.h"
//#include "RealTimeExecution.h"
class RealTimeExecution;

class SimProxy
{
public:
	SimProxy();
	~SimProxy();
	void Push(Simulation* simObject, RealTimeExecution* rte);
private:
	void Execute();
	std::queue<Simulation*> _proxyQueue;
	std::queue<RealTimeExecution*> _clientQueue;
	bool _executing;
};

