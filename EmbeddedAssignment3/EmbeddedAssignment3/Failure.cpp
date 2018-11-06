#include "Failure.h"
#include <iostream>
#include "EmbeddedSystemX.h"

Failure* Failure::_instance = 0;

Failure::Failure()
{

}

Failure::~Failure()
{
}

void Failure::Display(int errorNo)
{
	std::cout << "ErrorNo: " << errorNo << "\n";
}

Failure* Failure::GetInstance()
{
	return (!_instance) ? _instance = new Failure : _instance;
}

void Failure::SelftestOk(EmbeddedSystemX* context)
{
}

void Failure::Initalized(EmbeddedSystemX* context)
{
}

void Failure::Restart(EmbeddedSystemX* context)
{
	std::cout << "Restart. Changing to PowerOnSelfTest\n";
	context->setCurrent(Failure::GetInstance());
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

void Failure::chMode(EmbeddedSystemX* context)
{
}

void Failure::eventX(EmbeddedSystemX* context)
{
}

void Failure::eventY(EmbeddedSystemX* context)
{
}
