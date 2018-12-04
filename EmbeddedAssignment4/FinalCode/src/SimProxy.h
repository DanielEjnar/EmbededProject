#pragma once
#include <queue>
#include "Simulation.h"
#include "Thread.h"
#include "Mutex.h"
class RealTimeExecution;

class SimProxy
{
public:
	SimProxy();
	~SimProxy();
	void Push(Simulation* simObject, RealTimeExecution* rte);
	void Execute(AbstractOS::Thread* threadPtr);
private:
	std::queue<Simulation*> _proxyQueue;
	std::queue<RealTimeExecution*> _clientQueue;
	bool _executing = true;
	AbstractOS::Mutex simMutex;
};

