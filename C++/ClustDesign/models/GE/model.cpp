#include "model.h"


/*double Model::stimulus(double _t) const
{
	return 1.0;
}*/

void Model::operator() (const state_type &_y, state_type &_dydt, double _t) const {
	_dydt[0] = p[0]  * stimulus(_t)- p[2] * _y[0];//;
	_dydt[1] = p[1] * _y[0] - p[3] * _y[1];
}


matrix_type Model::jacobiandpar(const state_type &_y, const double _t)
{
	matrix_type m(2, 4);
	m(0, 0) = stimulus(_t);
	m(0, 1) = 0;
	m(0, 2) = -_y[0];
	m(0, 3) = 0;
	m(1, 0) = 0;
	m(1, 1) = _y[0];
	m(1, 2) = 0;
	m(1, 3) = -_y[1];
	return m;
}

matrix_type Model::jacobiandvar(const state_type &_y, const double _t)
{
	/**
	[(-p(3))  (0)];
	[(p(2))  (-p(4))];
	**/
	matrix_type m(2, 2);
	m(0, 0) = -p[2];
	m(0, 1) = 0;
	m(1, 0) = p[1];
	m(1, 1) = -p[3];
	return m;

}

double Model::stimulus(double _t) const {
	double t0 = 12.0;
	if(_t <= t0)
	{
		return 10;
	}
	return 0.0;
}

