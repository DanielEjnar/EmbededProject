#pragma once
#include "RealTimeLoop.h"

class Mode1 : public ApplicationModeSetting
{
public:
	static Mode1* GetInstance();
	static void responseM1EventX();
private:
	static Mode1* _instance;
	Mode1();
	~Mode1();
};
