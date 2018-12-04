#include "Mode2.h"
#include <iostream>
#include "Mode3.h"
#include "EmbeddedSystemX.h"
#include "Mode1.h"
#include "PowerOnSelfTest.h"
#include "Suspended.h"
#include "stdio.h"

Mode2* Mode2::_instance = 0;

Mode2::Mode2()
{
}

Mode2::~Mode2()
{
}

Mode2* Mode2::GetInstance()
{
	return (!_instance) ? _instance = new Mode2 : _instance;
}

void Mode2::responseEventX()
{
	printf("Event X happened. Responding with a :(\n");
}

void Mode2::responseEventY()
{
	printf("Event Y happened. Responding with a :>\n");
}

