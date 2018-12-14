#pragma once
#include "State.h"
class Optimize :
	public State
{
public:
	Optimize();
	virtual ~Optimize();
	State* HandleAction(Context& context, Action action) override = 0;
	void Enter(Context& context) override = 0;
	void Exit(Context& context) override = 0;
};

