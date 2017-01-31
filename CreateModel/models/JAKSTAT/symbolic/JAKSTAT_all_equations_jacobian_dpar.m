function R = f(t,y,p)

R = [
     [ (-(y(1)*(y(16) + y(17)))/(p(6) + y(1)))  (0)  (0)  (2*y(13))  (0)  ((p(1)*y(1)*(y(16) + y(17)))/(p(6) + y(1))^2)  (0)  (0)  (0)  (0) ];
     [ ((y(1)*(y(16) + y(17)))/(p(6) + y(1)))  (-2*y(2)^2)  (0)  (0)  (0)  (-(p(1)*y(1)*(y(16) + y(17)))/(p(6) + y(1))^2)  (0)  (0)  (0)  (0) ];
     [ (0)  (y(2)^2)  (-y(3))  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (y(3))  (-y(4))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(4) - y(5))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(5) - y(6))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(6) - y(7))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(7) - y(8))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(8) - y(9))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(9) - y(10))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(10) - y(11))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(11) - y(12))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(12) - y(13))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (y(3))  (-y(13))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (-p(7)*y(15)*JAKSTAT_stimulus(t, 1))  (0)  (-p(5)*y(15)*JAKSTAT_stimulus(t, 1))  (y(16))  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (p(7)*y(15)*JAKSTAT_stimulus(t, 1))  (0)  (p(5)*y(15)*JAKSTAT_stimulus(t, 1))  (-y(16))  (-y(16))  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (y(16))  (-y(17)) ];
     [ ((y(1)*(y(16) + y(17)))/(p(6) + y(1)) - 2*y(18)*((y(16) + y(17))/(p(6) + y(1)) - (y(1)*(y(16) + y(17)))/(p(6) + y(1))^2) - (2*y(1)*y(49))/(p(6) + y(1)) - (2*y(1)*y(50))/(p(6) + y(1)))  (0)  (0)  (4*y(13) + 4*y(46))  (0)  (2*y(18)*((p(1)*(y(16) + y(17)))/(p(6) + y(1))^2 - (2*p(1)*y(1)*(y(16) + y(17)))/(p(6) + y(1))^3) - (p(1)*y(1)*(y(16) + y(17)))/(p(6) + y(1))^2 + (2*p(1)*y(1)*y(49))/(p(6) + y(1))^2 + (2*p(1)*y(1)*y(50))/(p(6) + y(1))^2)  (0)  (0)  (0)  (0) ];
     [ (2*y(35)*((y(16) + y(17))/(p(6) + y(1)) - (y(1)*(y(16) + y(17)))/(p(6) + y(1))^2) + (y(1)*(y(16) + y(17)))/(p(6) + y(1)) + (2*y(1)*y(64))/(p(6) + y(1)) + (2*y(1)*y(65))/(p(6) + y(1)))  (4*y(2)^2 - 8*y(2)*y(19))  (0)  (0)  (0)  (- 2*y(35)*((p(1)*(y(16) + y(17)))/(p(6) + y(1))^2 - (2*p(1)*y(1)*(y(16) + y(17)))/(p(6) + y(1))^3) - (p(1)*y(1)*(y(16) + y(17)))/(p(6) + y(1))^2 - (2*p(1)*y(1)*y(64))/(p(6) + y(1))^2 - (2*p(1)*y(1)*y(65))/(p(6) + y(1))^2)  (0)  (0)  (0)  (0) ];
     [ (0)  (4*y(2)*y(51) + y(2)^2)  (y(3) - 2*y(20))  (0)  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (y(3) + 2*y(66))  (y(4) - 2*y(21))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(4) + y(5) - 2*y(22) + 2*y(80))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(5) + y(6) - 2*y(23) + 2*y(93))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(6) + y(7) - 2*y(24) + 2*y(105))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(7) + y(8) - 2*y(25) + 2*y(116))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(8) + y(9) - 2*y(26) + 2*y(126))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(9) + y(10) - 2*y(27) + 2*y(135))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(10) + y(11) - 2*y(28) + 2*y(143))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(11) + y(12) - 2*y(29) + 2*y(150))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(12) + y(13) - 2*y(30) + 2*y(156))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (y(3) + 2*y(76))  (y(13) - 2*y(161))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (p(7)*y(15)*JAKSTAT_stimulus(t, 1) - 2*p(7)*y(32)*JAKSTAT_stimulus(t, 1))  (0)  (p(5)*y(15)*JAKSTAT_stimulus(t, 1) - 2*p(5)*y(32)*JAKSTAT_stimulus(t, 1))  (y(16) + 2*y(168))  (0)  (0) ];
     [ (0)  (0)  (0)  (0)  (p(7)*y(15)*JAKSTAT_stimulus(t, 1) + 2*p(7)*y(168)*JAKSTAT_stimulus(t, 1))  (0)  (p(5)*y(15)*JAKSTAT_stimulus(t, 1) + 2*p(5)*y(168)*JAKSTAT_stimulus(t, 1))  (y(16) - 2*y(33))  (y(16) - 2*y(33))  (0) ];
     [ (0)  (0)  (0)  (0)  (0)  (0)  (0)  (0)  (y(16) + 2*y(170))  (y(17) - 2*y(34)) ];
     [ (y(18)*((y(16) + y(17))/(p(6) + y(1)) - (y(1)*(y(16) + y(17)))/(p(6) + y(1))^2) - y(35)*((y(16) + y(17))/(p(6) + y(1)) - (y(1)*(y(16) + y(17)))/(p(6) + y(1))^2) - (y(1)*(y(16) + y(17)))/(p(6) + y(1)) + (y(1)*y(49))/(p(6) + y(1)) + (y(1)*y(50))/(p(6) + y(1)) - (y(1)*y(64))/(p(6) + y(1)) - (y(1)*y(65))/(p(6) + y(1)))  (-4*y(2)*y(35))  (0)  (2*y(61))  (0)  (y(35)*((p(1)*(y(16) + y(17)))/(p(6) + y(1))^2 - (2*p(1)*y(1)*(y(16) + y(17)))/(p(6) + y(1))^3) - y(18)*((p(1)*(y(16) + y(17)))/(p(6) + y(1))^2 - (2*p(1)*y(1)*(y(16) + y(17)))/(p(6) + y(1))^3) + (p(1)*y(1)*(y(16) + y(17)))/(p(6) + y(1))^2 - (p(1)*y(1)*y(49))/(p(6) + y(1))^2 - (p(1)*y(1)*y(50))/(p(6) + y(1))^2 + (p(1)*y(1)*y(64))/(p(6) + y(1))^2 + (p(1)*y(1)*y(65))/(p(6) + y(1))^2)  (0)  (0)  (0)  (0) ];
     [ (- y(36)*((y(16) + y(17))/(p(6) + y(1)) - (y(1)*(y(16) + y(17)))/(p(6) + y(1))^2) - (y(1)*y(78))/(p(6) + y(1)) - (y(1)*y(79))/(p(6) + y(1)))  (2*y(2)*y(35))  (-y(36))  (2*y(75))  (0)  (y(36)*((p(1)*(y(16) + y(17)))/(p(6) + y(1))^2 - (2*p(1)*y(1)*(y(16) + y(17)))/(p(6) + y(1))^3) + (p(1)*y(1)*y(78))/(p(6) + y(1))^2 + (p(1)*y(1)*y(79))/(p(6) + y(1))^2)  (0)  (0)  (0)  (0) ];
     [ (- y(37)*((y(16) + y(17))/(p(6) + y(1)) - (y(1)*(y(16) + y(17)))/(p(6) + y(1))^2) - (y(1)*y(91))/(p(6) + y(1)) - (y(1)*y(92))/(p(6) + y(1)))  (0)  (y(36))  (2*y(88) - y(37))  (0)  (y(37)*((p(1)*(y(16) + y(17)))/(p(6) + y(1))^2 - (2*p(1)*y(1)*(y(16) + y(17)))/(p(6) + y(1))^3) + (p(1)*y(1)*y(91))/(p(6) + y(1))^2 + (p(1)*y(1)*y(92))/(p(6) + y(1))^2)  (0)  (0)  (0)  (0) ];
     [ (- y(38)*((y(16) + y(17))/(p(6) + y(1)) - (y(1)*(y(16) + y(17)))/(p(6) + y(1))^2) - (y(1)*y(103))/(p(6) + y(1)) - (y(1)*y(104))/(p(6) + y(1)))  (0)  (0)  (y(37) - y(38) + 2*y(100))  (0)  (y(38)*((p(1)*(y(16) + y(17)))/(p(6) + y(1))^2 - (2*p(1)*y(1)*(y(16) + y(17)))/(p(6) + y(1))^3) + (p(1)*y(1)*y(103))/(p(6) + y(1))^2 + (p(1)*y(1)*y(104))/(p(6) + y(1))^2)  (0)  (0)  (0)  (0) ];
     [ (- y(39)*((y(16) + y(17))/(p(6) + y(1)) - (y(1)*(y(16) + y(17)))/(p(6) + y(1))^2) - (y(1)*y(114))/(p(6) + y(1)) - (y(1)*y(115))/(p(6) + y(1)))  (0)  (0)  (y(38) - y(39) + 2*y(111))  (0)  (y(39)*((p(1)*(y(16) + y(17)))/(p(6) + y(1))^2 - (2*p(1)*y(1)*(y(16) + y(17)))/(p(6) + y(1))^3) + (p(1)*y(1)*y(114))/(p(6) + y(1))^2 + (p(1)*y(1)*y(115))/(p(6) + y(1))^2)  (0)  (0)  (0)  (0) ];
     [ (- y(40)*((y(16) + y(17))/(p(6) + y(1)) - (y(1)*(y(16) + y(17)))/(p(6) + y(1))^2) - (y(1)*y(124))/(p(6) + y(1)) - (y(1)*y(125))/(p(6) + y(1)))  (0)  (0)  (y(39) - y(40) + 2*y(121))  (0)  (y(40)*((p(1)*(y(16) + y(17)))/(p(6) + y(1))^2 - (2*p(1)*y(1)*(y(16) + y(17)))/(p(6) + y(1))^3) + (p(1)*y(1)*y(124))/(p(6) + y(1))^2 + (p(1)*y(1)*y(125))/(p(6) + y(1))^2)  (0)  (0)  (0)  (0) ];
     [ (- y(41)*((y(16) + y(17))/(p(6) + y(1)) - (y(1)*(y(16) + y(17)))/(p(6) + y(1))^2) - (y(1)*y(133))/(p(6) + y(1)) - (y(1)*y(134))/(p(6) + y(1)))  (0)  (0)  (y(40) - y(41) + 2*y(130))  (0)  (y(41)*((p(1)*(y(16) + y(17)))/(p(6) + y(1))^2 - (2*p(1)*y(1)*(y(16) + y(17)))/(p(6) + y(1))^3) + (p(1)*y(1)*y(133))/(p(6) + y(1))^2 + (p(1)*y(1)*y(134))/(p(6) + y(1))^2)  (0)  (0)  (0)  (0) ];
     [ (- y(42)*((y(16) + y(17))/(p(6) + y(1)) - (y(1)*(y(16) + y(17)))/(p(6) + y(1))^2) - (y(1)*y(141))/(p(6) + y(1)) - (y(1)*y(142))/(p(6) + y(1)))  (0)  (0)  (y(41) - y(42) + 2*y(138))  (0)  (y(42)*((p(1)*(y(16) + y(17)))/(p(6) + y(1))^2 - (2*p(1)*y(1)*(y(16) + y(17)))/(p(6) + y(1))^3) + (p(1)*y(1)*y(141))/(p(6) + y(1))^2 + (p(1)*y(1)*y(142))/(p(6) + y(1))^2)  (0)  (0)  (0)  (0) ];
     [ (- y(43)*((y(16) + y(17))/(p(6) + y(1)) - (y(1)*(y(16) + y(17)))/(p(6) + y(1))^2) - (y(1)*y(148))/(p(6) + y(1)) - (y(1)*y(149))/(p(6) + y(1)))  (0)  (0)  (y(42) - y(43) + 2*y(145))  (0)  (y(43)*((p(1)*(y(16) + y(17)))/(p(6) + y(1))^2 - (2*p(1)*y(1)*(y(16) + y(17)))/(p(6) + y(1))^3) + (p(1)*y(1)*y(148))/(p(6) + y(1))^2 + (p(1)*y(1)*y(149))/(p(6) + y(1))^2)  (0)  (0)  (0)  (0) ];
     [ (- y(44)*((y(16) + y(17))/(p(6) + y(1)) - (y(1)*(y(16) + y(17)))/(p(6) + y(1))^2) - (y(1)*y(154))/(p(6) + y(1)) - (y(1)*y(155))/(p(6) + y(1)))  (0)  (0)  (y(43) - y(44) + 2*y(151))  (0)  (y(44)*((p(1)*(y(16) + y(17)))/(p(6) + y(1))^2 - (2*p(1)*y(1)*(y(16) + y(17)))/(p(6) + y(1))^3) + (p(1)*y(1)*y(154))/(p(6) + y(1))^2 + (p(1)*y(1)*y(155))/(p(6) + y(1))^2)  (0)  (0)  (0)  (0) ];
     [ (- y(45)*((y(16) + y(17))/(p(6) + y(1)) - (y(1)*(y(16) + y(17)))/(p(6) + y(1))^2) - (y(1)*y(159))/(p(6) + y(1)) - (y(1)*y(160))/(p(6) + y(1)))  (0)  (0)  (y(44) - y(45) + 2*y(156))  (0)  (y(45)*((p(1)*(y(16) + y(17)))/(p(6) + y(1))^2 - (2*p(1)*y(1)*(y(16) + y(17)))/(p(6) + y(1))^3) + (p(1)*y(1)*y(159))/(p(6) + y(1))^2 + (p(1)*y(1)*y(160))/(p(6) + y(1))^2)  (0)  (0)  (0)  (0) ];
     [ (- y(46)*((y(16) + y(17))/(p(6) + y(1)) - (y(1)*(y(16) + y(17)))/(p(6) + y(1))^2) - (y(1)*y(163))/(p(6) + y(1)) - (y(1)*y(164))/(p(6) + y(1)))  (0)  (0)  (2*y(30) - 2*y(13) + y(45) - y(46))  (0)  (y(46)*((p(1)*(y(16) + y(17)))/(p(6) + y(1))^2 - (2*p(1)*y(1)*(y(16) + y(17)))/(p(6) + y(1))^3) + (p(1)*y(1)*y(163))/(p(6) + y(1))^2 + (p(1)*y(1)*y(164))/(p(6) + y(1))^2)  (0)  (0)  (0)  (0) ];
     [ (- y(47)*((y(16) + y(17))/(p(6) + y(1)) - (y(1)*(y(16) + y(17)))/(p(6) + y(1))^2) - (y(1)*y(166))/(p(6) + y(1)) - (y(1)*y(167))/(p(6) + y(1)))  (0)  (y(36))  (2*y(161) - y(46) - 2*y(13))  (0)  (y(47)*((p(1)*(y(16) + y(17)))/(p(6) + y(1))^2 - (2*p(1)*y(1)*(y(16) + y(17)))/(p(6) + y(1))^3) + (p(1)*y(1)*y(166))/(p(6) + y(1))^2 + (p(1)*y(1)*y(167))/(p(6) + y(1))^2)  (0)  (0)  (0)  (0) ];
     [ (- y(48)*((y(16) + y(17))/(p(6) + y(1)) - (y(1)*(y(16) + y(17)))/(p(6) + y(1))^2) - (y(1)*y(168))/(p(6) + y(1)) - (y(1)*y(169))/(p(6) + y(1)))  (0)  (0)  (2*y(162))  (-p(7)*y(48)*JAKSTAT_stimulus(t, 1))  (y(48)*((p(1)*(y(16) + y(17)))/(p(6) + y(1))^2 - (2*p(1)*y(1)*(y(16) + y(17)))/(p(6) + y(1))^3) + (p(1)*y(1)*y(168))/(p(6) + y(1))^2 + (p(1)*y(1)*y(169))/(p(6) + y(1))^2)  (-p(5)*y(48)*JAKSTAT_stimulus(t, 1))  (y(49))  (0)  (0) ];
     [ (- y(49)*((y(16) + y(17))/(p(6) + y(1)) - (y(1)*(y(16) + y(17)))/(p(6) + y(1))^2) - (y(1)*y(33))/(p(6) + y(1)) - (y(1)*y(170))/(p(6) + y(1)))  (0)  (0)  (2*y(163))  (p(7)*y(48)*JAKSTAT_stimulus(t, 1))  (y(49)*((p(1)*(y(16) + y(17)))/(p(6) + y(1))^2 - (2*p(1)*y(1)*(y(16) + y(17)))/(p(6) + y(1))^3) + (p(1)*y(1)*y(33))/(p(6) + y(1))^2 + (p(1)*y(1)*y(170))/(p(6) + y(1))^2)  (p(5)*y(48)*JAKSTAT_stimulus(t, 1))  (-y(49))  (-y(49))  (0) ];
     [ (- y(50)*((y(16) + y(17))/(p(6) + y(1)) - (y(1)*(y(16) + y(17)))/(p(6) + y(1))^2) - (y(1)*y(34))/(p(6) + y(1)) - (y(1)*y(170))/(p(6) + y(1)))  (0)  (0)  (2*y(164))  (0)  (y(50)*((p(1)*(y(16) + y(17)))/(p(6) + y(1))^2 - (2*p(1)*y(1)*(y(16) + y(17)))/(p(6) + y(1))^3) + (p(1)*y(1)*y(34))/(p(6) + y(1))^2 + (p(1)*y(1)*y(170))/(p(6) + y(1))^2)  (0)  (0)  (y(49))  (-y(50)) ];
     [ (y(36)*((y(16) + y(17))/(p(6) + y(1)) - (y(1)*(y(16) + y(17)))/(p(6) + y(1))^2) + (y(1)*y(78))/(p(6) + y(1)) + (y(1)*y(79))/(p(6) + y(1)))  (2*y(2)*y(19) - 4*y(2)*y(51) - 2*y(2)^2)  (-y(51))  (0)  (0)  (- y(36)*((p(1)*(y(16) + y(17)))/(p(6) + y(1))^2 - (2*p(1)*y(1)*(y(16) + y(17)))/(p(6) + y(1))^3) - (p(1)*y(1)*y(78))/(p(6) + y(1))^2 - (p(1)*y(1)*y(79))/(p(6) + y(1))^2)  (0)  (0)  (0)  (0) ];
     [ (y(37)*((y(16) + y(17))/(p(6) + y(1)) - (y(1)*(y(16) + y(17)))/(p(6) + y(1))^2) + (y(1)*y(91))/(p(6) + y(1)) + (y(1)*y(92))/(p(6) + y(1)))  (-4*y(2)*y(52))  (y(51))  (-y(52))  (0)  (- y(37)*((p(1)*(y(16) + y(17)))/(p(6) + y(1))^2 - (2*p(1)*y(1)*(y(16) + y(17)))/(p(6) + y(1))^3) - (p(1)*y(1)*y(91))/(p(6) + y(1))^2 - (p(1)*y(1)*y(92))/(p(6) + y(1))^2)  (0)  (0)  (0)  (0) ];
     [ (y(38)*((y(16) + y(17))/(p(6) + y(1)) - (y(1)*(y(16) + y(17)))/(p(6) + y(1))^2) + (y(1)*y(103))/(p(6) + y(1)) + (y(1)*y(104))/(p(6) + y(1)))  (-4*y(2)*y(53))  (0)  (y(52) - y(53))  (0)  (- y(38)*((p(1)*(y(16) + y(17)))/(p(6) + y(1))^2 - (2*p(1)*y(1)*(y(16) + y(17)))/(p(6) + y(1))^3) - (p(1)*y(1)*y(103))/(p(6) + y(1))^2 - (p(1)*y(1)*y(104))/(p(6) + y(1))^2)  (0)  (0)  (0)  (0) ];
     [ (y(39)*((y(16) + y(17))/(p(6) + y(1)) - (y(1)*(y(16) + y(17)))/(p(6) + y(1))^2) + (y(1)*y(114))/(p(6) + y(1)) + (y(1)*y(115))/(p(6) + y(1)))  (-4*y(2)*y(54))  (0)  (y(53) - y(54))  (0)  (- y(39)*((p(1)*(y(16) + y(17)))/(p(6) + y(1))^2 - (2*p(1)*y(1)*(y(16) + y(17)))/(p(6) + y(1))^3) - (p(1)*y(1)*y(114))/(p(6) + y(1))^2 - (p(1)*y(1)*y(115))/(p(6) + y(1))^2)  (0)  (0)  (0)  (0) ];
     [ (y(40)*((y(16) + y(17))/(p(6) + y(1)) - (y(1)*(y(16) + y(17)))/(p(6) + y(1))^2) + (y(1)*y(124))/(p(6) + y(1)) + (y(1)*y(125))/(p(6) + y(1)))  (-4*y(2)*y(55))  (0)  (y(54) - y(55))  (0)  (- y(40)*((p(1)*(y(16) + y(17)))/(p(6) + y(1))^2 - (2*p(1)*y(1)*(y(16) + y(17)))/(p(6) + y(1))^3) - (p(1)*y(1)*y(124))/(p(6) + y(1))^2 - (p(1)*y(1)*y(125))/(p(6) + y(1))^2)  (0)  (0)  (0)  (0) ];
     [ (y(41)*((y(16) + y(17))/(p(6) + y(1)) - (y(1)*(y(16) + y(17)))/(p(6) + y(1))^2) + (y(1)*y(133))/(p(6) + y(1)) + (y(1)*y(134))/(p(6) + y(1)))  (-4*y(2)*y(56))  (0)  (y(55) - y(56))  (0)  (- y(41)*((p(1)*(y(16) + y(17)))/(p(6) + y(1))^2 - (2*p(1)*y(1)*(y(16) + y(17)))/(p(6) + y(1))^3) - (p(1)*y(1)*y(133))/(p(6) + y(1))^2 - (p(1)*y(1)*y(134))/(p(6) + y(1))^2)  (0)  (0)  (0)  (0) ];
     [ (y(42)*((y(16) + y(17))/(p(6) + y(1)) - (y(1)*(y(16) + y(17)))/(p(6) + y(1))^2) + (y(1)*y(141))/(p(6) + y(1)) + (y(1)*y(142))/(p(6) + y(1)))  (-4*y(2)*y(57))  (0)  (y(56) - y(57))  (0)  (- y(42)*((p(1)*(y(16) + y(17)))/(p(6) + y(1))^2 - (2*p(1)*y(1)*(y(16) + y(17)))/(p(6) + y(1))^3) - (p(1)*y(1)*y(141))/(p(6) + y(1))^2 - (p(1)*y(1)*y(142))/(p(6) + y(1))^2)  (0)  (0)  (0)  (0) ];
     [ (y(43)*((y(16) + y(17))/(p(6) + y(1)) - (y(1)*(y(16) + y(17)))/(p(6) + y(1))^2) + (y(1)*y(148))/(p(6) + y(1)) + (y(1)*y(149))/(p(6) + y(1)))  (-4*y(2)*y(58))  (0)  (y(57) - y(58))  (0)  (- y(43)*((p(1)*(y(16) + y(17)))/(p(6) + y(1))^2 - (2*p(1)*y(1)*(y(16) + y(17)))/(p(6) + y(1))^3) - (p(1)*y(1)*y(148))/(p(6) + y(1))^2 - (p(1)*y(1)*y(149))/(p(6) + y(1))^2)  (0)  (0)  (0)  (0) ];
     [ (y(44)*((y(16) + y(17))/(p(6) + y(1)) - (y(1)*(y(16) + y(17)))/(p(6) + y(1))^2) + (y(1)*y(154))/(p(6) + y(1)) + (y(1)*y(155))/(p(6) + y(1)))  (-4*y(2)*y(59))  (0)  (y(58) - y(59))  (0)  (- y(44)*((p(1)*(y(16) + y(17)))/(p(6) + y(1))^2 - (2*p(1)*y(1)*(y(16) + y(17)))/(p(6) + y(1))^3) - (p(1)*y(1)*y(154))/(p(6) + y(1))^2 - (p(1)*y(1)*y(155))/(p(6) + y(1))^2)  (0)  (0)  (0)  (0) ];
     [ (y(45)*((y(16) + y(17))/(p(6) + y(1)) - (y(1)*(y(16) + y(17)))/(p(6) + y(1))^2) + (y(1)*y(159))/(p(6) + y(1)) + (y(1)*y(160))/(p(6) + y(1)))  (-4*y(2)*y(60))  (0)  (y(59) - y(60))  (0)  (- y(45)*((p(1)*(y(16) + y(17)))/(p(6) + y(1))^2 - (2*p(1)*y(1)*(y(16) + y(17)))/(p(6) + y(1))^3) - (p(1)*y(1)*y(159))/(p(6) + y(1))^2 - (p(1)*y(1)*y(160))/(p(6) + y(1))^2)  (0)  (0)  (0)  (0) ];
     [ (y(46)*((y(16) + y(17))/(p(6) + y(1)) - (y(1)*(y(16) + y(17)))/(p(6) + y(1))^2) + (y(1)*y(163))/(p(6) + y(1)) + (y(1)*y(164))/(p(6) + y(1)))  (-4*y(2)*y(61))  (0)  (y(60) - y(61))  (0)  (- y(46)*((p(1)*(y(16) + y(17)))/(p(6) + y(1))^2 - (2*p(1)*y(1)*(y(16) + y(17)))/(p(6) + y(1))^3) - (p(1)*y(1)*y(163))/(p(6) + y(1))^2 - (p(1)*y(1)*y(164))/(p(6) + y(1))^2)  (0)  (0)  (0)  (0) ];
     [ (y(47)*((y(16) + y(17))/(p(6) + y(1)) - (y(1)*(y(16) + y(17)))/(p(6) + y(1))^2) + (y(1)*y(166))/(p(6) + y(1)) + (y(1)*y(167))/(p(6) + y(1)))  (-4*y(2)*y(62))  (y(51))  (-y(61))  (0)  (- y(47)*((p(1)*(y(16) + y(17)))/(p(6) + y(1))^2 - (2*p(1)*y(1)*(y(16) + y(17)))/(p(6) + y(1))^3) - (p(1)*y(1)*y(166))/(p(6) + y(1))^2 - (p(1)*y(1)*y(167))/(p(6) + y(1))^2)  (0)  (0)  (0)  (0) ];
     [ (y(48)*((y(16) + y(17))/(p(6) + y(1)) - (y(1)*(y(16) + y(17)))/(p(6) + y(1))^2) + (y(1)*y(168))/(p(6) + y(1)) + (y(1)*y(169))/(p(6) + y(1)))  (-4*y(2)*y(63))  (0)  (0)  (-p(7)*y(63)*JAKSTAT_stimulus(t, 1))  (- y(48)*((p(1)*(y(16) + y(17)))/(p(6) + y(1))^2 - (2*p(1)*y(1)*(y(16) + y(17)))/(p(6) + y(1))^3) - (p(1)*y(1)*y(168))/(p(6) + y(1))^2 - (p(1)*y(1)*y(169))/(p(6) + y(1))^2)  (-p(5)*y(63)*JAKSTAT_stimulus(t, 1))  (y(64))  (0)  (0) ];
     [ (y(49)*((y(16) + y(17))/(p(6) + y(1)) - (y(1)*(y(16) + y(17)))/(p(6) + y(1))^2) + (y(1)*y(33))/(p(6) + y(1)) + (y(1)*y(170))/(p(6) + y(1)))  (-4*y(2)*y(64))  (0)  (0)  (p(7)*y(63)*JAKSTAT_stimulus(t, 1))  (- y(49)*((p(1)*(y(16) + y(17)))/(p(6) + y(1))^2 - (2*p(1)*y(1)*(y(16) + y(17)))/(p(6) + y(1))^3) - (p(1)*y(1)*y(33))/(p(6) + y(1))^2 - (p(1)*y(1)*y(170))/(p(6) + y(1))^2)  (p(5)*y(63)*JAKSTAT_stimulus(t, 1))  (-y(64))  (-y(64))  (0) ];
     [ (y(50)*((y(16) + y(17))/(p(6) + y(1)) - (y(1)*(y(16) + y(17)))/(p(6) + y(1))^2) + (y(1)*y(34))/(p(6) + y(1)) + (y(1)*y(170))/(p(6) + y(1)))  (-4*y(2)*y(65))  (0)  (0)  (0)  (- y(50)*((p(1)*(y(16) + y(17)))/(p(6) + y(1))^2 - (2*p(1)*y(1)*(y(16) + y(17)))/(p(6) + y(1))^3) - (p(1)*y(1)*y(34))/(p(6) + y(1))^2 - (p(1)*y(1)*y(170))/(p(6) + y(1))^2)  (0)  (0)  (y(64))  (-y(65)) ];
     [ (0)  (2*y(2)*y(52))  (y(20) - y(3) - y(66))  (-y(66))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (2*y(2)*y(53))  (-y(67))  (y(66) - y(67))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (2*y(2)*y(54))  (-y(68))  (y(67) - y(68))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (2*y(2)*y(55))  (-y(69))  (y(68) - y(69))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (2*y(2)*y(56))  (-y(70))  (y(69) - y(70))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (2*y(2)*y(57))  (-y(71))  (y(70) - y(71))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (2*y(2)*y(58))  (-y(72))  (y(71) - y(72))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (2*y(2)*y(59))  (-y(73))  (y(72) - y(73))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (2*y(2)*y(60))  (-y(74))  (y(73) - y(74))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (2*y(2)*y(61))  (-y(75))  (y(74) - y(75))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (2*y(2)*y(62))  (y(20) - y(3) - y(76))  (-y(75))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (2*y(2)*y(63))  (-y(77))  (0)  (-p(7)*y(77)*JAKSTAT_stimulus(t, 1))  (0)  (-p(5)*y(77)*JAKSTAT_stimulus(t, 1))  (y(78))  (0)  (0) ];
     [ (0)  (2*y(2)*y(64))  (-y(78))  (0)  (p(7)*y(77)*JAKSTAT_stimulus(t, 1))  (0)  (p(5)*y(77)*JAKSTAT_stimulus(t, 1))  (-y(78))  (-y(78))  (0) ];
     [ (0)  (2*y(2)*y(65))  (-y(79))  (0)  (0)  (0)  (0)  (0)  (y(78))  (-y(79)) ];
     [ (0)  (0)  (y(67))  (y(21) - y(4) - 2*y(80))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (y(68))  (y(80) - 2*y(81))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (y(69))  (y(81) - 2*y(82))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (y(70))  (y(82) - 2*y(83))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (y(71))  (y(83) - 2*y(84))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (y(72))  (y(84) - 2*y(85))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (y(73))  (y(85) - 2*y(86))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (y(74))  (y(86) - 2*y(87))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (y(75))  (y(87) - 2*y(88))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (y(3) + y(66) + y(76))  (- y(88) - y(89))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (y(77))  (-y(90))  (-p(7)*y(90)*JAKSTAT_stimulus(t, 1))  (0)  (-p(5)*y(90)*JAKSTAT_stimulus(t, 1))  (y(91))  (0)  (0) ];
     [ (0)  (0)  (y(78))  (-y(91))  (p(7)*y(90)*JAKSTAT_stimulus(t, 1))  (0)  (p(5)*y(90)*JAKSTAT_stimulus(t, 1))  (-y(91))  (-y(91))  (0) ];
     [ (0)  (0)  (y(79))  (-y(92))  (0)  (0)  (0)  (0)  (y(91))  (-y(92)) ];
     [ (0)  (0)  (0)  (y(22) - y(5) + y(81) - 2*y(93))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(82) + y(93) - 2*y(94))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(83) + y(94) - 2*y(95))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(84) + y(95) - 2*y(96))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(85) + y(96) - 2*y(97))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(86) + y(97) - 2*y(98))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(87) + y(98) - 2*y(99))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(88) + y(99) - 2*y(100))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (y(67))  (y(89) - y(100) - y(101))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(90) - y(102))  (-p(7)*y(102)*JAKSTAT_stimulus(t, 1))  (0)  (-p(5)*y(102)*JAKSTAT_stimulus(t, 1))  (y(103))  (0)  (0) ];
     [ (0)  (0)  (0)  (y(91) - y(103))  (p(7)*y(102)*JAKSTAT_stimulus(t, 1))  (0)  (p(5)*y(102)*JAKSTAT_stimulus(t, 1))  (-y(103))  (-y(103))  (0) ];
     [ (0)  (0)  (0)  (y(92) - y(104))  (0)  (0)  (0)  (0)  (y(103))  (-y(104)) ];
     [ (0)  (0)  (0)  (y(23) - y(6) + y(94) - 2*y(105))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(95) + y(105) - 2*y(106))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(96) + y(106) - 2*y(107))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(97) + y(107) - 2*y(108))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(98) + y(108) - 2*y(109))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(99) + y(109) - 2*y(110))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(100) + y(110) - 2*y(111))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (y(68))  (y(101) - y(111) - y(112))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(102) - y(113))  (-p(7)*y(113)*JAKSTAT_stimulus(t, 1))  (0)  (-p(5)*y(113)*JAKSTAT_stimulus(t, 1))  (y(114))  (0)  (0) ];
     [ (0)  (0)  (0)  (y(103) - y(114))  (p(7)*y(113)*JAKSTAT_stimulus(t, 1))  (0)  (p(5)*y(113)*JAKSTAT_stimulus(t, 1))  (-y(114))  (-y(114))  (0) ];
     [ (0)  (0)  (0)  (y(104) - y(115))  (0)  (0)  (0)  (0)  (y(114))  (-y(115)) ];
     [ (0)  (0)  (0)  (y(24) - y(7) + y(106) - 2*y(116))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(107) + y(116) - 2*y(117))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(108) + y(117) - 2*y(118))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(109) + y(118) - 2*y(119))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(110) + y(119) - 2*y(120))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(111) + y(120) - 2*y(121))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (y(69))  (y(112) - y(121) - y(122))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(113) - y(123))  (-p(7)*y(123)*JAKSTAT_stimulus(t, 1))  (0)  (-p(5)*y(123)*JAKSTAT_stimulus(t, 1))  (y(124))  (0)  (0) ];
     [ (0)  (0)  (0)  (y(114) - y(124))  (p(7)*y(123)*JAKSTAT_stimulus(t, 1))  (0)  (p(5)*y(123)*JAKSTAT_stimulus(t, 1))  (-y(124))  (-y(124))  (0) ];
     [ (0)  (0)  (0)  (y(115) - y(125))  (0)  (0)  (0)  (0)  (y(124))  (-y(125)) ];
     [ (0)  (0)  (0)  (y(25) - y(8) + y(117) - 2*y(126))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(118) + y(126) - 2*y(127))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(119) + y(127) - 2*y(128))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(120) + y(128) - 2*y(129))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(121) + y(129) - 2*y(130))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (y(70))  (y(122) - y(130) - y(131))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(123) - y(132))  (-p(7)*y(132)*JAKSTAT_stimulus(t, 1))  (0)  (-p(5)*y(132)*JAKSTAT_stimulus(t, 1))  (y(133))  (0)  (0) ];
     [ (0)  (0)  (0)  (y(124) - y(133))  (p(7)*y(132)*JAKSTAT_stimulus(t, 1))  (0)  (p(5)*y(132)*JAKSTAT_stimulus(t, 1))  (-y(133))  (-y(133))  (0) ];
     [ (0)  (0)  (0)  (y(125) - y(134))  (0)  (0)  (0)  (0)  (y(133))  (-y(134)) ];
     [ (0)  (0)  (0)  (y(26) - y(9) + y(127) - 2*y(135))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(128) + y(135) - 2*y(136))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(129) + y(136) - 2*y(137))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(130) + y(137) - 2*y(138))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (y(71))  (y(131) - y(138) - y(139))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(132) - y(140))  (-p(7)*y(140)*JAKSTAT_stimulus(t, 1))  (0)  (-p(5)*y(140)*JAKSTAT_stimulus(t, 1))  (y(141))  (0)  (0) ];
     [ (0)  (0)  (0)  (y(133) - y(141))  (p(7)*y(140)*JAKSTAT_stimulus(t, 1))  (0)  (p(5)*y(140)*JAKSTAT_stimulus(t, 1))  (-y(141))  (-y(141))  (0) ];
     [ (0)  (0)  (0)  (y(134) - y(142))  (0)  (0)  (0)  (0)  (y(141))  (-y(142)) ];
     [ (0)  (0)  (0)  (y(27) - y(10) + y(136) - 2*y(143))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(137) + y(143) - 2*y(144))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(138) + y(144) - 2*y(145))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (y(72))  (y(139) - y(145) - y(146))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(140) - y(147))  (-p(7)*y(147)*JAKSTAT_stimulus(t, 1))  (0)  (-p(5)*y(147)*JAKSTAT_stimulus(t, 1))  (y(148))  (0)  (0) ];
     [ (0)  (0)  (0)  (y(141) - y(148))  (p(7)*y(147)*JAKSTAT_stimulus(t, 1))  (0)  (p(5)*y(147)*JAKSTAT_stimulus(t, 1))  (-y(148))  (-y(148))  (0) ];
     [ (0)  (0)  (0)  (y(142) - y(149))  (0)  (0)  (0)  (0)  (y(148))  (-y(149)) ];
     [ (0)  (0)  (0)  (y(28) - y(11) + y(144) - 2*y(150))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(145) + y(150) - 2*y(151))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (y(73))  (y(146) - y(151) - y(152))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(147) - y(153))  (-p(7)*y(153)*JAKSTAT_stimulus(t, 1))  (0)  (-p(5)*y(153)*JAKSTAT_stimulus(t, 1))  (y(154))  (0)  (0) ];
     [ (0)  (0)  (0)  (y(148) - y(154))  (p(7)*y(153)*JAKSTAT_stimulus(t, 1))  (0)  (p(5)*y(153)*JAKSTAT_stimulus(t, 1))  (-y(154))  (-y(154))  (0) ];
     [ (0)  (0)  (0)  (y(149) - y(155))  (0)  (0)  (0)  (0)  (y(154))  (-y(155)) ];
     [ (0)  (0)  (0)  (y(29) - y(12) + y(151) - 2*y(156))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (y(74))  (y(152) - y(156) - y(157))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(153) - y(158))  (-p(7)*y(158)*JAKSTAT_stimulus(t, 1))  (0)  (-p(5)*y(158)*JAKSTAT_stimulus(t, 1))  (y(159))  (0)  (0) ];
     [ (0)  (0)  (0)  (y(154) - y(159))  (p(7)*y(158)*JAKSTAT_stimulus(t, 1))  (0)  (p(5)*y(158)*JAKSTAT_stimulus(t, 1))  (-y(159))  (-y(159))  (0) ];
     [ (0)  (0)  (0)  (y(155) - y(160))  (0)  (0)  (0)  (0)  (y(159))  (-y(160)) ];
     [ (0)  (0)  (y(75))  (y(13) - y(30) + y(157) - y(161))  (0)  (0)  (0)  (0)  (0)  (0) ];
     [ (0)  (0)  (0)  (y(158) - y(162))  (-p(7)*y(162)*JAKSTAT_stimulus(t, 1))  (0)  (-p(5)*y(162)*JAKSTAT_stimulus(t, 1))  (y(163))  (0)  (0) ];
     [ (0)  (0)  (0)  (y(159) - y(163))  (p(7)*y(162)*JAKSTAT_stimulus(t, 1))  (0)  (p(5)*y(162)*JAKSTAT_stimulus(t, 1))  (-y(163))  (-y(163))  (0) ];
     [ (0)  (0)  (0)  (y(160) - y(164))  (0)  (0)  (0)  (0)  (y(163))  (-y(164)) ];
     [ (0)  (0)  (y(77))  (-y(162))  (-p(7)*y(165)*JAKSTAT_stimulus(t, 1))  (0)  (-p(5)*y(165)*JAKSTAT_stimulus(t, 1))  (y(166))  (0)  (0) ];
     [ (0)  (0)  (y(78))  (-y(163))  (p(7)*y(165)*JAKSTAT_stimulus(t, 1))  (0)  (p(5)*y(165)*JAKSTAT_stimulus(t, 1))  (-y(166))  (-y(166))  (0) ];
     [ (0)  (0)  (y(79))  (-y(164))  (0)  (0)  (0)  (0)  (y(166))  (-y(167)) ];
     [ (0)  (0)  (0)  (0)  (p(7)*y(32)*JAKSTAT_stimulus(t, 1) - p(7)*y(15)*JAKSTAT_stimulus(t, 1) - p(7)*y(168)*JAKSTAT_stimulus(t, 1))  (0)  (p(5)*y(32)*JAKSTAT_stimulus(t, 1) - p(5)*y(15)*JAKSTAT_stimulus(t, 1) - p(5)*y(168)*JAKSTAT_stimulus(t, 1))  (y(33) - y(16) - y(168))  (-y(168))  (0) ];
     [ (0)  (0)  (0)  (0)  (-p(7)*y(169)*JAKSTAT_stimulus(t, 1))  (0)  (-p(5)*y(169)*JAKSTAT_stimulus(t, 1))  (y(170))  (y(168))  (-y(169)) ];
     [ (0)  (0)  (0)  (0)  (p(7)*y(169)*JAKSTAT_stimulus(t, 1))  (0)  (p(5)*y(169)*JAKSTAT_stimulus(t, 1))  (-y(170))  (y(33) - y(16) - y(170))  (-y(170)) ];
];
