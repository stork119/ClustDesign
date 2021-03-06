function R = f(t,y,p)

R = [
     [ ((p(1)*y(1)*(y(16) + y(17))*(y(18) + 1))/(p(6) + y(1))^2 - (p(1)*(y(16) + y(17))*(y(18) + 1))/(p(6) + y(1)))  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (2*p(4)*(y(22) + 1))  (0)  (0)  (-(p(1)*y(1)*(y(18) + 1))/(p(6) + y(1)))  (-(p(1)*y(1)*(y(18) + 1))/(p(6) + y(1)))  (-(p(1)*y(1)*(y(16) + y(17)))/(p(6) + y(1)))  (0)  (0)  (0)  (2*p(4)*y(13))  (0)  (0)  (0)  (0) ];
     [ ((p(1)*(y(16) + y(17))*(y(18) + 1))/(p(6) + y(1)) - (p(1)*y(1)*(y(16) + y(17))*(y(18) + 1))/(p(6) + y(1))^2)  (-4*p(2)*y(2)*(y(19) + 1))  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  ((p(1)*y(1)*(y(18) + 1))/(p(6) + y(1)))  ((p(1)*y(1)*(y(18) + 1))/(p(6) + y(1)))  ((p(1)*y(1)*(y(16) + y(17)))/(p(6) + y(1)))  (-2*p(2)*y(2)^2)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (2*p(2)*y(2)*(y(19) + 1))  (-p(3)*(y(20) + 1))  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (p(2)*y(2)^2)  (-p(3)*y(3))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (p(3)*(y(20) + 1))  (-p(4)*(y(21) + 1))  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (p(3)*y(3))  (-p(4)*y(4))  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (p(4)*(y(21) + 1))  (-p(4)*(y(21) + 1))  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (p(4)*y(4) - p(4)*y(5))  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (p(4)*(y(21) + 1))  (-p(4)*(y(21) + 1))  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (p(4)*y(5) - p(4)*y(6))  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (p(4)*(y(21) + 1))  (-p(4)*(y(21) + 1))  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (p(4)*y(6) - p(4)*y(7))  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (p(4)*(y(21) + 1))  (-p(4)*(y(21) + 1))  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (p(4)*y(7) - p(4)*y(8))  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (p(4)*(y(21) + 1))  (-p(4)*(y(21) + 1))  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (p(4)*y(8) - p(4)*y(9))  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (p(4)*(y(21) + 1))  (-p(4)*(y(21) + 1))  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (p(4)*y(9) - p(4)*y(10))  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (p(4)*(y(21) + 1))  (-p(4)*(y(21) + 1))  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (p(4)*y(10) - p(4)*y(11))  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (p(4)*(y(21) + 1))  (-p(4)*(y(21) + 1))  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (p(4)*y(11) - p(4)*y(12))  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (p(4)*(y(21) + 1))  (-p(4)*(y(22) + 1))  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (p(4)*y(12))  (-p(4)*y(13))  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (p(3)*(y(20) + 1))  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (-p(4)*(y(22) + 1))  (0)  (0)  (0)  (0)  (0)  (0)  (p(3)*y(3))  (0)  (-p(4)*y(13))  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (-p(5)*p(7)*JAKSTAT_extrinsic_stimulus(t, 1)*(y(23) + 1))  (p(8)*(y(24) + 1))  (0)  (0)  (0)  (0)  (0)  (0)  (-p(5)*p(7)*y(15)*JAKSTAT_extrinsic_stimulus(t, 1))  (p(8)*y(16))  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (p(5)*p(7)*JAKSTAT_extrinsic_stimulus(t, 1)*(y(23) + 1))  (- p(8)*(y(24) + 1) - p(9)*(y(25) + 1))  (0)  (0)  (0)  (0)  (0)  (0)  (p(5)*p(7)*y(15)*JAKSTAT_extrinsic_stimulus(t, 1))  (-p(8)*y(16))  (-p(9)*y(16))  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (p(9)*(y(25) + 1))  (-p(10)*(y(26) + 1))  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (p(9)*y(16))  (-p(10)*y(17)) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
];
