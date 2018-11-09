#include "Mode2.h"
#include <iostream>
#include "Mode3.h"

Mode2* Mode2::_instance = 0;

Mode2::Mode2(): RealTimeLoopState()
{
}

Mode2::~Mode2()
{
}

void Mode2::chMode(RealTimeLoop* context)
{
  std::cout << "chMode Mode2. Changing to Mode3\n";
  Mode3* state = Mode3::GetInstance();
  context->setCurrent(state);
}
