#include "PowerOnSelfTest.h"
#include <iostream>
#include "Failure.h"
#include "EmbeddedSystemX.h"
#include "Initializing.h"

PowerOnSelfTest* PowerOnSelfTest::_instance = 0;

PowerOnSelfTest::PowerOnSelfTest()
{
}


PowerOnSelfTest::~PowerOnSelfTest()
{
}

void PowerOnSelfTest::Initialized(EmbeddedSystemX* context)
{
}

void PowerOnSelfTest::Restart(EmbeddedSystemX* context)
{
}

void PowerOnSelfTest::Configure(EmbeddedSystemX* context)
{
}

void PowerOnSelfTest::ConfigurationEnded(EmbeddedSystemX* context)
{
}

void PowerOnSelfTest::Exit(EmbeddedSystemX* context)
{
}

void PowerOnSelfTest::Stop(EmbeddedSystemX* context)
{
}

void PowerOnSelfTest::Start(EmbeddedSystemX* context)
{
}

void PowerOnSelfTest::Suspend(EmbeddedSystemX* context)
{
}

void PowerOnSelfTest::Resume(EmbeddedSystemX* context)
{
}

void PowerOnSelfTest::ConfigX(EmbeddedSystemX* context)
{
}

void PowerOnSelfTest::chMode(EmbeddedSystemX* context)
{
}

void PowerOnSelfTest::eventX(EmbeddedSystemX* context)
{
}

void PowerOnSelfTest::eventY(EmbeddedSystemX* context)
{
}

PowerOnSelfTest* PowerOnSelfTest::GetInstance()
{
	return (!_instance) ? _instance = new PowerOnSelfTest : _instance;
}

void PowerOnSelfTest::SelftestOk(EmbeddedSystemX* context)
{
	std::cout << "SelfTestOk. Changing to Initializing\n";
	Initializing* state = Initializing::GetInstance();
	state->Initialized(context);
	context->setCurrent(state);
}

void PowerOnSelfTest::SelfTestFailed(EmbeddedSystemX* context, int errorNo)
{
	std::cout << "SelfTestFailed. Changing to Failure\n";
	Failure* state = Failure::GetInstance();
	state->display(errorNo);
	context->setCurrent(state);
}

void PowerOnSelfTest::systemSelftest()
{
	std::cout << "Performing system self test!\n";
}
