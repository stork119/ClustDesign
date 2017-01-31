function R = JAKSTAT_rates(x, par, t, stimulus)
R =[
%(par(1)*x(15))*par(5)*stimulus(1)/(1+par(5)*stimulus(1))*x(1)/(par(6)+x(1));
(1+x(18))*par(1)*(x(16)+x(17))*x(1)/(par(6)+x(1));
(1+x(19))*par(2)*x(2)*x(2);
(1+x(20))*par(3)*x(3);
(1+x(21))*par(4)*x(4);
(1+x(21))*par(4)*x(5);
(1+x(21))*par(4)*x(6);
(1+x(21))*par(4)*x(7);
(1+x(21))*par(4)*x(8);
(1+x(21))*par(4)*x(9);
(1+x(21))*par(4)*x(10);
(1+x(21))*par(4)*x(11);
(1+x(21))*par(4)*x(12);
(1+x(22))*par(4)*x(13);
(1+x(23))*par(5)*par(7)*stimulus(1)*x(15);
(1+x(24))*par(8)*x(16);
(1+x(25))*par(9)*x(16);
(1+x(26))*par(10)*x(17);
];
 end
