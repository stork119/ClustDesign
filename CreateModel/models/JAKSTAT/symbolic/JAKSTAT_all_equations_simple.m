function R = f(t,y,p)

R = [
     [ (2*p(4)*y(13) - (p(1)*y(1)*(y(16) + y(17)))/(p(6) + y(1))) ];
     [ ((p(1)*y(1)*(y(16) + y(17)))/(p(6) + y(1)) - 2*p(2)*y(2)^2) ];
     [ (p(2)*y(2)^2 - p(3)*y(3)) ];
     [ (p(3)*y(3) - p(4)*y(4)) ];
     [ (p(4)*y(4) - p(4)*y(5)) ];
     [ (p(4)*y(5) - p(4)*y(6)) ];
     [ (p(4)*y(6) - p(4)*y(7)) ];
     [ (p(4)*y(7) - p(4)*y(8)) ];
     [ (p(4)*y(8) - p(4)*y(9)) ];
     [ (p(4)*y(9) - p(4)*y(10)) ];
     [ (p(4)*y(10) - p(4)*y(11)) ];
     [ (p(4)*y(11) - p(4)*y(12)) ];
     [ (p(4)*y(12) - p(4)*y(13)) ];
     [ (p(3)*y(3) - p(4)*y(13)) ];
     [ (p(8)*y(16) - p(5)*p(7)*y(15)*JAKSTAT_stimulus(t, 1)) ];
     [ (p(5)*p(7)*y(15)*JAKSTAT_stimulus(t, 1) - p(9)*y(16) - p(8)*y(16)) ];
     [ (p(9)*y(16) - p(10)*y(17)) ];
];
