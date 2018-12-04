#pragma once
//#include "RealTimeLoop.h"
//#include "EmbeddedSystemX.h"

class RealTimeLoop;
class ApplicationModeSetting
{
public:
	ApplicationModeSetting();
	virtual void responseEventX() = 0;
	virtual void responseEventY() = 0;
	virtual ~ApplicationModeSetting();
};
