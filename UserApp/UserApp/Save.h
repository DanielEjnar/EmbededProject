#pragma once
#include "State.h"
class Save :
	public State
{
public:
	Save();
	State* HandleAction(Context& context, Action action) override;
	void Enter(Context& context) override;
	void Exit(Context& context) override;
};

