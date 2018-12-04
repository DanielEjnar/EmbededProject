#include "Mode1.h"
#include <iostream>
#include "Mode2.h"
#include "EmbeddedSystemX.h"
#include "PowerOnSelfTest.h"
#include "Ready.h"
#include "Suspended.h"

Mode1* Mode1::_instance = 0;

Mode1::Mode1(): ApplicationModeSetting()
{
}

Mode1::~Mode1()
{
}

Mode1* Mode1::GetInstance()
{
	return (!_instance) ? _instance = new Mode1 : _instance;
}

void Mode1::chMode(EmbeddedSystemX* context)
{
  std::cout << "chMode Mode1. Changing to Mode2\n";
//  RealTimeLoop* state = Mode2::GetInstance();
//  context->setCurrent(state);
}

void Mode1::responseM1EventX()
{
	std::cout << "Event X happened. Responding with a :)\n";
}
