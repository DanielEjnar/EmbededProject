#include "RealTimeLoop.h"
#include <cstddef>
#include "Ready.h"
#include "EmbeddedSystemX.h"
#include "stdio.h"
#include "RealTimeExecution.h"
#include "Mode1.h"
#include "Mode2.h"
#include "Mode3.h"
#include <typeinfo>
#include <string.h>

ApplicationModeSetting* RealTimeLoop::_appState = 0;
RealTimeExecution* RealTimeLoop::_simState = 0;
RealTimeLoop* RealTimeLoop::_instance = 0;

RealTimeLoop::RealTimeLoop()
{}


RealTimeLoop::~RealTimeLoop()
{}

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
	printf("Exit. Changing to Ready\n");
	_appState = NULL;
	_simState = NULL;
	Ready* state = Ready::GetInstance();
	context->setCurrent(state);
}

void RealTimeLoop::Restart(EmbeddedSystemX* context)
{
	printf("Restart. Changing to PowerOnSelfTest\n");
	PowerOnSelfTest* state = PowerOnSelfTest::GetInstance();
	context->setCurrent(state);
}

void RealTimeLoop::RunRealTime()
{}

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
	Exit(context);
}

void RealTimeLoop::Start(EmbeddedSystemX* context)
{
	printf("Start called in RealTimeLoop");
	_simState->Start();
}

void RealTimeLoop::Suspend(EmbeddedSystemX* context)
{
	Exit(context);
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

void RealTimeLoop::chMode(EmbeddedSystemX* context, int mode)
{
	// Change between the modes
	printf("In RealTimeLoop.chMode\n");
	if (mode = 1) _appState = Mode2::GetInstance();
	else if (mode = 2) _appState = Mode3::GetInstance();
	else if (mode = 3) _appState = Mode1::GetInstance();
	else _appState = Mode1::GetInstance();
}

void RealTimeLoop::eventX(EmbeddedSystemX* context)
{
	_appState->responseEventX();
}

void RealTimeLoop::eventY(EmbeddedSystemX* context)
{
	_appState->responseEventY();
}
