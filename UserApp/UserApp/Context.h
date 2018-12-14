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
	void SetCurrent(State *s);
	void SetA(int a);
	void SetB(int b);
private:
	State* _currentState = new Idle();
	int a;
	int b;
};

