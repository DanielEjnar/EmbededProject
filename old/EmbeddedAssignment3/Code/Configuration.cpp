#include "Configuration.h"
#include "Ready.h"
#include <iostream>
#include "EmbeddedSystemX.h"
#include "PowerOnSelfTest.h"

Configuration* Configuration::_instance = 0;

Configuration::Configuration()
{
}


Configuration::~Configuration()
{
}

void Configuration::SelftestOk(EmbeddedSystemX* context)
{
}

void Configuration::Initialized(EmbeddedSystemX* context)
{
}

void Configuration::Configure(EmbeddedSystemX* context)
{
}

void Configuration::Exit(EmbeddedSystemX* context)
{
}

void Configuration::Stop(EmbeddedSystemX* context)
{
}

void Configuration::Start(EmbeddedSystemX* context)
{
}

void Configuration::Suspend(EmbeddedSystemX* context)
{
}

void Configuration::Resume(EmbeddedSystemX* context)
{
}

void Configuration::SelfTestFailed(EmbeddedSystemX* context, int errorNo)
{
}

void Configuration::ConfigX(EmbeddedSystemX* context)
{
}

void Configuration::chMode(EmbeddedSystemX* context)
{
}

void Configuration::eventX(EmbeddedSystemX* context)
{
}

void Configuration::eventY(EmbeddedSystemX* context)
{
}

Configuration* Configuration::GetInstance(){
  return (!_instance) ? _instance = new Configuration : _instance;
}

void Configuration::ConfigurationEnded(EmbeddedSystemX* context){
  std::cout << "ConfigurationEnded. Changing to Ready\n";
  Ready* state = Ready::GetInstance();
  context->setCurrent(state);
}

void Configuration::ReadConfigurationInfo(){
	std::cout << "Reading configuration...\n";
}

void Configuration::PerformConfigurationX()
{
	std::cout << "Performing configuration for event x\n";
}

void Configuration::Restart(EmbeddedSystemX* context)
{
	std::cout << "Restart. Changing to PowerOnSelfTest\n";
	PowerOnSelfTest* state = PowerOnSelfTest::GetInstance();
	context->setCurrent(state);
}
