#pragma once
#include "State.h"
class Initializing : public State
{
public:
	static Initializing* GetInstance();
	void Initalized(EmbeddedSystemX* context);
	void startInitializing();
private:
	static Initializing* _instance;
	Initializing();
	~Initializing();
};
