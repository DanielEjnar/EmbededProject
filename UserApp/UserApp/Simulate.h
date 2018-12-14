#pragma once
#include "Optimize.h"
class Simulate :
	public Optimize
{
public:
	Simulate();
	State* HandleAction(Context& context, Action action) override;
	void Enter(Context& context) override;
	void Exit(Context& context) override;
};

