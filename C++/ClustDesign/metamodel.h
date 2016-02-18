#pragma once
#include "odeint.h"

#include <fstream>
#include <iostream>
#include <algorithm>

class Metamodel
{
protected:
	parameters_type p;
	double dt;
	state_type y; /* initial */
	state_type dydt; /* initial */
	std::vector<double> trange;


	vector<pair<double, state_type>>  odesolve_y;
	vector<pair<pair<double, int>, state_type>>  odesolve_dydp;

public:
	//Metamodel(parameters_type _p) : p(_p) {};
	Metamodel(
		state_type &_y,
		state_type &_dydt,
		parameters_type &_p,
		std::vector<double> &_trange,
		double _dt) : y(_y), dydt(_dydt), p(_p), trange(_trange), dt(_dt) {};
	~Metamodel();

	/* GETTERS & SETTERS */
	inline state_type& get_y()
	{
		return y;
	};

	inline state_type& get_dydt()
	{
		return dydt;
	};

	inline std::vector<double>& get_trange()
	{
		return trange;
	};

	inline double get_dt()
	{
		return dt;
	};

	/* VIRTUAL */
	virtual void operator() (const state_type &_y, state_type &_dydt, double _t) {};

	virtual matrix_type jacobiandpar(const state_type &_y, const double _t) { return matrix_type(); };
	virtual matrix_type jacobiandvar(const state_type &_y, const double _t) { return matrix_type(); };

	/* OTHER */
	void push_odesolve_y(double _t, state_type _x);
	pair<double, state_type> find_odesolve_y(const double  t);
	vector<pair<double, state_type>> get_odesolve_y();
	void write_odesolve_y(string filename);

	void push_odesolve_dydp(int _par_num, double _t, state_type _x);
	vector<pair<pair<double, int>, state_type>> get_odesolve_dydp();
	void write_sensitivity_matrix(string filename);

	/* Parameters */
	void set_parameter(int i, x_type _p);
	x_type get_parameter(int _i);

	void set_parameters(parameters_type _p);
	parameters_type get_parameters();

	int get_parameters_number();

	/* OBSERVERS */
	void observer_odesolve_dydp(const state_type &z, const double t, int p_ind);
	void observer_odesolve_y(const state_type &x, const double t);
};

