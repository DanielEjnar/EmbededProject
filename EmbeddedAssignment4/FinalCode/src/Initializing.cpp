#include "Initializing.h"
#include "Operational.h"
#include "Ready.h"
#include "EmbeddedSystemX.h"
#include "stdio.h"

Initializing* Initializing::_instance = 0;

Initializing::Initializing()
{
}


Initializing::~Initializing()
{
}

void Initializing::SelftestOk(EmbeddedSystemX* context)
{
}

void Initializing::Restart(EmbeddedSystemX* context)
{
}

void Initializing::Configure(EmbeddedSystemX* context)
{
}

void Initializing::ConfigurationEnded(EmbeddedSystemX* context)
{
}

void Initializing::Exit(EmbeddedSystemX* context)
{
}

void Initializing::Stop(EmbeddedSystemX* context)
{
}

void Initializing::Start(EmbeddedSystemX* context)
{
}

void Initializing::Suspend(EmbeddedSystemX* context)
{
}

void Initializing::Resume(EmbeddedSystemX* context)
{
}

void Initializing::SelfTestFailed(EmbeddedSystemX* context, int errorNo)
{
}

void Initializing::ConfigX(EmbeddedSystemX* context)
{
}

void Initializing::chMode(EmbeddedSystemX* context, int mode)
{
}

void Initializing::eventX(EmbeddedSystemX* context)
{
}

void Initializing::eventY(EmbeddedSystemX* context)
{
}


void Initializing::Initialized(EmbeddedSystemX* context)
{
	printf("Initialized. Changing to Ready\n");
	Ready* state = Ready::GetInstance();
	context->setCurrent(state);
}

void Initializing::startInitializing()
{
}

Initializing* Initializing::GetInstance(){
  return (!_instance) ? _instance = new Initializing : _instance;
}
