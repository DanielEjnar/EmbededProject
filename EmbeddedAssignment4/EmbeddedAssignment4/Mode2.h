#pragma once
#include "RealTimeLoop.h"

class Mode2 : public ApplicationModeSetting
{
public:
	static Mode2* GetInstance();
	static void chMode(RealTimeLoop* context);
	static void responseM2eventX();
	static void responseM2eventY();
private:
	static Mode2* _instance;
	Mode2();
	~Mode2();
};
