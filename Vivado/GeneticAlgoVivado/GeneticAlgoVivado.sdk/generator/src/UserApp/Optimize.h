#pragma once
#include "State.h"
class Optimize :
	public State
{
public:
	Optimize();
	virtual ~Optimize();
	std::unique_ptr<State> HandleAction(Context& context, std::unique_ptr<Action> action) override = 0;
	void Enter(Context& context) override = 0;
	void Exit(Context& context) override = 0;
};

