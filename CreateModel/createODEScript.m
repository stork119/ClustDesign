
%% Example NFKB
clear;              %resets all
name = 'NFkB'; % Model name
varn = 19; % number of variables
parn = 56;  % number of parameters
stimn = 0;

createODE(name, varn, parn, stimn)

%% Example Schoeber
clear;              %resets all
name = 'Schoeber'; % Model name
varn = 100; % number of variables
parn = 92;  % number of parameters
stimn = 0;

createODE(name, varn, parn, stimn)

%%
clear;              %resets all
name = 'QBIO'; % Model name
varn = 4; % number of variables
parn = 11;  % number of parameters
stimn = 1;

createODE(name, varn, parn, stimn)

%%
clear;              %resets all
name = 'GeneExpression'; % Model name
varn = 2; % number of variables
parn = 4;  % number of parameters
stimn = 0;

createODE(name, varn, parn, stimn)


%%
clear;              %resets all
name = 'JAKSTAT'; % Model name
varn = 17; % number of variables
parn = 10;  % number of parameters
stimn = 1;

createODE(name, varn, parn, stimn)