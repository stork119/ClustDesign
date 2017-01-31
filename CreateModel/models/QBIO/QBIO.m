function ydot = QBIO( y, par, stim, t )
%%QBIO model
%  
%\p1 100000 "number of total kinase molecules"
% \p2 500 "H of signal repression"
% \p3 0.5 "kinase deactivation rate"
% \p4 40000 "H of transcription factor activation" 
% \p5 100000 "number of total transcription factor molecules"
% \p6 0.01 "transcription factor deactivation"
% \p7 10 "nuclear translocation of transcription factor"
% \p8 0.1 "cytoplasmic translocation of transcription factor"
% \p9 2000 "maxim rate of repressor production"
% \p10 2000 "H of repressor producation"
% \p11 0.01 "repressor degradation rate"
%

% parn = 11
% varn = 4
%%
    ydot(1) = (stim(1)/(1+stim(1)))*(par(1)-y(1)) * (1)/(1+y(4)/par(2)) - par(3)*y(3);
    ydot(2) = ((y(1)/par(4))/(1+y(1)/par(4)))*(par(5)-y(2)-y(3)) - par(6)*y(2) - par(7)*y(2);
    ydot(3) = par(7)*y(2) - par(8)*y(3);
    ydot(4) = (par(9)*y(3)/par(10))/(1 + y(3)/par(10)) - par(11)*y(4);

end

