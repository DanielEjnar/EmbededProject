#include "EmbeddedSystemX.h"
#include "PowerOnSelfTest.h"
#include <iostream>
#include <cstdio>

int main()
{
	EmbeddedSystemX* context = new EmbeddedSystemX();
	context->setCurrent(PowerOnSelfTest::GetInstance());
	context->getCurrent()->SelfTestFailed(context, 999);
	std::cout << context->getCurrent();
	getchar();
	return 0;
}
