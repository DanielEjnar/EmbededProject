#include "RealTimeExecution.h"
#include <iostream>


void RealTimeExecution::RunRealTime()
{
	std::cout << "Simulation finished, RealTimeExecution called" << std::endl;
}

RealTimeExecution::RealTimeExecution()
{
	// new proxy object
	simProxy = new SimProxy;

}

RealTimeExecution::~RealTimeExecution()
{
	delete simProxy;
}

void RealTimeExecution::Start()
{
	simProxy->Push(new Simulation(), this);
}
 