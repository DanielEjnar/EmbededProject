#include "RealTimeExecution.h"
#include <stdio.h>

void RealTimeExecution::RunRealTime()
{
	printf("Simulation finished, RealTimeExecution called");
}

RealTimeExecution::RealTimeExecution()
{
	printf("In ctor RealTimeExecution");
	// new proxy object
}

RealTimeExecution::~RealTimeExecution()
{

}

void RealTimeExecution::Start()
{
	printf("In RealTimeExecution.Start. Now pushing sim objects\n");
	simProxy.Push(new Simulation(), this);
}
 
