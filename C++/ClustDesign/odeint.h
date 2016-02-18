#pragma once

#ifndef CLUSTDESIGN_ODEINT
#define CLUSTDESIGN_ODEINT

#include <boost/array.hpp>
#include <boost/numeric/odeint.hpp>
#include <boost/numeric/ublas/matrix.hpp>
#include <boost/numeric/ublas/io.hpp>

using namespace std;
using namespace boost::numeric::odeint;

/*** TODO Change hard coding !!!***/
const int state_value = 2;

typedef float x_type;
typedef boost::array< x_type, state_value > state_type;
typedef vector<x_type> parameters_type;
typedef boost::numeric::ublas::matrix<x_type> matrix_type;

#endif
