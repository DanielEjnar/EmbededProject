#include "Mode3.h"
#include <iostream>
#include "Mode1.h"

Mode3* Mode3::_instance = 0;

Mode3::Mode3(): RealTimeLoopState()
{
}

Mode3::~Mode3()
{
}

void Mode1::chMode(RealTimeLoop* context)
{
  std::cout << "chMode Mode3. Changing to Mode1\n";
  Mode3* state = Mode3::GetInstance();
  context->setCurrent(state);
}
