#include "stdafx.h"
#include "Context.h"
#include "Action.h"
#include <memory>


Context::Context(): _a(0), _b(0)
{
}

Context::~Context()
{
	
}

void Context::HandleInput(std::unique_ptr<Action> action) {
	std::unique_ptr<State> newState = _currentState->HandleAction(*this,
		std::move(action));
	if (newState != NULL) {
		_currentState->Exit(*this);
		_currentState.reset();
		_currentState = std::move(newState);
		_currentState->Enter(*this);
	}
}

void Context::SetCurrentState(std::unique_ptr<State> s) {
	std::unique_ptr<State> oldState = std::move(_currentState);
	oldState.reset();
	_currentState = std::move(s);
}

void Context::SetA(float a)
{
	_a = a;
}

void Context::SetB(float b)
{
	_b = b;
}

int Context::GetA()
{
	return _a;
}

int Context::GetB()
{
	return _b;
}

void Context::SetCurrentGeneration(std::vector<uint64_t> generation)
{
	_currentGeneration = generation;
}

std::vector<uint64_t> Context::GetCurrentGeneration()
{
	return _currentGeneration;
}
