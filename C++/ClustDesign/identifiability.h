#pragma once

#ifndef CLUSTDESIGN_IDENTIFIABILITY
#define CLUSTDESIGN_IDENTIFIABILITY


#include "odeint.h"
#include "models.h"
#include "metamodel.h"

void compute_sensitvity_matrix(Model &m);
void odesolve_dzdt(const state_type &z, state_type &dzdt, double t, Model &m, int p_ind);


#endif
