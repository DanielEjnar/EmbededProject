#include "Suspended.h"
#include "Ready.h"
#include "ApplicationModeSetting.h"
#include <iostream>
#include "OperationalState.h"

Suspended* Suspended::_instance = 0;

Suspended::Suspended()
{
}

Suspended::~Suspended()
{
}

Suspended* Suspended::GetInstance(){
  return (!_instance) ? _instance = new Suspended : _instance;
}

void Suspended::Stop(Operational* context){
  std::cout << "Stop. Changing to Ready\n";
  Ready* state = Ready::GetInstance();
  context->setCurrent(state);
}

void Suspended::Resume(Operational* context){
  std::cout << "Resume. Changing to ApplicationModeSetting\n";
  ApplicationModeSetting* state = ApplicationModeSetting::GetInstance();
  context->setCurrent(state);
}
