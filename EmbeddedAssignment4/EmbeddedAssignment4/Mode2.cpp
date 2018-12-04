#include "Mode2.h"
#include <iostream>
#include "Mode3.h"
#include "EmbeddedSystemX.h"
#include "Mode1.h"
#include "PowerOnSelfTest.h"
#include "Suspended.h"

Mode2* Mode2::_instance = 0;

Mode2::Mode2(): ApplicationModeSetting()
{
}

Mode2::~Mode2()
{
}

Mode2* Mode2::GetInstance()
{
	return (!_instance) ? _instance = new Mode2 : _instance;
}

void Mode2::chMode(EmbeddedSystemX* context)
{
  std::cout << "chMode Mode2. Changing to Mode3\n";
  Mode3* state = Mode3::GetInstance();
 // context->setCurrent(state);
}

void Mode2::responseM2eventX()
{
	std::cout << "Event X happened. Responding with a :(\n";
}

void Mode2::responseM2eventY()
{
	std::cout << "Event Y happened. Responding with a :>\n";
}
