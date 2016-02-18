#include "stdafx.h"
#include "metamodel.h"


Metamodel::~Metamodel()
{
}


/** SOLUTION **/

void Metamodel::push_odesolve_y(double _t, state_type _y) {
	odesolve_y.push_back(make_pair(_t, _y));
}


pair<double, state_type> Metamodel::find_odesolve_y(const double  t) {
	vector<pair<double, state_type>>::iterator it =
		find_if(
			odesolve_y.begin(),
			odesolve_y.end(),
			[&](const pair<double, state_type> & element) {return element.first >= t; });
	return *it;
}

vector<pair<double, state_type>> Metamodel::get_odesolve_y()
{
	return odesolve_y;
}

/** DERDPARK **/
void Metamodel::push_odesolve_dydp(int i, double _t, state_type _x)
{
	odesolve_dydp.push_back(make_pair(make_pair(_t, i), _x));
}

vector<pair<pair<double, int>, state_type>>  Metamodel::get_odesolve_dydp()
{
	return odesolve_dydp;
}

/** PARAMETERS **/

void Metamodel::set_parameters(parameters_type _p)
{
	p = _p;
}

parameters_type Metamodel::get_parameters()
{
	return p;
}


void Metamodel::set_parameter(int i, x_type _p)
{
	p[i] = _p;
}

x_type Metamodel::get_parameter(int _i)
{
	try {
		if (_i <= (int)p.size()) {
			return p[_i];
		}
		throw;

	}
	catch (...) {
		cout << "Exception : Parameters number less than required index." << endl; /*** TODO Organize exceptions ***/
		throw;
	}
	return 0;
}

int Metamodel::get_parameters_number()
{
	return (int)p.size();
}


/* write odesolve */
void Metamodel::write_odesolve_y(string filename)
{
	ofstream file;
	file.open(filename);
	for (vector<pair<double, state_type>>::iterator it = odesolve_y.begin(); it != odesolve_y.end(); ++it)
	{
		//file << it->first << '\t';
		for (int j = 0; j < state_value; ++j)
		{
			file << it->second[j] << '\t';
		}
		file << endl;
	}
	file.close();
}


/* write sensitivity matrix */
void Metamodel::write_sensitivity_matrix(string filename)
{
	std::sort(odesolve_dydp.begin(), odesolve_dydp.end());
	ofstream file;
	file.open(filename);

	for (vector<pair<pair<double, int>, state_type>>::iterator it = odesolve_dydp.begin(); it != odesolve_dydp.end(); it += get_parameters_number())
	{
		for (int i_var = 0; i_var < state_value; ++i_var)
		{
			//file << (it->first).first << '\t' << i_var << '\t';
			for (int i_par = 0; i_par < get_parameters_number(); ++i_par)
			{
				file << (it->second)[i_var] * get_parameter(i_par) << '\t';
				++it;
			}
			file << endl;
			it -= get_parameters_number();
		}
	}
	file.close();
}


/* OBSERVERS */
void Metamodel::observer_odesolve_y(const state_type &x, const double t)
{
	push_odesolve_y(t, x);
}

void Metamodel::observer_odesolve_dydp(const state_type &z, const double t, int p_ind)
{
	push_odesolve_dydp(p_ind, t, z);
}