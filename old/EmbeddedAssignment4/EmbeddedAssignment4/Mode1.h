#pragma once
#include "RealTimeLoop.h"

class Mode1 : public ApplicationModeSetting
{
public:
	static Mode1* GetInstance();
	void responseEventX() override;
	void responseEventY() override;
private:
	static Mode1* _instance;
	Mode1();
	~Mode1();
};
