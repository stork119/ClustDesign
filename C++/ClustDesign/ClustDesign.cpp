#include <fstream>
#include <iostream>
#include <algorithm>

#include <vector>
#include <string>


/*** TODO Model including !!!***/
#include "models\GE\model.h"
#include "odeint.h"
#include "identifiability.h"


int main() {
	
	/* Model input */
	parameters_type p = { (float) 100.00, (float) 20.00, (float) 3.00,(float)  0.60 };
	state_type y = { 501, 1005 };// { p[0] / p[2], (p[0] * p[1]) / (p[2] * p[3]) }; // initial conditions
	state_type dydt = { 0 , 0 };
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

	//compute_sensitvity_matrix(m);

	runge_kutta4< state_type > stepper;
	integrate_times(stepper,
		m,
		m.get_y(),
		m.get_trange(),
		m.get_dt(),
		[&](const state_type &_y, const double _t) {m.observer_odesolve_y(_y, _t); });

	runge_kutta4< state_type > stepper2;

	for (int i = 0; i < m.get_parameters_number(); ++i) {
		integrate_times(stepper2,
			[&](const state_type &_z, state_type &_dzdt, double _t) {odesolve_dzdt(_z, _dzdt, _t, m, i); },
			m.get_dydt(),
			m.get_trange(),
			m.get_dt(),
			[&](const state_type &_z, const double _t) {m.observer_odesolve_dydp(_z, _t, i); });
	}


	m.write_odesolve_y("logs/odesolve_1.csv");
	m.write_sensitivity_matrix("logs/sensitivity_matrix_1.csv");

}