#include "stdafx.h"
#include "Simulate.h"
#include "Context.h"
#include "Action.h"
#include <iostream>


Simulate::Simulate()
{
}


State* Simulate::HandleAction(Context& context, Action action)
{
	if(action.GetAction() == "ABORT") {
		std::cout << "Abort() called" << std::endl;
		return new Idle();
	}
	if(action.GetAction() == "OPTIMIZED") {
		std::cout << "Optimized() called" << std::endl;
		return new Idle();
	}
	return NULL;
}

void Simulate::Enter(Context& context)
{
}

void Simulate::Exit(Context& context)
{
}
