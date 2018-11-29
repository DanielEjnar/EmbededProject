#include "Mode2.h"
#include <iostream>
#include "Mode3.h"
#include "EmbeddedSystemX.h"
#include "Mode1.h"
#include "PowerOnSelfTest.h"
#include "Suspended.h"

Mode2* Mode2::_instance = 0;

Mode2::Mode2(): RealTimeLoop()
{
}

Mode2::~Mode2()
{
}

void Mode2::SelftestOk(EmbeddedSystemX* context)
{
}

void Mode2::Initialized(EmbeddedSystemX* context)
{
}

void Mode2::Configure(EmbeddedSystemX* context)
{
}

void Mode2::ConfigurationEnded(EmbeddedSystemX* context)
{
}

void Mode2::Exit(EmbeddedSystemX* context)
{
}

void Mode2::Stop(EmbeddedSystemX* context)
{
}

void Mode2::Start(EmbeddedSystemX* context)
{
}

void Mode2::Suspend(EmbeddedSystemX* context)
{
	std::cout << "Suspend. Changing to Suspended\n";
	Suspended* state = Suspended::GetInstance();
	context->setCurrent(state);
}

void Mode2::Resume(EmbeddedSystemX* context)
{
}

void Mode2::SelfTestFailed(EmbeddedSystemX* context, int errorNo)
{
}

void Mode2::ConfigX(EmbeddedSystemX* context)
{
}

void Mode2::eventX(EmbeddedSystemX* context)
{
}

void Mode2::eventY(EmbeddedSystemX* context)
{
}

Mode2* Mode2::GetInstance()
{
	return (!_instance) ? _instance = new Mode2 : _instance;
}

void Mode2::chMode(EmbeddedSystemX* context)
{
  std::cout << "chMode Mode2. Changing to Mode3\n";
  Mode3* state = Mode3::GetInstance();
  context->setCurrent(state);
}

void Mode2::Restart(EmbeddedSystemX* context)
{
	std::cout << "Restart. Changing to PowerOnSelfTest\n";
	PowerOnSelfTest* state = PowerOnSelfTest::GetInstance();
	context->setCurrent(state);
}

void Mode2::responseM2eventX()
{
	std::cout << "Event X happened. Responding with a :(\n";
}

void Mode2::responseM2eventY()
{
	std::cout << "Event Y happened. Responding with a :>\n";
}
