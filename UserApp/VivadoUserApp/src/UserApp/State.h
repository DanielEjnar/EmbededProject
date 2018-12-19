#pragma once
#include <memory>
class Action;
class Context;

class State
{
public:
	State();
	virtual ~State();
	virtual void Enter(Context& context) = 0;
	virtual void Exit(Context& context) = 0;
	virtual std::unique_ptr<State> HandleAction(Context& context, std::unique_ptr<Action> action) = 0;
};

