#pragma once
#include "Optimize.h"
class Simulate :
	public Optimize
{
public:
	Simulate();
	std::unique_ptr<State> HandleAction(Context& context, std::unique_ptr<Action> action) override;
	void RunSimulation(Context& context);
	float EvaluateFitness(int a, int b, uint64_t chromosome);
	bool IsSimulationDone(Context& context);
	void Enter(Context& context) override;
	void Exit(Context& context) override;
};

