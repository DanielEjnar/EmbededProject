#pragma once
#include "Operational.h"
class Suspended :	public Operational
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
