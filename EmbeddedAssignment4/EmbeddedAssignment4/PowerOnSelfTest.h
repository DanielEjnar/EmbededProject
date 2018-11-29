#pragma once
#include "State.h"

class PowerOnSelfTest : public State
{
public:
	static PowerOnSelfTest* GetInstance();
	void SelftestOk(EmbeddedSystemX* context);
	void SelfTestFailed(EmbeddedSystemX* context, int errorNo);
private:
	static PowerOnSelfTest* _instance;
	PowerOnSelfTest();
	~PowerOnSelfTest();
};

