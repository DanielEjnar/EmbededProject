#pragma once
//#include "RealTimeLoop.h"
//#include "EmbeddedSystemX.h"

class RealTimeLoop;
class ApplicationModeSetting
{
public:
	ApplicationModeSetting();
	virtual ~ApplicationModeSetting();
private:
	static ApplicationModeSetting* _state;
};
