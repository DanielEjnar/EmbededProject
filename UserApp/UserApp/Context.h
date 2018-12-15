#pragma once
#include "State.h"
#include "Idle.h"
#include <vector>

#define CHROMOSOME_WIDTH 64
#define GENERATION_SIZE 10
#define RANDOM_WIDTH 24
#define FITNESS_WIDTH 16

class Action;

class Context
{
public:
	Context();
	~Context();
	virtual void HandleInput(std::unique_ptr<Action> action);
	void SetCurrentState(std::unique_ptr<State> s);
	void SetA(int a);
	void SetB(int b);
	int GetA();
	int GetB();
	void SetCurrentGeneration(std::vector<uint64_t> generation);
	std::vector<uint64_t> GetCurrentGeneration();
private:
	std::unique_ptr<State> _currentState = std::make_unique<Idle>();
	std::vector<uint64_t> _currentGeneration = {};
	int _a;
	int _b;

};

