#include "stdafx.h"
#include "Setup.h"
#include "Idle.h"
#include "Context.h"
#include <iostream>
#include "Action.h"

Setup::Setup()
{
	
}

void Setup::Enter(Context& context)
{
	std::cout << "Performing setup\n";
	context.SetA(10);
	context.SetB(100);
	std::cout << "Setup done\n";
}

void Setup::Exit(Context& context)
{
}

std::unique_ptr<State> Setup::HandleAction(Context& context, Action action)
{
	if(action.GetAction() == "SETUP_DONE") {
		std::cout << "SetupDone() called" << std::endl;
		return std::make_unique<Idle>();
	}
	return NULL;
}
