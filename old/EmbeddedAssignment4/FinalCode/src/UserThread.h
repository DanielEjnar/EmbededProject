/*
 * UserThread.h
 *
 *  Created on: 20. July 2018
 *      Author: Kim Bjerge
 */

#ifndef SRC_USERTHREAD_H_
#define SRC_USERTHREAD_H_

#include "Thread.h"
#include "EmbeddedSystemX.h"
using namespace AbstractOS;


class MainThread : public Thread
{
public:

	MainThread(ThreadPriority pri, string name) :
		 Thread(pri, name)
	 {

	 }

	virtual void run()
	{
		printf("Booting ...\n");
		EmbeddedSystemX* context = new EmbeddedSystemX();
		context->SelfTestFailed(context, 99);
		context->Restart(context);
		context->SelftestOk(context);
		context->Initalized(context);
		context->Configure(context);
		context->ConfigurationEnded(context);
		context->Start(context);

		// Start simulation
		printf("Starting simulation from UserThread\n");
		context->Start(context);
		context->Start(context);
		context->Start(context);
		context->Start(context);
		context->Start(context);
		printf("Ending ...\n");
	}
};

#endif /* SRC_USERTHREAD_H_ */
