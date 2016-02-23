#include <fstream>
#include <iostream>
#include <algorithm>

#include <vector>
#include <string>


/*** TODO Model including !!!***/
#include "models.h"
#include "odeint.h"
#include "identifiability.h"


int main() {
	
	/* Model input */
	parameters_type p = {  100.f, 20.f,  3.f, 0.6f };
	state_type y = { 501.f, 1005.f };// { p[0] / p[2], (p[0] * p[1]) / (p[2] * p[3]) }; // initial conditions
	state_type dydt = { 0.f , 0.f };
	double dt = 0.1;

	/* Time */
	int N = 1000;
	double deltaN = 120.0 / (N - 1);

	std::vector<double> trange(N);
	trange[0] = 0;
	for (int i = 1; i < N; ++i) {
		trange[i] = trange[i - 1] + deltaN;
	}


	Model &m = Model(y, dydt, p, trange, dt);

	compute_sensitvity_matrix(m);

	m.write_odesolve_y("logs/odesolve_1.csv");
	m.write_sensitivity_matrix("logs/sensitivity_matrix_1.csv");

}