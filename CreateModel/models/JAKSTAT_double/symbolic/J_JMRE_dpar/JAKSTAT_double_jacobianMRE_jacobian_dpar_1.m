function R = f(t,y,p)

R = [
     [ ((y(1)*(y(16) + y(17)))/(p(6) + y(1))^2 - (y(16) + y(17))/(p(6) + y(1)))  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (-y(1)/(p(6) + y(1)))  (-y(1)/(p(6) + y(1)))  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ ((y(16) + y(17))/(p(6) + y(1)) - (y(1)*(y(16) + y(17)))/(p(6) + y(1))^2)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (y(1)/(p(6) + y(1)))  (y(1)/(p(6) + y(1)))  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  ((y(18)*(y(33) + y(34)))/(p(6) + y(18))^2 - (y(33) + y(34))/(p(6) + y(18)))  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (-y(18)/(p(6) + y(18)))  (-y(18)/(p(6) + y(18))) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  ((y(33) + y(34))/(p(6) + y(18)) - (y(18)*(y(33) + y(34)))/(p(6) + y(18))^2)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (y(18)/(p(6) + y(18)))  (y(18)/(p(6) + y(18))) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
];