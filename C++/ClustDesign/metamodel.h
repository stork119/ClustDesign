#pragma once
#include "odeint.h"

#include <fstream>
#include <iostream>
#include <algorithm>

class Metamodel
{
protected:
	state_type y; /* initial */
	state_type dydt; /* initial */	
	parameters_type p;
	std::vector<double> trange;
	double dt;
	bool normalize;

	vector<pair<double, state_type>>  odesolve_y;
	vector<pair<pair<double, int>, state_type>>  odesolve_dydp;
	vector<vector<double> >  sm;
	vector<vector<double> >  odesolve_matrix;
	vector<double> odesolve_max;


public:
	//Metamodel(parameters_type _p) : p(_p) {};
	Metamodel(
		state_type &_y,
		state_type &_dydt,
		parameters_type &_p,
		std::vector<double> &_trange,
		double _dt,
		bool _normalize) : y(_y), dydt(_dydt), p(_p), trange(_trange), dt(_dt), normalize(_normalize) {};

	virtual ~Metamodel() {};

	/* GETTERS & SETTERS */
	inline state_type get_y()
	{
		return y;
	};

	inline state_type get_dydt()
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
	
	inline bool get_normalize()
	{
		return normalize;
	};

	inline std::vector<vector<double> > get_sm()
	{
		return sm;
	};

	inline std::vector<vector<double> > get_odesolve_matrix()
	{
		return odesolve_matrix;
	};



	/* VIRTUAL */
	virtual void operator() (const state_type &_y, state_type &_dydt, double _t) const = 0;

	virtual matrix_type jacobiandpar(const state_type &_y, const double _t) = 0;
	virtual matrix_type jacobiandvar(const state_type &_y, const double _t) = 0;

	/* OTHER */
	void push_odesolve_y(double _t, state_type _x);
	pair<double, state_type> find_odesolve_y(const double  t);
	vector<pair<double, state_type>> get_odesolve_y();
	void write_odesolve_y(string filename);

	void push_odesolve_dydp(int _par_num, double _t, state_type _x);
	vector<pair<pair<double, int>, state_type>> get_odesolve_dydp();
	void write_sensitivity_matrix(string filename);

	void find_max_odesolve();

	void create_sensitivity_matrix();
	void create_odesolve_matrix();



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

