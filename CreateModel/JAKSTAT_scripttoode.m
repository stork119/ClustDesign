clear;              %resets all
name = 'JAKSTAT_extrinsic'; % Model name
varnMRE = 26;
varn = 2*varnMRE + varnMRE*(varnMRE-1)/2; % number of variables
parn = 10;  % number of parameters
stimn = 1;
%% createODE -- creates matrices of all_equations, MRE and jacobian over parameters and variables
%    !!! Symbolic Toolbox REQUIRED !!! 
% Function can create only very simple odes (with variables and parameters only). In more complicated case You
% have to edit function.
% Input :
%  - name  -- name of the model
%  - varn  -- number of model variables
%  - parn  -- number of model parameters
%  - stimn  -- number of model parameters
% Function with model definition sholud be saved in file :
% models/<name>/<name>.m
% Output :
% models/<name>/symbolic/<name>.m
% models/<name>/symbolic/<name>_jacobian_dpar.m
% models/<name>/symbolic/<name>_jacobian_dvar.m
% models/<name>/symbolic/<name>_jacobian_MRE.m
%%

disp('reading the model definition files') 
dir = [pwd, '/models/', name];  %where model definition files are found
dirsymbolic = [dir,'/symbolic/'];
addpath([dir]);
mkdir(dirsymbolic);
addpath(dirsymbolic);

syms S;
for i=1:varn,
    for j=varn,
    S(i,j)=0;
    end
S(i,i)=1;    
end

%% create names of variables

y=sym('y','positive');
 var_st = {};
 var_st_sym = {};

for i=1:varn
     y(i) = sym((['y',num2str(i)]),'positive');
     var_st{i}=['y[',num2str(i + 1),']'];
     var_st_sym{i}=['y',num2str(i)];
end



%% definition of parameter vector
param=sym('p','positive');
par_st = {};
par_st_sym = {};
 
for i = 1:parn
     param(i) = sym(['p',num2str(i)],'positive'); 
     par_st{i}=['p[',num2str(i + 1),']'];
     par_st_sym{i}=['p',num2str(i)];
end

%% stimulants functions
stim=sym('stim','positive');
stim_st = {};
stim_st_sym = {};

for i = 1:stimn
     stim(i) = sym(['stim',num2str(i)],'positive'); 
     stim_st{i}=['stm'];
     stim_st_sym{i}=['stim',num2str(i),''];
end

  
%    stim(1) = sym(['stim',num2str(1)],'positive'); 
%    stim(2) = sym(['stim',num2str(2)],'positive');
%    stim(3) = sym(['stim',num2str(3)],'positive'); 
% 
%   stm_st{1}='gln3SP(t)';
%   stm_st_sym{1}='stim1';  
%   stm_st{2}='dw(t)';
%   stm_st_sym{2}='stim2';
%   stm_st{3}='dx(t)';
%   stm_st_sym{3}='stim3';

% !!!! TODO Automatic function edition

% create names of variables
time=sym('t','real' );

%% ODEs
funname = [name,'_all_equations']
rates = str2func([funname]);
symrates=feval(rates,time, y, param, stim);
all_eq_pom=substitution(symrates,var_st_sym,var_st);
all_eq_pom=substitution(all_eq_pom,stim_st_sym,stim_st);
all_eq_pom=substitution(all_eq_pom,par_st_sym,par_st);
savefunctionsundials(all_eq_pom, ['models/', name, '/ode.txt'])


%%  JACOBIAN
funname = [name, '_all_equations_jacobian_dvar'];
rates = str2func([funname]);
symrates=feval(rates,time, y, param, stim);
all_eq_pom=substitution(symrates,var_st_sym,var_st);
all_eq_pom=substitution(all_eq_pom,stim_st_sym,stim_st);
all_eq_pom=substitution(all_eq_pom,par_st_sym,par_st);
savefunctionsundialsjac(all_eq_pom, ['models/', name, '/jacobian.txt']);


