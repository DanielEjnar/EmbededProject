#include "SimProxy.h"
#include "RealTimeExecution.h"


SimProxy::SimProxy()
{
	// start thread
	Execute();
}

SimProxy::~SimProxy()
{
}

void SimProxy::Execute()
{
	while(_executing)
	{
		while(_proxyQueue.empty()) {}
		Simulation* task = _proxyQueue.front();
		RealTimeExecution* future = _clientQueue.front();
		_proxyQueue.pop();
		_clientQueue.pop();
		task->RunSimulation(future);
		delete task;
		delete future;
	}
}

void SimProxy::Push(Simulation* simObject, RealTimeExecution* rte)
{
	_proxyQueue.push(simObject);
	_clientQueue.push(rte);
}
