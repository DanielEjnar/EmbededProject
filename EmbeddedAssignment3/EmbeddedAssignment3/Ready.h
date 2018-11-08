#include "Operational.h"
class Ready :
	public Operational
{
public:
	static Ready* GetInstance();
private:
	static Ready* _instance;
	Ready();
	~Ready();
};
