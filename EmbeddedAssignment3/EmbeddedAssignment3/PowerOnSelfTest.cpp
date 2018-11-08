#include "PowerOnSelfTest.h"
#include <iostream>
#include "Failure.h"
#include "EmbeddedSystemX.h"

PowerOnSelfTest* PowerOnSelfTest::_instance = 0;

PowerOnSelfTest::PowerOnSelfTest()
{
}


PowerOnSelfTest::~PowerOnSelfTest()
{
}

PowerOnSelfTest* PowerOnSelfTest::GetInstance()
{
	return (!_instance) ? _instance = new PowerOnSelfTest : _instance;
}

void PowerOnSelfTest::SelftestOk(EmbeddedSystemX* context)
{
}

void PowerOnSelfTest::SelfTestFailed(EmbeddedSystemX* context, int errorNo)
{
	std::cout << "SelfTestFailed. Changing to Failure\n";
	Failure* state = Failure::GetInstance();
	state->Display(errorNo);
	context->setCurrent(state);
}
