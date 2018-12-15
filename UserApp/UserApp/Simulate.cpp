#include "stdafx.h"
#include "Simulate.h"
#include "Context.h"
#include "Action.h"
#include <iostream>


Simulate::Simulate()
{
}


std::unique_ptr<State> Simulate::HandleAction(Context& context, Action action)
{
	if(action.GetAction() == "ABORT") {
		std::cout << "Abort() called" << std::endl;
		return std::make_unique<Idle>();
	}
	if(action.GetAction() == "OPTIMIZED") {
		std::cout << "Optimized() called" << std::endl;
		return std::make_unique<Idle>();
	}
	return NULL;
}

void Simulate::Enter(Context& context)
{
}

void Simulate::Exit(Context& context)
{
}
