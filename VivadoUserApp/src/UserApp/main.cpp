/*
 * Empty C++ Application
 */

#include "../platform.h"
#include "../xgenerationgenerator.h"
#include <stdlib.h>
#include <stdio.h>
#include <iostream>
#include "Context.h"
#include "Action.h"

int main()
{
	//init_platform();
	std::cout << "Booting ...\n";

	// Create context
	std::unique_ptr<Context> context = std::make_unique<Context>();

	while(true) {
		std::cout << "Welcome to the menu" << std::endl;
		std::cout << "Press S for SETUP, R for RUN, A for ABORT" << std::endl;
	    char8 inchar = inbyte();
	    switch(inchar) {
	    	case 'S':
	    		context->HandleInput(std::make_unique<Action>("ENTER_SETUP"));
	    		context->HandleInput(std::make_unique<Action>("SETUP_DONE"));
	    	case 'R':
	    		context->HandleInput(std::make_unique<Action>("OPTIMIZE"));
	    	case 'A':
	    		context->HandleInput(std::make_unique<Action>("ABORT"));
	    }
	}

	//while(XGenerationgenerator_GetGeneratingdone(&xgen) != 1) {}
	//XGenerationgenerator_SetStartgenerating(&xgen, 0);
	//u32 child = XGenerationgenerator_GetGeneration_child1(&xgen);
	//xil_printf("Parent: %d\n", child);

	return 0;
}
