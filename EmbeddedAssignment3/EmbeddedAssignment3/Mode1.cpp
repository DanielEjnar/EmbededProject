#include "Mode1.h"
#include <iostream>
#include "Mode2.h"

Mode1* Mode1::_instance = 0;

Mode1::Mode1(): RealTimeLoopState()
{
}

Mode1::~Mode1()
{
}

void Mode1::chMode(RealTimeLoop* context)
{
  std::cout << "chMode Mode1. Changing to Mode2\n";
  Mode2* state = Mode2::GetInstance();
  context->setCurrent(state);
}
