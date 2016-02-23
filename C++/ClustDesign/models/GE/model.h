#pragma once

#include "../../odeint.h"
#include "../../metamodel.h"

class Model : public Metamodel {

protected:


public:

	explicit Model(
		state_type &_y,
		state_type &_dydt,
		parameters_type &_p,
		std::vector<double> &_trange,
		double _dt) : Metamodel( _y, _dydt, _p, _trange, _dt) {};

	void operator() (const state_type &_y, state_type &_dydt, double _t) const ;

	matrix_type jacobiandpar(const state_type &_y, const double _t);
	matrix_type jacobiandvar(const state_type &_y, const double _t);

};