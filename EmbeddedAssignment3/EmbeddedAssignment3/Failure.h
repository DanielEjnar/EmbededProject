#pragma once
#include "State.h"

class Failure : public State
{
public:
	static Failure* GetInstance();
	void Display(int errorNo);
	void Restart(EmbeddedSystemX* context);
private:
	Failure();
	~Failure();
	static Failure* _instance;
};