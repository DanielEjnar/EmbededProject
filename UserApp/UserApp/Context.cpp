#include "stdafx.h"
#include "Context.h"
#include "Action.h"
#include <memory>


Context::Context(): a(0), b(0)
{
}

Context::~Context()
{
	
}

void Context::HandleInput(Action action) {
	std::unique_ptr<State> newState = _currentState->HandleAction(*this, action);
	delete &action;
	if (newState != NULL) {
		_currentState->Exit(*this);
		_currentState.reset();
		_currentState = std::move(newState);
		_currentState->Enter(*this);
	}
}

void Context::SetCurrent(std::unique_ptr<State> s) {
	std::unique_ptr<State> oldState = std::move(_currentState);
	oldState.reset();
	_currentState = std::move(s);
}

void Context::SetA(int a)
{
}

void Context::SetB(int b)
{
}