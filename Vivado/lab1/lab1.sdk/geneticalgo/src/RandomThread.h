/*
 * RandomThread.h
 *
 *  Created on: 19 Dec 2018
 *      Author: cml
 */

#ifndef SRC_RANDOMTHREAD_H_
#define SRC_RANDOMTHREAD_H_

#include "os/Thread.h"
#include "xgenerationgenerator.h"
using namespace AbstractOS;

XGenerationgenerator xgen;
class RandomThread : public Thread
{
public:

	RandomThread(ThreadPriority pri, string name) :
		 Thread(pri, name)
	 {

	 }


	virtual void run()
	{
		while(true) {
			//Initize GenerationGenerator here.
			xgen.IsReady = XIL_COMPONENT_IS_READY;
			xgen.Slv0_BaseAddress = XPAR_GENERATIONGENERATOR_0_S_AXI_SLV0_BASEADDR;
			XGenerationgenerator_SetRandom(&xgen, rand());
			vTaskDelay(1);
		}
	}

private:

};



#endif /* SRC_RANDOMTHREAD_H_ */
