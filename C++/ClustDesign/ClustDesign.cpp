#include <fstream>
#include <iostream>
#include <algorithm>

#include <vector>
#include <string>
#include <RInside.h>          

/*** TODO Model including !!!***/
#include "models.h"
#include "odeint.h"
#include "identifiability.h"




int main(int argc, char *argv[]) {
	
	/* Model input */
	parameters_type p = {  10.f, 20.f,  3.f, 0.6f };
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


	Model m = Model(y, dydt, p, trange, dt);

	compute_sensitvity_matrix(m);

	m.write_odesolve_y("logs/odesolve_2016_03_01.csv");
	m.write_sensitivity_matrix("logs/sensitivity_matrix_206_03_01.csv");

 RInside R(argc, argv);              // create an embedded R instance

    R["txt"] = "Hello, world!\n";	// assign a char* (string) to 'txt'

    R.parseEvalQ("cat(txt)");           // eval the init string, ignoring any returns

	return 0;
}
