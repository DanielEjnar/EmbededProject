#ifdef _MSC_VER
	#include "stdafx.h"
#endif
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
