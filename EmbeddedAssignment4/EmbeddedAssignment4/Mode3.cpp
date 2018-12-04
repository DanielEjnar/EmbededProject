#include "Mode3.h"
#include <iostream>
#include "Mode1.h"
#include "EmbeddedSystemX.h"
#include "PowerOnSelfTest.h"
#include "Mode2.h"
#include "Suspended.h"

Mode3* Mode3::_instance = 0;

Mode3::Mode3(): ApplicationModeSetting()
{
}

Mode3::~Mode3()
{
}

Mode3* Mode3::GetInstance()
{
	return (!_instance) ? _instance = new Mode3 : _instance;
}

void Mode3::chMode(EmbeddedSystemX* context)
{
	std::cout << "chMode Mode3. Changing to Mode1\n";
	ApplicationModeSetting* state = Mode1::GetInstance();
//	context->setCurrent(state);
}

void Mode3::responseM3eventX()
{
	std::cout << "Event X happened. Responding with a :o\n";
}
