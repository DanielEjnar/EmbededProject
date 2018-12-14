#include "stdafx.h"
#include "Action.h"
#include <string>


Action::Action(std::string action)
{
	_action = action;
}

std::string Action::GetAction() const
{
	return _action;
}
