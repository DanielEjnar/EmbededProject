#include "RealTimeLoop.h"
#include <cstddef>
#include "Ready.h"
#include "EmbeddedSystemX.h"
#include <iostream>
#include "Mode1.h"
#include "RealTimeExecution.h"

ApplicationModeSetting* RealTimeLoop::_appState = 0;
SimulateRealTime* RealTimeLoop::_simState = 0;

RealTimeLoop::RealTimeLoop() {}


RealTimeLoop::~RealTimeLoop() {}

void RealTimeLoop::Entry()
{
	_appState = Mode1::GetInstance();
	_simState = RealTimeExecution::GetInstance();
}

void RealTimeLoop::Exit(EmbeddedSystemX* context)
{
	std::cout << "Exit. Changing to Ready\n";
	_appState = NULL;
	_simState = NULL;
	Ready* state = Ready::GetInstance();
	context->setCurrent(state);
}

void RealTimeLoop::Restart(EmbeddedSystemX* context)
{
	std::cout << "Restart. Changing to PowerOnSelfTest\n";
	PowerOnSelfTest* state = PowerOnSelfTest::GetInstance();
	context->setCurrent(state);
}

void RealTimeLoop::ChMode()
{
	_appState->ChMode();
}
