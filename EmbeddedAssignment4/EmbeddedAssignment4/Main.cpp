#include "EmbeddedSystemX.h"
#include "PowerOnSelfTest.h"
#include <iostream>
#include <cstdio>

int main()
{
	EmbeddedSystemX* context = new EmbeddedSystemX();
	context->setCurrent(PowerOnSelfTest::GetInstance());
	context->SelfTestFailed(context, 99);
	getchar();
	return 0;
}
