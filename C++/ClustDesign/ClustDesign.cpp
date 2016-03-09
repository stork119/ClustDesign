#include <fstream>
#include <iostream>

#include <boost/filesystem.hpp>

/*** TODO Model including !!!***/
#include "ClustDesignRcpp.h"
#include "odeint.h"

int main(int argc, char *argv[]) {

	string dir_logs     = "logs/"; 
	if(argc > 1)
	{
		dir_logs = dir_logs + argv[1] + "/";
	}
	string dir_odesolve = dir_logs + "odesolve.csv";
	string dir_sm = dir_logs + "sm.csv";
	boost::filesystem::path dir(dir_logs);
	if(boost::filesystem::create_directory(dir))
	{
		cout << "Folder created" << endl;
	
	}

 	/* Model input */
	vector<double> p = {  10.f, 20.f,  3.f, 0.6f };
	vector<double> y = { 501.f, 1005.f };// { p[0] / p[2], (p[0] * p[1]) / (p[2] * p[3]) }; // initial conditions
	vector<double> dydt = { 0.f , 0.f };
	double dt = 0.1;

	/* Time */
	int N = 1000;
	double deltaN = 120.0 / (N - 1);

	std::vector<double> trange(N);
	trange[0] = 0;
	for (int i = 1; i < N; ++i) {
		trange[i] = trange[i - 1] + deltaN;
	}


	ClustDesign(
		p,
	 	y,
		dydt,
		dt, 
		trange,
		dir_odesolve,
		dir_sm);

	return 0;
}
