#include "Failure.h"
#include <iostream>
#include "EmbeddedSystemX.h"

Failure* Failure::_instance = 0;

Failure::Failure()
{

}

Failure::~Failure()
{
}

void Failure::Display(int errorNo)
{
	std::cout << "ErrorNo: " << errorNo << "\n";
}

Failure* Failure::GetInstance()
{
	return (!_instance) ? _instance = new Failure : _instance;
}

void Failure::Restart(EmbeddedSystemX* context)
{
	std::cout << "Restart. Changing to PowerOnSelfTest\n";
	context->setCurrent(Failure::GetInstance());
}
