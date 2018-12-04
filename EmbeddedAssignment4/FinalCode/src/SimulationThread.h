/*
 * SimulationThread.h
 *
 *  Created on: 4 Dec 2018
 *      Author: cml
 */

#ifndef SRC_SIMULATIONTHREAD_H_
#define SRC_SIMULATIONTHREAD_H_

#include "Thread.h"
#include "SimProxy.h"
using namespace AbstractOS;

extern SimProxy simProxy;
class SimulationThread : public Thread {
public:

	SimulationThread(ThreadPriority pri, string name) :
		Thread(pri,name)
	{

	}

	virtual void run()
	{
		simProxy.Execute(this);
	}

};

#endif /* SRC_SIMULATIONTHREAD_H_ */
