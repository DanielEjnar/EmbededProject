#include "Mode1.h"
#include <stdio.h>

Mode1* Mode1::_instance = 0;

Mode1::Mode1()
{
}

Mode1::~Mode1()
{
}

Mode1* Mode1::GetInstance()
{
	return (!_instance) ? _instance = new Mode1 : _instance;
}

void Mode1::responseEventX()
{
	printf("Event X happened. Responding with a :(\n");
}

void Mode1::responseEventY()
{
	printf("Event Y happened. Responding with a :(\n");
}

