#include "stdafx.h"
#include "Save.h"
#include "Action.h"
#include <iostream>
#include "Idle.h"


Save::Save()
{
}

State* Save::HandleAction(Context& context, Action action)
{
	if(action.GetAction() == "GEN_SAVED") {
		std::cout << "GenSaved() called" << std::endl;
		return new Idle();
	}
	return NULL;
}

void Save::Enter(Context& context)
{
}

void Save::Exit(Context& context)
{
}
