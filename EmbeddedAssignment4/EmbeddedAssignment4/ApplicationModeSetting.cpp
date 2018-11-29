#include "ApplicationModeSetting.h"
#include "Ready.h"
#include "Suspended.h"
#include <iostream>

ApplicationModeSetting* ApplicationModeSetting::_applicationModeSettingState = 0;

ApplicationModeSetting::ApplicationModeSetting()
{
}

ApplicationModeSetting::~ApplicationModeSetting()
{
}

ApplicationModeSetting* ApplicationModeSetting::GetInstance()
{
	return _applicationModeSettingState;
}

void ApplicationModeSetting::Stop(Operational* context)
{
  std::cout << "Stop. Changing to Ready\n";
  Ready* state = Ready::GetInstance();
  context->setCurrent(state);
}

void ApplicationModeSetting::Suspend(Operational* context)
{
  std::cout << "Suspend. Changing to Suspended\n";
  Suspended* state = Suspended::GetInstance();
  context->setCurrent(state);
}
