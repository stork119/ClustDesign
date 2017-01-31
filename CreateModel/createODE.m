function [] = createODE(name, varn, parn, stimn)
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
%addpath(dirsymbolic);

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
     var_st{i}=['y(',num2str(i),')'];
     var_st_sym{i}=['y',num2str(i)];
end



%% definition of parameter vector
param=sym('p','positive');
par_st = {};
par_st_sym = {};
 
for i = 1:parn
     param(i) = sym(['p',num2str(i)],'positive'); 
     par_st{i}=['p(',num2str(i),')'];
     par_st_sym{i}=['p',num2str(i)];
end

%% stimulants functions
stim=sym('stim','positive');
stim_st = {};
stim_st_sym = {};

for i = 1:stimn
     stim(i) = sym(['stim',num2str(i)],'positive'); 
     stim_st{i}=['stimulus(',num2str(i),')'];
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


rates = str2func([name]);
%% creating macroscopic rate equation (MRE)
disp('creating macroscopic rate equation')
symrates=feval(rates,y,param,stim,time);

MRE=(symrates');

all_eq_pom=substitution(MRE,var_st_sym,var_st);
all_eq_pom=substitution(all_eq_pom,stim_st_sym,stim_st);
savefunction(substitution(all_eq_pom,par_st_sym,par_st),[dirsymbolic, name, '.m']);


%% creating Jacobian of MRE
 disp('creating Jacobian of MRE')
 J=jacobian(MRE,y(1:varn));
 J_pom=substitution(J,var_st_sym,var_st);
 J_pom=substitution(J_pom,stim_st_sym,stim_st);
 savefunction(substitution(J_pom,par_st_sym,par_st),[dirsymbolic, name,'_jacobian_MRE.m']);

%% create concatenated set of equations Y
disp('creating Jacobians')

%% create variable jacobian of Y
J_all_eq_dvar=jacobian(MRE,y);
J_all_eq_dvar=substitution(J_all_eq_dvar,var_st_sym,var_st);
J_all_eq_dvar=substitution(J_all_eq_dvar,stim_st_sym,stim_st);
savefunction(substitution(J_all_eq_dvar,par_st_sym,par_st),[dirsymbolic, name,'_jacobian_dvar.m']);

%% create parameter jacobian of parameters
J_all_eq_dpar=jacobian(MRE,param); % variables in raws parameters in colums;each row is differentiated by each parameters subsequently
J_all_eq_dpar=substitution(J_all_eq_dpar,var_st_sym,var_st);
J_all_eq_dpar=substitution(J_all_eq_dpar,stim_st_sym,stim_st);
savefunction(substitution(J_all_eq_dpar,par_st_sym,par_st),[dirsymbolic, name,'_jacobian_dpar.m']);


end