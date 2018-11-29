#include "Operational.h"
#include "OperationalState.h"


Operational::Operational()
{
}


Operational::~Operational()
{
}

void Operational::SelftestOk(OperationalState* context)
{
	_currentState->SelftestOk(context);
}

void Operational::Initalized(OperationalState* context)
{
	_currentState->Initalized(context);
}

void Operational::Restart(OperationalState* context)
{
	_currentState->Restart(context);
}

void Operational::Configure(OperationalState* context)
{
	_currentState->Configure(context);
}

void Operational::ConfigurationEnded(OperationalState* context)
{
	_currentState->ConfigurationEnded(context);
}

void Operational::Exit(OperationalState* context)
{
	_currentState->Exit(context);
}

void Operational::Stop(OperationalState* context)
{
	_currentState->Stop(context);
}

void Operational::Start(OperationalState* context)
{
	_currentState->Start(context);
}

void Operational::Suspend(OperationalState* context)
{
	_currentState->Suspend(context);
}

void Operational::Resume(OperationalState* context)
{
	_currentState->Resume(context);
}

void Operational::SelfTestFailed(OperationalState* context, int errorNo)
{
	_currentState->SelfTestFailed(context, errorNo);
}

void Operational::ConfigX(OperationalState* context)
{
	_currentState->ConfigX(context);
}

void Operational::chMode(OperationalState* context)
{
	_currentState->chMode(context);
}

void Operational::eventX(OperationalState* context)
{
	_currentState->eventX(context);
}

void Operational::eventY(OperationalState* context)
{
	_currentState->eventY(context);
}

void Operational::setCurrent(OperationalState* s)
{
	_currentState = s;
}
