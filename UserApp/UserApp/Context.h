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
	void SetA(float a);
	void SetB(float b);
	int GetA();
	int GetB();
	void SetCurrentGeneration(std::vector<uint64_t> generation);
	std::vector<uint64_t> GetCurrentGeneration();
	void AddFitness(uint32_t fitness);
	std::vector<uint32_t> GetLatestFitness();
private:
	std::unique_ptr<State> _currentState = std::make_unique<Idle>();
	std::vector<uint64_t> _currentGeneration = {};
	std::vector<uint32_t> _latestFitness = {};
	int _a;
	int _b;
};
