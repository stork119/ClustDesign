function R = QBIOrates(x,par,t,stm)
R=[
    stm(1)/(1+stm(1))*(par(1)-x(1)) * 1/(1+x(4)/par(2));
    par(3)*x(1);
    x(1)/par(4)/(1+x(1)/par(4))*(par(5)-x(2)-x(3));
    par(6)*x(2);
    par(7)*x(2);
    par(8)*x(3);
    par(9)*(x(3)/par(10))^3/(1+(x(3)/par(10))^3);
    par(11)*x(4);
];
end

