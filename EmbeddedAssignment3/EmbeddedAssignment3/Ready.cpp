#include "Ready.h"
#include "RealTimeLoop.h"
#include "Configuration.h"
#include <iostream>

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

void Ready::Start(Operational* context){
	std::cout << "Start. Changing to RealTimeLoop\n";
	RealTimeLoop* state = RealTimeLoop::GetInstance();
	context->setCurrent(state);
}

void Ready::Configure(Operational* context){
	std::cout << "Configure. Changing to Configuration\n";
	Configuration* state = Configuration::GetInstance();
	state->ReadConfigurationInfo();
  context->setCurrent(state);
}
