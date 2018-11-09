#include "Operational.h"

class Ready : public Operational
{
public:
	static Ready* GetInstance();
	static void Start(Operational* context);
	static void Configure(Operational* context);
private:
	static Ready* _instance;
	Ready();
	~Ready();
};
