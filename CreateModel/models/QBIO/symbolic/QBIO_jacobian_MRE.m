function R = f(t,y,p, stimulus)

R = [
     [ (-stimulus(1)/((y(4)/p(2) + 1)*(stimulus(1) + 1)))  (0)  (-p(3))  (-(stimulus(1)*(p(1) - y(1)))/(p(2)*(y(4)/p(2) + 1)^2*(stimulus(1) + 1))) ];
     [ ((y(1)*(y(2) - p(5) + y(3)))/(p(4)^2*(y(1)/p(4) + 1)^2) - (y(2) - p(5) + y(3))/(p(4)*(y(1)/p(4) + 1)))  (- p(6) - p(7) - y(1)/(p(4)*(y(1)/p(4) + 1)))  (-y(1)/(p(4)*(y(1)/p(4) + 1)))  (0) ];
     [ (0)  (p(7))  (-p(8))  (0) ];
     [ (0)  (0)  (p(9)/(p(10)*(y(3)/p(10) + 1)) - (p(9)*y(3))/(p(10)^2*(y(3)/p(10) + 1)^2))  (-p(11)) ];
];
