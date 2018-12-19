#ifdef _MSC_VER
	#include "stdafx.h"
#endif
#include "Setup.h"
#include "Idle.h"
#include "Context.h"
#include <iostream>
#include "Action.h"
#include <stdlib.h>
#include <stdio.h>
#include "../platform.h"
#include "../xgenerationgenerator.h"

Setup::Setup()
{
	
}

void Setup::Enter(Context& context)
{
	std::cout << "Performing setup\n";
	std::cout << "Enter A value: \n";
    char8 incharA = inbyte();
	context.SetA(incharA);
	std::cout << "Enter B value: \n";
    char8 incharB = inbyte();
	context.SetB(incharB);
	std::cout << "Setup done\n";
}

void Setup::Exit(Context& context)
{
}

std::unique_ptr<State> Setup::HandleAction(Context& context,
	std::unique_ptr<Action> action)
{
	if((*action).GetAction() == "SETUP_DONE") {
		std::cout << "SetupDone() called" << std::endl;
		return std::make_unique<Idle>();
	}
	return NULL;
}
