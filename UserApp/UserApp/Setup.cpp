#include "stdafx.h"
#include "Setup.h"
#include "Idle.h"
#include "Context.h"
#include <iostream>
#include "Action.h"
#include <stdlib.h>
#include <stdio.h>

Setup::Setup()
{
	
}

void Setup::Enter(Context& context)
{
	char a[20];
	char b[20];
	std::cout << "Performing setup\n";
	std::cout << "Enter A value: \n";
    std::cin >> a;
    int numA = atoi(a);
	context.SetA(numA);
	std::cout << "Enter B value: \n";
    std::cin >> b;
    int numB = atoi(b);
	context.SetB(numB);
	std::cout << "Setup done\n";
}

void Setup::Exit(Context& context)
{
}

std::unique_ptr<State> Setup::HandleAction(Context& context,
	std::unique_ptr<Action> action)
{
	if((*action).GetAction() == "SETUP_DONE") {
		std::cout << "SetupDone() called" << std::endl;
		action.reset();
		return std::make_unique<Idle>();
	}
	return NULL;
}
