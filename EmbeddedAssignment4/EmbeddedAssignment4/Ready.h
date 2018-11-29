#include "Operational.h"
#include "OperationalState.h"

class Ready : public OperationalState
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
