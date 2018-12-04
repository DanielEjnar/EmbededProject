#include "Mode3.h"
#include <iostream>
#include "Mode1.h"
#include "EmbeddedSystemX.h"
#include "PowerOnSelfTest.h"
#include "Mode2.h"
#include "Suspended.h"

Mode3* Mode3::_instance = 0;

Mode3::Mode3(): RealTimeLoop()
{
}

Mode3::~Mode3()
{
}

void Mode3::SelftestOk(EmbeddedSystemX* context)
{
}

void Mode3::Initialized(EmbeddedSystemX* context)
{
}

void Mode3::Configure(EmbeddedSystemX* context)
{
}

void Mode3::ConfigurationEnded(EmbeddedSystemX* context)
{
}

void Mode3::Exit(EmbeddedSystemX* context)
{
}

void Mode3::Stop(EmbeddedSystemX* context)
{
}

void Mode3::Start(EmbeddedSystemX* context)
{
}

void Mode3::Suspend(EmbeddedSystemX* context)
{
	std::cout << "Suspend. Changing to Suspended\n";
	Suspended* state = Suspended::GetInstance();
	context->setCurrent(state);
}

void Mode3::Resume(EmbeddedSystemX* context)
{
}

void Mode3::SelfTestFailed(EmbeddedSystemX* context, int errorNo)
{
}

void Mode3::ConfigX(EmbeddedSystemX* context)
{
}

void Mode3::eventX(EmbeddedSystemX* context)
{
}

void Mode3::eventY(EmbeddedSystemX* context)
{
}

Mode3* Mode3::GetInstance()
{
	return (!_instance) ? _instance = new Mode3 : _instance;
}

void Mode3::chMode(EmbeddedSystemX* context)
{
	std::cout << "chMode Mode3. Changing to Mode1\n";
	RealTimeLoop* state = Mode1::GetInstance();
	context->setCurrent(state);
}
void Mode3::Restart(EmbeddedSystemX* context)
{
	std::cout << "Restart. Changing to PowerOnSelfTest\n";
	PowerOnSelfTest* state = PowerOnSelfTest::GetInstance();
	context->setCurrent(state);
}

void Mode3::responseM3eventX()
{
	std::cout << "Event X happened. Responding with a :o\n";
}
