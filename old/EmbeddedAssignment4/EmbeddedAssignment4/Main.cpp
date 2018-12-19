/*
 * Empty C++ Application
 */

/*
 * main.cpp
 *
 *  Created on: 20. July 2018
 *      Author: Kim Bjerge
 */
#include "UserThread.h"
#include "SimulationThread.h"
#include "SimProxy.h"

int simCount = 0;
SimProxy simProxy;

int main()
{
	// Threads
	MainThread mMainThread(Thread::PRIORITY_NORMAL, "MainThread");
	SimulationThread mSimThread(Thread::PRIORITY_NORMAL, "SimulationThread");

	/* Start FreeRTOS, the tasks running. */
	vTaskStartScheduler();

	/* If all is well, the scheduler will now be running, and the following line
	will never be reached.  If the following line does execute, then there was
	insufficient FreeRTOS heap memory available for the idle and/or timer tasks
	to be created.  See the memory management section on the FreeRTOS web site
	for more details. */
	for( ;; );
}
