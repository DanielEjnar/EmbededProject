#pragma once
#include "State.h"
class Idle :
	public State
{
public:
	Idle();
	State* HandleAction(Context& context, Action action) override;
	void Enter(Context& context) override;
	void Exit(Context& context) override;
};

