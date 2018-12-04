#include "EmbeddedSystemX.h"
#include "PowerOnSelfTest.h"
#include <iostream>
#include <cstdio>

int simCount = 0;
int main()
{
	std::cout << "Booting ...\n";
	EmbeddedSystemX* context = new EmbeddedSystemX();
	context->SelfTestFailed(context, 99);
	context->Restart(context);
	context->SelftestOk(context);
	context->Initalized(context);
	context->Configure(context);
	context->ConfigurationEnded(context);
	context->Start(context);
	context->Suspend(context);
	context->Resume(context);
	context->Suspend(context);
	context->Stop(context);
	context->Start(context);
	context->chMode(context);
	context->eventX(context);
	context->chMode(context);
	context->eventX(context);
	context->eventY(context);
	context->chMode(context);
	context->eventX(context);
	context->Restart(context);
	std::cout << "Ending ...\n";
	getchar();
	return 0;
}