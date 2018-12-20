#ifdef _MSC_VER
	#include "stdafx.h"
#endif
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

void Context::AddFitness(uint32_t fitness)
{
	if(_latestFitness.size() >= 5)
		_latestFitness.erase(_latestFitness.begin());
	_latestFitness.push_back(fitness);
}

std::vector<uint32_t> Context::GetLatestFitness()
{
	//std::vector<uint32_t> fitArr = {};
	//for(int i = 0; i < _latestFitness.size(); i++) {
	//	fitArr.push_back(_latestFitness.at(_latestFitness.size()-i));
	//}
	return _latestFitness;
}






















