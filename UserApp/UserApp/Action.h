#pragma once
#include <xstring>

class Action
{
public:
	Action(std::string action);
	std::string GetAction() const;
private:
	std::string _action;
};

