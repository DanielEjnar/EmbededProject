#include "stdafx.h"
#include "Save.h"
#include "Action.h"
#include <iostream>
#include "Idle.h"


Save::Save()
{
}

std::unique_ptr<State> Save::HandleAction(Context& context, Action action)
{
	if(action.GetAction() == "GEN_SAVED") {
		std::cout << "GenSaved() called" << std::endl;
		return std::make_unique<Idle>();
	}
	return NULL;
}

void Save::Enter(Context& context)
{
}

void Save::Exit(Context& context)
{
}
