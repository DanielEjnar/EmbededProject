#include "Operational.h"
#include "Operational.h"

class Ready : public Operational
{
public:
	static Ready* GetInstance();
	void Start(EmbeddedSystemX* context);
	void Configure(EmbeddedSystemX* context);
	void Restart(EmbeddedSystemX* context);
	void SelftestOk(EmbeddedSystemX* context) override;
	void Initialized(EmbeddedSystemX* context) override;
	void ConfigurationEnded(EmbeddedSystemX* context) override;
	void Exit(EmbeddedSystemX* context) override;
	void Stop(EmbeddedSystemX* context) override;
	void Suspend(EmbeddedSystemX* context) override;
	void Resume(EmbeddedSystemX* context) override;
	void SelfTestFailed(EmbeddedSystemX* context, int errorNo) override;
	void ConfigX(EmbeddedSystemX* context) override;
	void chMode(EmbeddedSystemX* context, int mode) override;
	void eventX(EmbeddedSystemX* context) override;
	void eventY(EmbeddedSystemX* context) override;
private:
	static Ready* _instance;
	Ready();
	~Ready();
};
