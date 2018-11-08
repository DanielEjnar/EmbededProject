#include "RealTimeLoop.h"
#include "Ready.h"
#include "Suspended.h"
#include <iostream>

RealTimeLoop* RealTimeLoop::_instance = 0;

RealTimeLoop::RealTimeLoop()
{
}

RealTimeLoop::~RealTimeLoop()
{
}

RealTimeLoop* RealTimeLoop::GetInstance(){
  return (!_instance) ? _instance = new RealTimeLoop : _instance;
}

void RealTimeLoop::Stop(Operational* context)
{
  std::cout << "Stop. Changing to Ready\n";
  Ready* state = Ready::GetInstance();
  context->setCurrent(state);
}

void RealTimeLoop::Suspend(Operational* context)
{
  std::cout << "Suspend. Changing to Suspended\n";
  Suspended* state = Suspended::GetInstance();
  context->setCurrent(state);
}
