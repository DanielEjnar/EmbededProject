// UserApp.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <iostream>
#include "Context.h"
#include "Action.h"

int main()
{
	std::cout << "Booting ...\n";
	std::unique_ptr<Context> context = std::make_unique<Context>();
	context->HandleInput(std::make_unique<Action>("ENTER_SETUP"));
	context->HandleInput(std::make_unique<Action>("SETUP_DONE"));
	context->HandleInput(std::make_unique<Action>("OPTIMIZE"));
	context->HandleInput(std::make_unique<Action>("ABORT"));
	context->HandleInput(std::make_unique<Action>("OPTIMIZE"));
    return 0;
}
