#include "identifiability.h"


void compute_sensitvity_matrix(Model &m)
{

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
	
	runge_kutta4< state_type > stepper;
	integrate_times(stepper,
		m,
		y,
		trange,
		dt,
		[&](const state_type &_y, const double _t) {m.observer_odesolve_y(_y, _t); });

	runge_kutta4< state_type > stepper2;

	for (int i = 0; i < m.get_parameters_number(); ++i) {
		integrate_times(stepper2,
			[&](const state_type &_z, state_type &_dzdt, double _t) {odesolve_dzdt(_z, _dzdt, _t, m, i); },
			dydt,
			trange,
			dt,
			[&](const state_type &_z, const double _t) {m.observer_odesolve_dydp(_z, _t, i); });
	}


	//runge_kutta4< state_type > stepper;
	//integrate_times(stepper,
	//	m,
	//	m.get_y(),
	//	m.get_trange(),
	//	m.get_dt(),
	//	[&](const state_type &_y, const double _t) {m.observer_odesolve_y(_y, _t); });

	//runge_kutta4< state_type > stepper2;

	//for (int i = 0; i < m.get_parameters_number(); ++i) {
	//	integrate_times(stepper2,
	//		[&](const state_type &_z, state_type &_dzdt, double _t) {odesolve_dzdt(_z, _dzdt, _t, m, i); },
	//		m.get_dydt(),
	//		m.get_trange(),
	//		m.get_dt(),
	//		[&](const state_type &_z, const double _t) {m.observer_odesolve_dydp(_z, _t, i); });
	//}

}


void odesolve_dzdt(const state_type &z, state_type &dzdt, double t, Model &m, int p_ind)
{

	pair<double, state_type> it = m.find_odesolve_y(t);

	state_type y = it.second;
	double t_start = it.first;
	double t_end = t;

	runge_kutta4< state_type > stepper;
	//cout << "derdpark" << '\t' << x[0] << '\t' << x[1] << endl;
	integrate_const(stepper, m, y, t_start, t_end, 0.1);
	//cout << "derdpark2" << '\t' << x[0] << '\t' << x[1] << endl;
	matrix_type bs = m.jacobiandpar(y, t_end);

	//myfilebs << "bs" << endl << bs << endl;
	matrix_type J = m.jacobiandvar(y, t_end);
	//cout << "bs" << endl << bs << endl;
	//cout << "J" << endl << J << endl;
	//cout << "z" << endl << z[1] << '\t' << z[2]  << endl;

	for (int i = 0; i < state_value; ++i) {
		dzdt[i] = bs(i, p_ind);
		for (int j = 0; j < state_value; ++j) {
			dzdt[i] += J(i, j)*z[j];
			//myfileJy << t << '\t' << '\t' << i << '\t' << j << '\t' << y[j] << '\t' << J(i, j)*y[j] << endl;
		}
	}

}