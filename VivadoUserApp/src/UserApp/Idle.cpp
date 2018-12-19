#ifdef _MSC_VER
	#include "stdafx.h"
#endif
#include "Idle.h"
#include "Setup.h"
#include "Context.h"
#include "Save.h"
#include "Simulate.h"
#include <iostream>
#include "Action.h"


Idle::Idle()
{
}

std::unique_ptr<State> Idle::HandleAction(Context& context, std::unique_ptr<Action> action)
{
	if((*action).GetAction() == "ENTER_SETUP") {
		std::cout << "EnterSetup() called" << std::endl;
		return std::make_unique<Setup>();
	}
	if((*action).GetAction() == "SAVE_GEN") {
		std::cout << "SaveGen() called" << std::endl;
		return std::make_unique<Save>();
	}
	if ((*action).GetAction() == "OPTIMIZE") {
		std::cout << "Optimize() called" << std::endl;
		return std::make_unique<Simulate>();
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
