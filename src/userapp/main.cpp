/*
 * Empty C++ Application
 */

#include <stdio.h>
#include "xil_io.h"
#include "xparameters.h"
#include "xgenerationgenerator.h"
#include "iostream"
#include "Context.h"
#include "Action.h"
#include "UserThread.h"
#include "RandomThread.h"

int main()
{
	//Create threads
	UserThread mUserThread(Thread::PRIORITY_ABOVE_NORMAL, "UserThread");
	RandomThread mRandomhread(Thread::PRIORITY_NORMAL, "RandomThread");

	/* Start FreeRTOS, the tasks running. */
	vTaskStartScheduler();

	for( ;; );

	return 0;
}
