#include "stdafx.h"
#include "Idle.h"
#include "Setup.h"
#include "Context.h"
#include "Save.h"
#include "Optimize.h"
#include "Simulate.h"
#include <iostream>
#include "Action.h"


Idle::Idle()
{
}

State* Idle::HandleAction(Context& context, Action action)
{
	if(action.GetAction() == "ENTER_SETUP") {
		std::cout << "EnterSetup() called" << std::endl;
		return new Setup();
	}
	if(action.GetAction() == "SAVE_GEN") {
		std::cout << "SaveGen() called" << std::endl;
		return new Save();
	}
	if (action.GetAction() == "RUN_OPTIMIZE") {
		std::cout << "RunOptimize() called" << std::endl;
		return new Simulate();
	}
	return NULL;
}

void Idle::Enter(Context& context)
{
	std::cout << "Welcome to Idle" << std::endl;
}

void Idle::Exit(Context& context)
{
	std::cout << "Exiting Idle" << std::endl;
}
