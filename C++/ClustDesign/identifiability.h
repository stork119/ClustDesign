#pragma once

#ifndef CLUSTDESIGN_IDENTIFIABILITY
#define CLUSTDESIGN_IDENTIFIABILITY

#include "odeint.h"
#include "metamodel.h"

void compute_sensitvity_matrix(Metamodel &m);
void odesolve_dzdt(const state_type &z, state_type &dzdt, double t, Metamodel &m, int p_ind);


#endif
