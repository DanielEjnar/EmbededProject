#pragma once
#include "Optimize.h"
class GenerateGeneration :
	public Optimize
{
public:
	GenerateGeneration();
	~GenerateGeneration();
	State* HandleAction(Context& context, Action action) override;
	void Enter(Context& context) override;
	void Exit(Context& context) override;
};

