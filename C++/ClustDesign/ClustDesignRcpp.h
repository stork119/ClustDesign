/*** TODO Model including !!!***/
#include <Rcpp.h>

#include <iostream>
#include <algorithm>

#include <vector>
#include <string>

/*** TODO Model including !!!***/
#include "models.h"
#include "odeint.h"
#include "identifiability.h"

using namespace std;
using namespace Rcpp;

vector<vector<double> > ClustDesign(
	vector<double> p,
 	vector<double> y,
	vector<double> dydt,
	double dt, 
	vector<double> trange,	
	bool normalize,
	string dir_odesolve,
	string dir_sm,
	bool save_solutions);


	
