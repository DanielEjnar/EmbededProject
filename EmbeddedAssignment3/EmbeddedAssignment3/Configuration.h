#pragma once
#include "Operational.h"
class Configuration : public Operational
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
