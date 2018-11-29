#include "Configuration.h"
#include "Ready.h"
#include <iostream>

Configuration* Configuration::_instance = 0;

Configuration::Configuration()
{
}


Configuration::~Configuration()
{
}

Configuration* Configuration::GetInstance(){
  return (!_instance) ? _instance = new Configuration : _instance;
}
void Configuration::ConfigurationEnded(Operational* context){
  std::cout << "ConfigurationEnded. Changing to Ready\n";
  Ready* state = Ready::GetInstance();
  context->setCurrent(state);
}

void Configuration::ReadConfigurationInfo(){

}

void Configuration::ConfigX(){

}
