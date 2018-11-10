#include "Mode1.h"
#include <iostream>
#include "Mode2.h"
#include "EmbeddedSystemX.h"
#include "PowerOnSelfTest.h"
#include "Ready.h"
#include "Suspended.h"

Mode1* Mode1::_instance = 0;

Mode1::Mode1(): RealTimeLoop()
{
}

Mode1::~Mode1()
{
}

void Mode1::SelftestOk(EmbeddedSystemX* context)
{
}

void Mode1::Initialized(EmbeddedSystemX* context)
{
}

void Mode1::Configure(EmbeddedSystemX* context)
{
}

void Mode1::ConfigurationEnded(EmbeddedSystemX* context)
{
}

void Mode1::Exit(EmbeddedSystemX* context)
{
}

void Mode1::Stop(EmbeddedSystemX* context)
{
}

void Mode1::Start(EmbeddedSystemX* context)
{
}

void Mode1::Suspend(EmbeddedSystemX* context)
{
	std::cout << "Suspend. Changing to Suspended\n";
	Suspended* state = Suspended::GetInstance();
	context->setCurrent(state);
}

void Mode1::Resume(EmbeddedSystemX* context)
{
}

void Mode1::SelfTestFailed(EmbeddedSystemX* context, int errorNo)
{
}

void Mode1::ConfigX(EmbeddedSystemX* context)
{
}

void Mode1::eventX(EmbeddedSystemX* context)
{
}

void Mode1::eventY(EmbeddedSystemX* context)
{
}

Mode1* Mode1::GetInstance()
{
	return (!_instance) ? _instance = new Mode1 : _instance;
}

void Mode1::chMode(EmbeddedSystemX* context)
{
  std::cout << "chMode Mode1. Changing to Mode2\n";
  RealTimeLoop* state = Mode2::GetInstance();
  context->setCurrent(state);
}

void Mode1::Restart(EmbeddedSystemX* context)
{
	std::cout << "Restart. Changing to PowerOnSelfTest\n";
	PowerOnSelfTest* state = PowerOnSelfTest::GetInstance();
	context->setCurrent(state);
}

void Mode1::responseM1EventX()
{
	std::cout << "Event X happened. Responding with a :)\n";
}
