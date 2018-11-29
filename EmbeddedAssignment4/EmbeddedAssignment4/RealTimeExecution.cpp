#include "RealTimeExecution.h"

RealTimeExecution* RealTimeExecution::_state = 0;

RealTimeExecution* RealTimeExecution::GetInstance()
{
	return _state;
}

RealTimeExecution::RealTimeExecution()
{
}


RealTimeExecution::~RealTimeExecution()
{
}
