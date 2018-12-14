#pragma once
#include "State.h"
class Setup :
	public State
{
public:
	Setup();
	void Enter(Context& context) override;
	void Exit(Context& context) override;
	State* HandleAction(Context& context, Action action) override;
};

