#pragma once
#include "RealTimeLoop.h"
#include "RealTimeLoop.h"

class Mode3 : public ApplicationModeSetting
{
public:
	static Mode3* GetInstance();
	static void responseM3eventX();
private:
	static Mode3* _instance;
	Mode3();
	~Mode3();
};
