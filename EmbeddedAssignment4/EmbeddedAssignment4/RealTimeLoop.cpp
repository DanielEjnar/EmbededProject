#include "RealTimeLoop.h"
#include <cstddef>
#include "Ready.h"
#include "EmbeddedSystemX.h"
#include <iostream>
#include "RealTimeExecution.h"
#include "Mode1.h"

ApplicationModeSetting* RealTimeLoop::_appState = 0;
RealTimeExecution* RealTimeLoop::_simState = 0;
RealTimeLoop* RealTimeLoop::_instance = 0;

RealTimeLoop::RealTimeLoop() {}


RealTimeLoop::~RealTimeLoop() {}

RealTimeLoop* RealTimeLoop::GetInstance()
{
	return (!_instance) ? _instance = new RealTimeLoop : _instance;
}

void RealTimeLoop::Entry()
{
	_appState = Mode1::GetInstance();
	_simState = new RealTimeExecution();
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

void RealTimeLoop::RunRealTime()
{}

void RealTimeLoop::Simulate()
{
	_simState->Start();
}

void RealTimeLoop::setCurrent(ApplicationModeSetting* newAppState)
{
	_appState = newAppState;
}

void RealTimeLoop::SelftestOk(EmbeddedSystemX* context)
{
}

void RealTimeLoop::Initialized(EmbeddedSystemX* context)
{
}

void RealTimeLoop::Configure(EmbeddedSystemX* context)
{
}

void RealTimeLoop::ConfigurationEnded(EmbeddedSystemX* context)
{
}

void RealTimeLoop::Stop(EmbeddedSystemX* context)
{
}

void RealTimeLoop::Start(EmbeddedSystemX* context)
{
}

void RealTimeLoop::Suspend(EmbeddedSystemX* context)
{
}

void RealTimeLoop::Resume(EmbeddedSystemX* context)
{
}

void RealTimeLoop::SelfTestFailed(EmbeddedSystemX* context, int errorNo)
{
}

void RealTimeLoop::ConfigX(EmbeddedSystemX* context)
{
}

void RealTimeLoop::chMode(EmbeddedSystemX* context)
{
	_appState->chMode(this);
}

void RealTimeLoop::eventX(EmbeddedSystemX* context)
{
}

void RealTimeLoop::eventY(EmbeddedSystemX* context)
{
}
