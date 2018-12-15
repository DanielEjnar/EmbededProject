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

void GenerateGeneration::MakeGeneration(Context& context)
{
	// Get parents chromos
	std::vector<uint64_t> chromos = context.GetCurrentGeneration();

	uint64_t parent1 = chromos.back();
	chromos.pop_back();
	uint64_t parent2 = chromos.back();
	chromos.pop_back();

	//Call GenerateGeneration here. Get two children
	uint64_t child1 = rand() * 2;
	uint64_t child2 = rand() * 2;
	context.SetCurrentGeneration({child1, child2});
	context.HandleInput(std::make_unique<Action>("GEN_CREATED"));
}

void GenerateGeneration::Enter(Context& context)
{
	std::cout << "Welcome to GenerateGeneration" << std::endl;
	MakeGeneration(context);
}

void GenerateGeneration::Exit(Context& context)
{
	std::cout << "Exiting GenerateGeneration" << std::endl;
}
