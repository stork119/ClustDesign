function ydot = GeneExpression( y, par, stim, t )
%%QBIO model
%  

% parn = 4
% varn = 2
%%
    ydot(1) =  par(1) - par(3)*y(1);
    ydot(2) =  par(2)*y(1) - par(4)*y(2);

end
