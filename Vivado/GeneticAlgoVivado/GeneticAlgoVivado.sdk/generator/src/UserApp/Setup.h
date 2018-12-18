#pragma once
#include "State.h"
class Setup :
	public State
{
public:
	Setup();
	void Enter(Context& context) override;
	void Exit(Context& context) override;
	std::unique_ptr<State> HandleAction(Context& context, std::unique_ptr<Action> action) override;
};

