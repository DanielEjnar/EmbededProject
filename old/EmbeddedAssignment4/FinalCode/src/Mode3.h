#pragma once
#include "RealTimeLoop.h"
#include "RealTimeLoop.h"

class Mode3 : public ApplicationModeSetting
{
public:
	static Mode3* GetInstance();
	void responseEventX() override;
	void responseEventY() override;
private:
	static Mode3* _instance;
	Mode3();
	~Mode3();
};
