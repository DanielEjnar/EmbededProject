#include "Mode3.h"
#include <iostream>
#include "Mode1.h"
#include "EmbeddedSystemX.h"
#include "PowerOnSelfTest.h"
#include "Mode2.h"
#include "Suspended.h"
#include "stdio.h"

Mode3* Mode3::_instance = 0;

Mode3::Mode3()
{
}

Mode3::~Mode3()
{
}

Mode3* Mode3::GetInstance()
{
	return (!_instance) ? _instance = new Mode3 : _instance;
}

void Mode3::responseEventX()
{
	printf("Event Y happened. Responding with a :>\n");
}

void Mode3::responseEventY()
{
}
