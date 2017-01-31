function R = f(t,y,p)

R = [
     [ ((p(1)*y(1)*(y(16) + y(17)))/(p(6) + y(1))^2 - (p(1)*(y(16) + y(17)))/(p(6) + y(1)))  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (-(p(1)*y(1))/(p(6) + y(1)))  (-(p(1)*y(1))/(p(6) + y(1)))  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ ((p(1)*(y(16) + y(17)))/(p(6) + y(1)) - (p(1)*y(1)*(y(16) + y(17)))/(p(6) + y(1))^2)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  ((p(1)*y(1))/(p(6) + y(1)))  ((p(1)*y(1))/(p(6) + y(1)))  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
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
