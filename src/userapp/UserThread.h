/*
 * UserThread.h
 *
 *  Created on: 19 Dec 2018
 *      Author: cml
 */

#ifndef SRC_USERTHREAD_H_
#define SRC_USERTHREAD_H_

#include "os/Thread.h"
using namespace AbstractOS;

class UserThread : public Thread
{
public:

	UserThread(ThreadPriority pri, string name) :
		 Thread(pri, name)
	 {

	 }


	virtual void run()
	{
		std::unique_ptr<Context> context = std::make_unique<Context>();
		bool running = true;
		char str[20];
		while(running) {
			std::cout << "Welcome to the menu" << std::endl;
			std::cout << "Press 1 for SETUP, 2 for RUN, 3 for ABORT" << std::endl;
		    std::cin >> str;
		    int num = atoi(str);
		    switch(num) {
		    	case 1:
		    		context->HandleInput(std::make_unique<Action>("ENTER_SETUP"));
		    		context->HandleInput(std::make_unique<Action>("SETUP_DONE"));
		    		break;
		    	case 2:
		    		context->HandleInput(std::make_unique<Action>("OPTIMIZE"));
		    		break;
		    	case 3:
		    		context->HandleInput(std::make_unique<Action>("ABORT"));
		    		break;
		    }
		}
	}

private:

};

#endif /* SRC_USERTHREAD_H_ */
