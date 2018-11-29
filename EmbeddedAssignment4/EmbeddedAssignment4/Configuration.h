#pragma once
#include "Operational.h"
#include "OperationalState.h"

class Configuration : public OperationalState
{
public:
	static Configuration* GetInstance();
	void ConfigurationEnded(Operational* context);
	void ReadConfigurationInfo();
	void ConfigX();
private:
	Configuration();
	~Configuration();
	static Configuration* _instance;
};
