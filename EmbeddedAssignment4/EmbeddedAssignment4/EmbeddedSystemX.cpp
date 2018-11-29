#include "EmbeddedSystemX.h"
#include "State.h"

EmbeddedSystemX::EmbeddedSystemX()
{
}

EmbeddedSystemX::~EmbeddedSystemX()
{
}

void EmbeddedSystemX::SelftestOk(EmbeddedSystemX* context)
{
	_currentState->SelftestOk(this);
}

void EmbeddedSystemX::Initalized(EmbeddedSystemX* context)
{
	_currentState->Initalized(this);
}

void EmbeddedSystemX::Restart(EmbeddedSystemX* context)
{
	_currentState->Restart(this);
}

void EmbeddedSystemX::Configure(EmbeddedSystemX* context)
{
	_currentState->Configure(this);
}

void EmbeddedSystemX::ConfigurationEnded(EmbeddedSystemX* context)
{
	_currentState->ConfigurationEnded(this);
}

void EmbeddedSystemX::Exit(EmbeddedSystemX* context)
{
	_currentState->Exit(this);
}

void EmbeddedSystemX::Stop(EmbeddedSystemX* context)
{
	_currentState->Stop(this);
}

void EmbeddedSystemX::Start(EmbeddedSystemX* context)
{
	_currentState->Start(this);
}

void EmbeddedSystemX::Suspend(EmbeddedSystemX* context)
{
	_currentState->Suspend(this);
}

void EmbeddedSystemX::SelfTestFailed(EmbeddedSystemX* context, int errorNo)
{
	_currentState->SelfTestFailed(this, errorNo);
}

void EmbeddedSystemX::ConfigX(EmbeddedSystemX* context)
{
	_currentState->ConfigX(this);
}

void EmbeddedSystemX::chMode(EmbeddedSystemX* context)
{
	_currentState->chMode(this);
}

void EmbeddedSystemX::eventX(EmbeddedSystemX* context)
{
	_currentState->eventX(this);
}

void EmbeddedSystemX::eventY(EmbeddedSystemX* context)
{
	_currentState->eventY(this);
}

void EmbeddedSystemX::Resume(EmbeddedSystemX* context)
{
	_currentState->Restart(this);
}

void EmbeddedSystemX::setCurrent(State* s)
{
	_currentState = s;
}
