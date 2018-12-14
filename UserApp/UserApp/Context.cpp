#include "stdafx.h"
#include "Context.h"
#include "Action.h"


Context::Context(): a(0), b(0)
{
}

Context::~Context()
{
}

void Context::HandleInput(Action action) {
	State* state = _currentState->HandleAction(*this, action);
	if (state != NULL) {
		_currentState->Exit(*this);
		delete _currentState;
		_currentState = state;
		_currentState->Enter(*this);
	}
}

void Context::SetCurrent(State* s) {
	State* oldState = _currentState;
	delete oldState;
	_currentState = s;
}

void Context::SetA(int a)
{
}

void Context::SetB(int b)
{
}