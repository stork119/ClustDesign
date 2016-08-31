#include "ClustDesignRcpp.h"
#include <pthread.h>
#include <unistd.h>


struct threadArgs {
    Model *m;
    sig_atomic_t *cancel_flag; 
};

void *test(void* thread_args_ptr)
{
	struct threadArgs  *thread_args = (struct threadArgs  *) thread_args_ptr;
	Model *m = thread_args->m;
	compute_sensitvity_matrix(*m);
	m->create_sensitivity_matrix();
	m->create_odesolve_matrix();
        *(thread_args->cancel_flag) = 1;	
	pthread_exit((void *) thread_args);
}


// [[Rcpp::export]]
List ClustDesignPthread(
	vector<double> pp,
 	vector<double> y,
	vector<double> dydt,
	double dt, 
	vector<double> trange,	
	bool normalize,
	string dir_odesolve,
	string dir_sm,
	bool save_solutions,
        unsigned long time_interval,
	unsigned long time_computation
       ){
        state_type _y;
        state_type _dydt;
        for(int i = 0; i != state_value; ++i)
        {
            _y[i] = y[i];
            _dydt[i] = dydt[i];
	}

        Model m = Model(_y, _dydt, pp, trange, dt, normalize);
	sig_atomic_t cancel_flag = 0;

    List list;
    try
    {	

	struct threadArgs thread_args;
	thread_args.m = &m;
	thread_args.cancel_flag = &cancel_flag;

        pthread_t thread;
        pthread_create(&thread, NULL, test, (void *) &thread_args);
	
	void *status = (void*) -1;
	
	for(int i = 0; i <=  (int) (time_computation/time_interval); ++i)
	{
//	    cout << i << '\t' << time_computation << '\t' << time_interval << endl;
            if(cancel_flag != 1){
		usleep(time_interval*1000);
	    } else {
		pthread_join(thread, &status);
		break;
	    }
	}

	if(cancel_flag != 1){
		pthread_cancel(thread);
		list["success"] = 0;
                list["message"] = "Timeout";
	} else {
		if(save_solutions)
		{
			m.write_odesolve_y(dir_odesolve);
			m.write_sensitivity_matrix(dir_sm);
		}
	
		list["success"] = 1;
		list["sm"] = m.get_sm();
		list["odesolve"] = m.get_odesolve_matrix();

 	
	}
   } catch (char * message) {
	string message_str =  message; 
  	list["message"] =   message_str;
   }

	return list;
}


//[[Rcpp::export]]
vector<vector<double> > ClustDesign(
	vector<double> pp,
 	vector<double> y,
	vector<double> dydt,
	double dt, 
	vector<double> trange,	
	bool normalize,
	string dir_odesolve,
	string dir_sm,
	bool save_solutions){
	
	state_type _y;
	state_type _dydt;
	for(int i = 0; i != state_value; ++i)
	{
		_y[i] = y[i];
		_dydt[i] = dydt[i];
	}

	Model m = Model(_y, _dydt, pp, trange, dt, normalize);
	compute_sensitvity_matrix(m);

	m.create_sensitivity_matrix();
	if(save_solutions)
	{
		m.write_odesolve_y(dir_odesolve);
		m.write_sensitivity_matrix(dir_sm);
	}
	
	return m.get_sm();

}




void *odesolve(void* thread_args_ptr)
{
	struct threadArgs  *thread_args = (struct threadArgs  *) thread_args_ptr;
	Model *m = thread_args->m;
	compute_odesolve(*m);
	m->create_odesolve_matrix();
        *(thread_args->cancel_flag) = 1;	
	pthread_exit((void *) thread_args);
}


// [[Rcpp::export]]
List OdesolvePthread(
	vector<double> pp,
 	vector<double> y,
	vector<double> dydt,
	double dt, 
	vector<double> trange,	
	bool normalize,
	string dir_odesolve,
	string dir_sm,
	bool save_solutions,
        unsigned long time_interval,
	unsigned long time_computation
       ){
        state_type _y;
        state_type _dydt;
        for(int i = 0; i != state_value; ++i)
        {
            _y[i] = y[i];
            _dydt[i] = dydt[i];
	}

        Model m = Model(_y, _dydt, pp, trange, dt, normalize);
	sig_atomic_t cancel_flag = 0;

    List list;
    try
    {	

	struct threadArgs thread_args;
	thread_args.m = &m;
	thread_args.cancel_flag = &cancel_flag;

        pthread_t thread;
        pthread_create(&thread, NULL, odesolve, (void *) &thread_args);
	
	void *status = (void*) -1;
	
	for(int i = 0; i <=  (int) (time_computation/time_interval); ++i)
	{
//	    cout << i << '\t' << time_computation << '\t' << time_interval << endl;
            if(cancel_flag != 1){
		usleep(time_interval*1000);
	    } else {
		pthread_join(thread, &status);
		break;
	    }
	}

	if(cancel_flag != 1){
		pthread_cancel(thread);
		list["success"] = 0;
                list["message"] = "Timeout";
	} else {
		if(save_solutions)
		{
			m.write_odesolve_y(dir_odesolve);
		}
	
		list["success"] = 1;
		list["odesolve"] = m.get_odesolve_matrix();

 	
	}
   } catch (char * message) {
	string message_str =  message; 
  	list["message"] =   message_str;
   }

	return list;
}

