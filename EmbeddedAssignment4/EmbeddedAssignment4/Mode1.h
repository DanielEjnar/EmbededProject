#pragma once
#include "ApplicationModeSetting.h"
#include "RealTimeLoopState.h"

class Mode1 :
	public ApplicationModeSetting
{
public:
	Mode1();
	~Mode1();
	void chMode(ApplicationModeSetting* context);
};

