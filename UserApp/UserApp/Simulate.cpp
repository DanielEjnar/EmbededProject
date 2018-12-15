#include "stdafx.h"
#include "Simulate.h"
#include "Context.h"
#include "Action.h"
#include <iostream>
#include "ieee754float.h"
#include <vector>
#include "GenerateGeneration.h"

Simulate::Simulate()
{
}

std::unique_ptr<State> Simulate::HandleAction(Context& context, 
	std::unique_ptr<Action> action)
{
	if((*action).GetAction() == "ABORT") {
		std::cout << "Abort() called" << std::endl;
		action.reset();
		return std::make_unique<Idle>();
	}
	if((*action).GetAction() == "OPTIMIZED") {
		std::cout << "Optimized() called" << std::endl;
		action.reset();
		return std::make_unique<Idle>();
	}
	if ((*action).GetAction() == "SIM_DONE") {
		std::cout << "SimDone() called" << std::endl;
		action.reset();
		return std::make_unique<GenerateGeneration>();
	}
	return NULL;
}

void Simulate::RunSimulation(Context& context)
{
	// Get parameters
	int a = context.GetA();
	int b = context.GetB();

	// Make initial population if current gen is empty
	std::vector<uint64_t> chromos = {};
	auto currentGen = context.GetCurrentGeneration();
	if(currentGen.size() == 0) {
		uint64_t parent1 = rand() * 2;
		uint64_t parent2 = rand() * 2;
		std::vector<uint64_t> chromos = { parent1, parent2 };
	} else {
		chromos = currentGen;
	}

	// Start simulation
	// Evaluate fitness of each chromos
	for (uint64_t c : chromos) {
		std::cout << "Evaluating: " << c << '\n';
		float fitness = EvaluateFitness(c, a, b);
		std::cout << "Got fitness: " << fitness << '\n';
	}
	chromos.clear();
	bool done;
	if(done) { context.HandleInput(std::make_unique<Action>("OPTIMIZED")); }
	else { context.HandleInput(std::make_unique<Action>("SIM_DONE"));  }
}

float Simulate::EvaluateFitness(int a, int b, uint64_t chromosome)
{
	// Get x and y part of chromosome
	uint32_t x = chromosome>>(CHROMOSOME_WIDTH >> 1);
	uint32_t y = chromosome;

	// Get float representations paras and coefficients
	float x_float = uint32ToFloat(x);
	float y_float = uint32ToFloat(y);
	float a_float = uint32ToFloat(a);
	float b_float = uint32ToFloat(b);

	float result = floatToUint32_t((float)(pow((a_float - x_float), 2)
		+ b_float*pow((y_float - pow(x_float, 2)), 2)));
	return result;
}

void Simulate::Enter(Context& context)
{
	std::cout << "Welcome to the Simulator" << std::endl;
	RunSimulation(context);
}

void Simulate::Exit(Context& context)
{
	std::cout << "Exiting Simulator" << std::endl;
}
