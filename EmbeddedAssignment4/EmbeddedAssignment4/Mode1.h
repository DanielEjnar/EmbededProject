#pragma once
#include "RealTimeLoop.h"

class Mode1 : public ApplicationModeSetting
{
public:
	static Mode1* GetInstance();
	void responseM1EventX();
	void responseM2EventX();
	void responseM2EventY();
	void responseM3EventX();
private:
	static Mode1* _instance;
	Mode1();
	~Mode1();
};
