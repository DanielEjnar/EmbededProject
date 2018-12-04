#include "PowerOnSelfTest.h"
#include "stdio.h"
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

void PowerOnSelfTest::chMode(EmbeddedSystemX* context, int mode)
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
	printf("SelfTestOk. Changing to Initializing\n");
	Initializing* state = Initializing::GetInstance();
	state->Initialized(context);
	context->setCurrent(state);
}

void PowerOnSelfTest::SelfTestFailed(EmbeddedSystemX* context, int errorNo)
{
	printf("SelfTestFailed. Changing to Failure\n");
	Failure* state = Failure::GetInstance();
	state->display(errorNo);
	context->setCurrent(state);
}

void PowerOnSelfTest::systemSelftest()
{
	printf("Performing system self test!\n");
}
