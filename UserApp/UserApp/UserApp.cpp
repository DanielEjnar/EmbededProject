// UserApp.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <iostream>
#include "Context.h"

int main()
{
	std::cout << "Booting ...\n";
	Context* context = new Context();

    return 0;
}
