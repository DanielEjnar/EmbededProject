#include "Suspended.h"
#include "Ready.h"
#include "RealTimeLoop.h"
#include <iostream>
#include "Operational.h"
#include "EmbeddedSystemX.h"
#include "RealTimeLoop.h"
#include "Mode1.h"
#include "PowerOnSelfTest.h"

Suspended* Suspended::_instance = 0;

Suspended::Suspended()
{
}

Suspended::~Suspended()
{
}

void Suspended::SelftestOk(EmbeddedSystemX* context)
{
}

void Suspended::Initialized(EmbeddedSystemX* context)
{
}

void Suspended::Configure(EmbeddedSystemX* context)
{
}

void Suspended::ConfigurationEnded(EmbeddedSystemX* context)
{
}

void Suspended::Exit(EmbeddedSystemX* context)
{
}

void Suspended::Start(EmbeddedSystemX* context)
{
}

void Suspended::Suspend(EmbeddedSystemX* context)
{
}

void Suspended::SelfTestFailed(EmbeddedSystemX* context, int errorNo)
{
}

void Suspended::ConfigX(EmbeddedSystemX* context)
{
}

void Suspended::chMode(EmbeddedSystemX* context)
{
}

void Suspended::eventX(EmbeddedSystemX* context)
{
}

void Suspended::eventY(EmbeddedSystemX* context)
{
}

Suspended* Suspended::GetInstance(){
  return (!_instance) ? _instance = new Suspended : _instance;
}

void Suspended::Stop(EmbeddedSystemX* context){
  std::cout << "Stop. Changing to Ready\n";
  Ready* state = Ready::GetInstance();
  context->setCurrent(state);
}

void Suspended::Resume(EmbeddedSystemX* context){
  std::cout << "Resume. Changing to Mode1\n";
  RealTimeLoop* state = Mode1::GetInstance();
  context->setCurrent(state);
}

void Suspended::Restart(EmbeddedSystemX* context)
{
	std::cout << "Restart. Changing to PowerOnSelfTest\n";
	PowerOnSelfTest* state = PowerOnSelfTest::GetInstance();
	context->setCurrent(state);
}

