#include "Failure.h"
#include <iostream>
#include "EmbeddedSystemX.h"
#include "stdio.h"

Failure* Failure::_instance = 0;

Failure::Failure()
{

}

Failure::~Failure()
{
}

void Failure::SelftestOk(EmbeddedSystemX* context)
{
}

void Failure::Initialized(EmbeddedSystemX* context)
{
}

void Failure::Configure(EmbeddedSystemX* context)
{
}

void Failure::ConfigurationEnded(EmbeddedSystemX* context)
{
}

void Failure::Exit(EmbeddedSystemX* context)
{
}

void Failure::Stop(EmbeddedSystemX* context)
{
}

void Failure::Start(EmbeddedSystemX* context)
{
}

void Failure::Suspend(EmbeddedSystemX* context)
{
}

void Failure::Resume(EmbeddedSystemX* context)
{
}

void Failure::SelfTestFailed(EmbeddedSystemX* context, int errorNo)
{
}

void Failure::ConfigX(EmbeddedSystemX* context)
{
}

void Failure::chMode(EmbeddedSystemX* context, int mode)
{
}

void Failure::eventX(EmbeddedSystemX* context)
{
}

void Failure::eventY(EmbeddedSystemX* context)
{
}

void Failure::display(int errorNo)
{
	printf("ErrorNo: " + errorNo);
}

Failure* Failure::GetInstance()
{
	return (!_instance) ? _instance = new Failure : _instance;
}

void Failure::Restart(EmbeddedSystemX* context)
{
	printf("Restart. Changing to PowerOnSelfTest\n");
	context->setCurrent(PowerOnSelfTest::GetInstance());
}
