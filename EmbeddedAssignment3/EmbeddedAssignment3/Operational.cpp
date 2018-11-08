#include "Operational.h"



Operational::Operational()
{
}


Operational::~Operational()
{
}

void Operational::SelftestOk(EmbeddedSystemX* context)
{
}

void Operational::Initalized(EmbeddedSystemX* context)
{
}

void Operational::Restart(EmbeddedSystemX* context)
{
}

void Operational::Configure(EmbeddedSystemX* context)
{
}

void Operational::ConfigurationEnded(EmbeddedSystemX* context)
{
}

void Operational::Exit(EmbeddedSystemX* context)
{
}

void Operational::Stop(EmbeddedSystemX* context)
{
}

void Operational::Start(EmbeddedSystemX* context)
{
}

void Operational::Suspend(EmbeddedSystemX* context)
{
}

void Operational::Resume(EmbeddedSystemX* context)
{
}

void Operational::SelfTestFailed(EmbeddedSystemX* context, int errorNo)
{
}

void Operational::ConfigX(EmbeddedSystemX* context)
{
}

void Operational::chMode(EmbeddedSystemX* context)
{
}

void Operational::eventX(EmbeddedSystemX* context)
{
}

void Operational::eventY(EmbeddedSystemX* context)
{
}

void Operational::setCurrent(Operational* s)
{
	_currentState = s;
}
