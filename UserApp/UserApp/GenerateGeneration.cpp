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

std::unique_ptr<State> GenerateGeneration::HandleAction(Context& context,
	std::unique_ptr<Action> action)
{
	if((*action).GetAction() == "ABORT") {
		std::cout << "Abort() called" << std::endl;
		action.reset();
		return std::make_unique<Idle>();
	}
	if((*action).GetAction() == "GEN_CREATED") {
		std::cout << "GenCreated() called" << std::endl;
		action.reset();
		return std::make_unique<Simulate>();
	}
	return NULL;
}

void GenerateGeneration::Enter(Context& context)
{
}

void GenerateGeneration::Exit(Context& context)
{
}
