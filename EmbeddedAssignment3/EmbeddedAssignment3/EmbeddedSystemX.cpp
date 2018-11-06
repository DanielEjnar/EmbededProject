#include "EmbeddedSystemX.h"

EmbeddedSystemX::EmbeddedSystemX()
{
}

EmbeddedSystemX::~EmbeddedSystemX()
{
}

void EmbeddedSystemX::SelftestOk(EmbeddedSystemX* context)
{
}

void EmbeddedSystemX::Initalized(EmbeddedSystemX* context)
{
}

void EmbeddedSystemX::Restart(EmbeddedSystemX* context)
{
}

void EmbeddedSystemX::Configure(EmbeddedSystemX* context)
{
}

void EmbeddedSystemX::ConfigurationEnded(EmbeddedSystemX* context)
{
}

void EmbeddedSystemX::Exit(EmbeddedSystemX* context)
{
}

void EmbeddedSystemX::Stop(EmbeddedSystemX* context)
{
}

void EmbeddedSystemX::Start(EmbeddedSystemX* context)
{
}

void EmbeddedSystemX::Suspend(EmbeddedSystemX* context)
{
}

void EmbeddedSystemX::SelfTestFailed(EmbeddedSystemX* context, int errorNo)
{
}

void EmbeddedSystemX::ConfigX(EmbeddedSystemX* context)
{
}

void EmbeddedSystemX::chMode(EmbeddedSystemX* context)
{
}

void EmbeddedSystemX::eventX(EmbeddedSystemX* context)
{
}

void EmbeddedSystemX::eventY(EmbeddedSystemX* context)
{
}

void EmbeddedSystemX::Resume(EmbeddedSystemX* context)
{
}

void EmbeddedSystemX::setCurrent(State* s)
{
	currentState = s;
}

State* EmbeddedSystemX::getCurrent()
{
	return currentState;
}
