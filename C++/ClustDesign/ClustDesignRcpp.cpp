#include "ClustDesignRcpp.h"

//[[Rcpp::export]]
vector<vector<double> > ClustDesign(
	vector<double> p,
 	vector<double> y,
	vector<double> dydt,
	double dt, 
	vector<double> trange,
	string dir_odesolve,
	string dir_sm){

 	/* Model input */
//	vector<double> p = {  10.f, 20.f,  3.f, 0.6f };
/*	vector<double> y = { 501.f, 1005.f };// { p[0] / p[2], (p[0] * p[1]) / (p[2] * p[3]) }; // initial conditions
	vector<double> dydt = { 0.f , 0.f };
	double dt = 0.1;

	int N = 1000;
	double deltaN = 120.0 / (N - 1);

	std::vector<double> trange(N);
	trange[0] = 0;
	for (int i = 1; i < N; ++i) {
		trange[i] = trange[i - 1] + deltaN;
	}
*/

	state_type _y;
	state_type _dydt;
	for(int i = 0; i != state_value; ++i)
	{
		_y[i] = y[i];
		_dydt[i] = dydt[i];
	}

	Model m = Model(_y, _dydt, p, trange, dt);
	compute_sensitvity_matrix(m);

	m.write_odesolve_y(dir_odesolve);
	m.write_sensitivity_matrix(dir_sm);

	m.create_sensitivity_matrix();

	return m.get_sm();

}




