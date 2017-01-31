function R = f(t,y,p, stimulus)

R = [
     [ (p(1) - p(3)*y(1)) ];
     [ (p(2)*y(1) - p(4)*y(2)) ];
];
