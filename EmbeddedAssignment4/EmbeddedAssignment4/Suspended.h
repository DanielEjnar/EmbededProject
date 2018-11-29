#pragma once
#include "Operational.h"
#include "OperationalState.h"

class Suspended :	public OperationalState
{
public:
	static Suspended* GetInstance();
	void Stop(Operational* context);
	void Resume(Operational* context);
private:
	static Suspended* _instance;
	Suspended();
	~Suspended();
};
