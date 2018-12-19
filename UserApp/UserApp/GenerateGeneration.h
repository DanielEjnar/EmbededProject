#pragma once
#include "Optimize.h"

class GenerateGeneration :
	public Optimize
{
public:
	GenerateGeneration();
	~GenerateGeneration();
	std::unique_ptr<State> HandleAction(Context& context, std::unique_ptr<Action> action) override;
	void MakeGeneration(Context& context);
	void Enter(Context& context) override;
	void Exit(Context& context) override;
};

