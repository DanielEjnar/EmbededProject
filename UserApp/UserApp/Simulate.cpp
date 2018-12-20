#include "stdafx.h"
#include "Simulate.h"
#include "Context.h"
#include "Action.h"
#include <iostream>
#include "ieee754float.h"
#include <vector>
#include "GenerateGeneration.h"
#include "math.h"
#include <algorithm>
#include <vector>

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
	if ((*action).GetAction() == "SIM_DONE") {
		std::cout << "SimDone() called" << std::endl;
		action.reset();
		// Assert stopping criterion
		if(IsSimulationDone(context)) {
			return std::make_unique<Idle>();
		} else {
			return std::make_unique<GenerateGeneration>();
		}
	}
	return NULL;
}

bool Simulate::IsSimulationDone(Context& context)
{
	return false;
	//std::vector<uint32_t> fitArr = context.GetLatestFitness();
	//std::sort(fitArr.begin(), fitArr.end());
	//if (fitArr.begin() <= fitArr.end()) {
	//	return true;
	//} else return false;
}

void Simulate::RunSimulation(Context& context)
{
	// Get parameters
	float a = context.GetA();
	float b = context.GetB();

	// Make initial population if current gen is empty
	std::vector<uint64_t> chromos = {};
	auto currentGen = context.GetCurrentGeneration();
	if(currentGen.empty()) {
		uint64_t parent1 = rand();
		uint64_t parent2 = rand();
		chromos = { parent1, parent2 };
	} else {
		chromos = currentGen;
	}

	// Start simulation
	// Evaluate fitness of each chromos
	for (uint64_t c : chromos) {
		std::cout << "Evaluating: " << c << '\n';
		float fitness = EvaluateFitness(a, b, c);
		context.AddFitness(fitness);
		std::cout << "Got fitness: " << fitness << '\n';
	}
	chromos.clear();
	context.HandleInput(std::make_unique<Action>("SIM_DONE"));
}

float Simulate::EvaluateFitness(float a, float b, uint64_t chromosome)
{
	// Get x and y part of chromosome
	uint32_t x = chromosome>>(CHROMOSOME_WIDTH >> 1);
	uint32_t y = chromosome;

	// Get float representations parameters and coefficients
	float x_float = *(float*)(&x);
	float y_float = *(float*)(&y);

	uint32_t result = pow((a - x_float), 2)
		+ b*pow((y_float - pow(x_float, 2)), 2);
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
