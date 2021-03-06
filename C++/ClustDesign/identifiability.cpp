#include "identifiability.h"
#include <pthread.h>

void compute_odesolve(Model &m)
{
	state_type _y = m.get_y();
	state_type &y = _y;
	runge_kutta4< state_type > stepper;
	integrate_times(stepper,
		m,
		y,
		m.get_trange(),
		m.get_dt(),
		[&](const state_type &_y, const double _t) {m.observer_odesolve_y(_y, _t); });

}

void compute_sensitvity_matrix(Model &m)
{
	state_type _y = m.get_y();
	state_type &y = _y;
	runge_kutta4< state_type > stepper;
	integrate_times(stepper,
		m,
		y,
		m.get_trange(),
		m.get_dt(),
		[&](const state_type &_y, const double _t) {m.observer_odesolve_y(_y, _t); });

	runge_kutta4< state_type > stepper2;

	for (int i = 0; i < m.get_parameters_number(); ++i) {
		state_type _dydt = m.get_dydt();
		state_type &dydt = _dydt;

		integrate_times(stepper2,
			[&](const state_type &_z, state_type &_dzdt, double _t) {odesolve_dzdt(_z, _dzdt, _t, m, i); },
			dydt,
			m.get_trange(),
			m.get_dt(),
			[&](const state_type &_z, const double _t) {m.observer_odesolve_dydp(_z, _t, i); });
		pthread_testcancel();
	}
	


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
	pthread_testcancel();

}
