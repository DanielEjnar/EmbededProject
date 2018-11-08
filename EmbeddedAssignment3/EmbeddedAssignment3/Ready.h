#include "Operational.h"
class Ready : public Operational
{
public:
	static Ready* GetInstance();
	void Start(Operational* context);
	void Configure(Operational* context);
private:
	static Ready* _instance;
	Ready();
	~Ready();
};
