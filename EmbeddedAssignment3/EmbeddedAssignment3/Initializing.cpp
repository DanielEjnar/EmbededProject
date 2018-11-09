#include "Initializing.h"
#include "Operational.h"
#include "Ready.h"
#include "EmbeddedSystemX.h"

Initializing* Initializing::_instance = 0;

Initializing::Initializing()
{
}


Initializing::~Initializing()
{
}

void Initializing::Initalized(EmbeddedSystemX* context)
{
	Operational* state = Ready::GetInstance();
	context->setCurrent(state);
}

Initializing* Initializing::GetInstance(){
  return (!_instance) ? _instance = new Initializing : _instance;
}
