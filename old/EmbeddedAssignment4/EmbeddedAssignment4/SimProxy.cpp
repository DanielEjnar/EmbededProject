#include "SimProxy.h"
#include "RealTimeExecution.h"
#include "stdio.h"
#include "Mutex.h"

SimProxy::SimProxy()
{
	// start thread
	//Execute();
	simMutex = AbstractOS::Mutex("simMutex");
}

SimProxy::~SimProxy()
{
}

void SimProxy::Execute(AbstractOS::Thread* threadPtr)
{
	printf("SimProxy.Execute()\n");
	while(_executing)
	{
		while(_proxyQueue.empty()) {
			//threadPtr->yield();
		}
		//simMutex.Acquire();
		printf("Now executing object\n");
		Simulation* task = _proxyQueue.front();
		RealTimeExecution* future = _clientQueue.front();
		_proxyQueue.pop();
		_clientQueue.pop();
		task->RunSimulation(future);
		delete task;
		delete future;
		//simMutex.Release();
		//threadPtr->yield();
	}
}

void SimProxy::Push(Simulation* simObject, RealTimeExecution* rte)
{
	printf("In SimProxy. Now pushing objects\n");
	simMutex.Acquire();
	printf("Acquired mutex");
	_proxyQueue.push(simObject);
	_clientQueue.push(rte);
	simMutex.Release();
	printf("In SimProxy. Finished pushing objects\n");
}
