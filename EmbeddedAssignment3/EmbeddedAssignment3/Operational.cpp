#include "Operational.h"

Operational* Operational::_instance = 0;

Operational* Operational::GetInstance(){
  return (!_instance) ? _instance = new Operational : _instance;
}

Operational::Operational()
{
}


Operational::~Operational()
{
}

void Operational::SelftestOk(EmbeddedSystemX* context)
{
	_currentState->SelftestOk(context);
}

void Operational::Initalized(EmbeddedSystemX* context)
{
	_currentState->Initalized(context);
}

void Operational::Restart(EmbeddedSystemX* context)
{
	_currentState->Restart(context);
}

void Operational::Configure(EmbeddedSystemX* context)
{
	_currentState->Configure(context);
}

void Operational::ConfigurationEnded(EmbeddedSystemX* context)
{
	_currentState->ConfigurationEnded(context);
}

void Operational::Exit(EmbeddedSystemX* context)
{
	_currentState->Exit(context);
}

void Operational::Stop(EmbeddedSystemX* context)
{
	_currentState->Stop(context);
}

void Operational::Start(EmbeddedSystemX* context)
{
	_currentState->Start(context);
}

void Operational::Suspend(EmbeddedSystemX* context)
{
	_currentState->Suspend(context);
}

void Operational::Resume(EmbeddedSystemX* context)
{
	_currentState->Resume(context);
}

void Operational::SelfTestFailed(EmbeddedSystemX* context, int errorNo)
{
	_currentState->SelfTestFailed(context, errorNo);
}

void Operational::ConfigX(EmbeddedSystemX* context)
{
	_currentState->ConfigX(context);
}

void Operational::chMode(EmbeddedSystemX* context)
{
	_currentState->chMode(context);
}

void Operational::eventX(EmbeddedSystemX* context)
{
	_currentState->eventX(context);
}

void Operational::eventY(EmbeddedSystemX* context)
{
	_currentState->eventY(context);
}

void Operational::setCurrent(Operational* s)
{
	_currentState = s;
}
