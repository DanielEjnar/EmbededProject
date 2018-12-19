#pragma once
#include "RealTimeLoop.h"

class Mode2 : public ApplicationModeSetting
{
public:
	static Mode2* GetInstance();
	void responseEventX() override;
	void responseEventY() override;
private:
	static Mode2* _instance;
	Mode2();
	~Mode2();
};
