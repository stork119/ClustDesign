function R = f(t,y,p, stimulus)

R = [
     [ (stimulus(1)/((y(4)/p(2) + 1)*(stimulus(1) + 1)))  ((stimulus(1)*y(4)*(p(1) - y(1)))/(p(2)^2*(y(4)/p(2) + 1)^2*(stimulus(1) + 1)))  (-y(3))  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  ((y(1)*(y(2) - p(5) + y(3)))/(p(4)^2*(y(1)/p(4) + 1)) - (y(1)^2*(y(2) - p(5) + y(3)))/(p(4)^3*(y(1)/p(4) + 1)^2))  (y(1)/(p(4)*(y(1)/p(4) + 1)))  (-y(2))  (-y(2))  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (y(2))  (-y(3))  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (y(3)/(p(10)*(y(3)/p(10) + 1)))  ((p(9)*y(3)^2)/(p(10)^3*(y(3)/p(10) + 1)^2) - (p(9)*y(3))/(p(10)^2*(y(3)/p(10) + 1)))  (-y(4)) ];
];
