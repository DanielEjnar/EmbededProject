#pragma once
#include "State.h"
#include "Idle.h"

class Action;

class Context
{
public:
	Context();
	~Context();
	virtual void HandleInput(Action action);
	void SetCurrent(std::unique_ptr<State> s);
	void SetA(int a);
	void SetB(int b);
private:
	std::unique_ptr<State> _currentState = std::make_unique<Idle>();
	int a;
	int b;
};

