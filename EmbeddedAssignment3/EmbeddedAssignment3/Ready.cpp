#include "Ready.h"

Ready* Ready::_instance = 0;

Ready* Ready::GetInstance()
{
	return (!_instance) ? _instance = new Ready : _instance;
}

Ready::Ready()
{
}

Ready::~Ready()
{
}

