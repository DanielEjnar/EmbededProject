#include "Mode1.h"
#include <iostream>
#include "Mode2.h"

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

void Mode1::responseM1EventX()
{
	std::cout << "Event X happened. Responding with a :)\n";
}
