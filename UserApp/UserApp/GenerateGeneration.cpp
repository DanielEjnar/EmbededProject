#include "stdafx.h"
#include "GenerateGeneration.h"
#include "Idle.h"
#include "Context.h"
#include "Simulate.h"
#include "Action.h"
#include <ostream>
#include <iostream>

GenerateGeneration::GenerateGeneration()
{
}

GenerateGeneration::~GenerateGeneration()
{
}

State* GenerateGeneration::HandleAction(Context& context, Action action)
{
	if(action.GetAction() == "ABORT") {
		std::cout << "Abort() called" << std::endl;
		return new Idle();
	}
	if(action.GetAction() == "GEN_CREATED") {
		std::cout << "GenCreated() called" << std::endl;
		return new Simulate();
	}
	return NULL;
}

void GenerateGeneration::Enter(Context& context)
{
}

void GenerateGeneration::Exit(Context& context)
{
}
