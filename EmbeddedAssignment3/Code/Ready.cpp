#include "Ready.h"
#include "RealTimeLoop.h"
#include "Configuration.h"
#include <iostream>
#include "RealTimeLoop.h"
#include "EmbeddedSystemX.h"
#include "Mode1.h"
#include "PowerOnSelfTest.h"

Ready* Ready::_instance = 0;

Ready* Ready::GetInstance()
{
	return (!_instance) ? _instance = new Ready : _instance;
}

Ready::Ready()
{
}

Ready::~Ready()
{
}

void Ready::SelftestOk(EmbeddedSystemX* context)
{
}

void Ready::Initialized(EmbeddedSystemX* context)
{
}

void Ready::ConfigurationEnded(EmbeddedSystemX* context)
{
}

void Ready::Exit(EmbeddedSystemX* context)
{
}

void Ready::Stop(EmbeddedSystemX* context)
{
}

void Ready::Suspend(EmbeddedSystemX* context)
{
}

void Ready::Resume(EmbeddedSystemX* context)
{
}

void Ready::SelfTestFailed(EmbeddedSystemX* context, int errorNo)
{
}

void Ready::ConfigX(EmbeddedSystemX* context)
{
}

void Ready::chMode(EmbeddedSystemX* context)
{
}

void Ready::eventX(EmbeddedSystemX* context)
{
}

void Ready::eventY(EmbeddedSystemX* context)
{
}

void Ready::Start(EmbeddedSystemX* context){
	std::cout << "Start. Changing to RealTimeLoop\n";
	RealTimeLoop* state = Mode1::GetInstance();
	context->setCurrent(state);
}

void Ready::Configure(EmbeddedSystemX* context){
	std::cout << "Configure. Changing to Configuration\n";
	Configuration* state = Configuration::GetInstance();
	state->ReadConfigurationInfo();
	context->setCurrent(state);
}

void Ready::Restart(EmbeddedSystemX* context)
{
	std::cout << "Restart. Changing to PowerOnSelfTest\n";
	PowerOnSelfTest* state = PowerOnSelfTest::GetInstance();
	context->setCurrent(state);
}
