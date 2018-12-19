#ifdef _MSC_VER
	#include "stdafx.h"
#endif
#include "GenerateGeneration.h"
#include "Idle.h"
#include "Context.h"
#include "Simulate.h"
#include "Action.h"
#include <ostream>
#include <iostream>
#include "../platform.h"
#include "../xgenerationgenerator.h"


GenerateGeneration::GenerateGeneration()
{
}

GenerateGeneration::~GenerateGeneration()
{
}

std::unique_ptr<State> GenerateGeneration::HandleAction(Context& context,
	std::unique_ptr<Action> action)
{
	if((*action).GetAction() == "ABORT") {
		std::cout << "Abort() called" << std::endl;
		return std::make_unique<Idle>();
	}
	if((*action).GetAction() == "GEN_CREATED") {
		std::cout << "GenCreated() called" << std::endl;
		return std::make_unique<Simulate>();
	}
	return NULL;
}

void GenerateGeneration::MakeGeneration(Context& context)
{
	// Get parents chromos
	std::vector<uint64_t> chromos = context.GetCurrentGeneration();

	uint64_t parent1 = chromos.back();
	chromos.pop_back();
	uint64_t parent2 = chromos.back();
	chromos.pop_back();

	//Initize GenerationGenerator here. Get two parents and make two children
	XGenerationgenerator xgen;
	XGenerationgenerator_Config xgen_config;

	xgen_config.DeviceId = 0;
	xgen_config.Slv0_BaseAddress = XPAR_GENERATIONGENERATOR_0_S_AXI_SLV0_BASEADDR;
	xgen_config.Slv1_BaseAddress = XPAR_GENERATIONGENERATOR_0_S_AXI_SLV1_BASEADDR;

	XGenerationgenerator_CfgInitialize(&xgen, &xgen_config);

	// Set settings
	XGenerationgenerator_SetMutation_probability(&xgen, 255);
	XGenerationgenerator_SetStartgenerating(&xgen, 0);

	// Set parents
	XGenerationgenerator_SetGeneration_parent1(&xgen, parent1);
	XGenerationgenerator_SetGeneration_parent1(&xgen, parent2);

	// Get children
	uint64_t child1 = XGenerationgenerator_GetGeneration_child1(&xgen);
	uint64_t child2 = XGenerationgenerator_GetGeneration_child2(&xgen);
	std::cout << "Made child: " << child1 << "\n" << std::endl;
	std::cout << "Made child: " << child2 << "\n" << std::endl;
	context.SetCurrentGeneration({child1, child2});
	context.HandleInput(std::make_unique<Action>("GEN_CREATED"));
}

void GenerateGeneration::Enter(Context& context)
{
	std::cout << "Welcome to GenerateGeneration" << std::endl;
	MakeGeneration(context);
}

void GenerateGeneration::Exit(Context& context)
{
	std::cout << "Exiting GenerateGeneration" << std::endl;
}
