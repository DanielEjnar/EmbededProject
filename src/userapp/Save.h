#pragma once
#include "State.h"
class Save :
	public State
{
public:
	Save();
	std::unique_ptr<State> HandleAction(Context& context, std::unique_ptr<Action> action) override;
	void Enter(Context& context) override;
	void Exit(Context& context) override;
};

