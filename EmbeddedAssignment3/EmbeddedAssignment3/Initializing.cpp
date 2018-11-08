#include "Initializing.h"
#include "Operational.h"

Initializing::Initializing()
{
}


Initializing::~Initializing()
{
}


void Initializing::Initalized(EmbeddedSystemX* context)
{
  Operational* state = Operational::GetInstance();
  context->setCurrent(state);
}

Initializing* Initializing::GetInstance(){
  return (!_instance) ? _instance = new Initializing : _instance;
}
