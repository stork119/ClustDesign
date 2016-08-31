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
	
	cout << dir_logs << endl;
	if(boost::filesystem::create_directories(dir))
	{
		cout << "Folder created" << endl;
	
	}
	
	cout << dir_logs << endl;

 	/* GE */
/*	vector<double> p = {  10.f, 20.f,  3.f, 0.6f };
	//vector<double> y = { 501.f, 1005.f };// { p[0] / p[2], (p[0] * p[1]) / (p[2] * p[3]) }; // initial conditions
	vector<double> y = { p[0] / p[2], (p[0] * p[1]) / (p[2] * p[3]) }; // initial conditions
*/

	/* TNF */
	vector<double> p = { 100000.f, 250.f, 0.5f, 10000.f, 5000.f, 0.01f, 1.f, 0.1f, 16000.f, 2000.f, 0.01f, 2.f};
	vector<double> y = { 0.f, 0.f, 0.f, 0.f, 0.f }; // initial conditions



	/* other parameters */
	vector<double> dydt;
	for(int i = 0; i < state_value; ++i){
		dydt.push_back(0.f);
	}
	double dt = 0.1;

	/* Time */
	int N = 24;
	double deltaN = 120.0 / (N - 1);

	std::vector<double> trange(N);
	trange[0] = 0;
	for (int i = 1; i < N; ++i) {
		trange[i] = trange[i - 1] + deltaN;
	}


	cout << dir_logs << endl;
	ClustDesign(
		p,
	 	y,
		dydt,
		dt, 
		trange,
		true,
		dir_odesolve,
		dir_sm,
		true);

	return 0;
}
