#include "SimulateRealTime.h"

SimulateRealTime* _instance = 0;

SimulateRealTime* SimulateRealTime::GetInstance()
{
	return (!_instance) ? _instance = new SimulateRealTime : _instance;
}

SimulateRealTime::SimulateRealTime()
{
}


SimulateRealTime::~SimulateRealTime()
{
}
