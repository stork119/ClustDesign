function R = f(t,y,p)

R = [
     [ (0) ];
     [ (p(23) + p(5)*y(3) - p(12)*y(2) + p(13)*y(6) - p(4)*y(1)*y(2)) ];
     [ (2*p(6)*y(4) - p(5)*y(3) - 2*p(7)*y(3)^2 + p(4)*y(1)*y(2)) ];
     [ (p(9)*y(5) - p(8)*y(4) - p(6)*y(4) + p(7)*y(3)^2) ];
     [ (p(8)*y(4) - p(9)*y(5) - p(14)*y(5) + p(16)*y(15) - p(15)*y(5)*y(14)) ];
     [ (p(12)*y(2) - p(13)*y(6) + p(18)*y(10) - p(89)*y(6) - p(17)*y(6)*y(16)) ];
     [ (p(10)*y(12)*y(23) - p(11)*y(7) - extvar(p(90)/(p(5)/(p(4)*y(1)) + 1))*y(7)) ];
     [ (p(8)*y(11) - p(9)*y(8) + p(14)*y(5) + p(25)*y(17) - p(93)*y(8) - p(24)*y(8)*y(14)) ];
     [ (extvar(p(90)/(p(5)/(p(4)*y(1)) + 1))*y(7) + extvar(p(90)/(p(5)/(p(4)*y(1)) + 1))*y(88) + extvar(p(90)/(p(5)/(p(4)*y(1)) + 1))*y(89) + extvar(p(90)/(p(5)/(p(4)*y(1)) + 1))*y(90) + extvar(p(90)/(p(5)/(p(4)*y(1)) + 1))*y(91) + extvar(p(90)/(p(5)/(p(4)*y(1)) + 1))*y(92) + extvar(p(90)/(p(5)/(p(4)*y(1)) + 1))*y(93) + extvar(p(90)/(p(5)/(p(4)*y(1)) + 1))*y(94) - p(26)*y(9)) ];
     [ (2*p(6)*y(11) - p(18)*y(10) - 2*p(7)*y(10)^2 + p(17)*y(6)*y(16)) ];
     [ (p(9)*y(8) - p(6)*y(11) - p(8)*y(11) + p(7)*y(10)^2) ];
     [ (p(11)*y(7) + p(26)*y(9) + p(182)*y(88) + p(188)*y(89) + p(196)*y(90) + p(202)*y(91) + p(208)*y(92) + p(214)*y(93) + p(220)*y(94) - p(10)*y(12)*y(23) - p(181)*y(12)*y(25) - p(187)*y(12)*y(27) - p(195)*y(12)*y(29) - p(201)*y(12)*y(34) - p(207)*y(12)*y(35) - p(213)*y(12)*y(36) - p(219)*y(12)*y(37)) ];
     [ (p(91)*y(16)) ];
     [ (p(16)*y(15) + p(25)*y(17) - p(15)*y(5)*y(14) - p(24)*y(8)*y(14)) ];
     [ (p(27)*y(23) - p(16)*y(15) + p(40)*y(32) + p(55)*y(25) + p(52)*y(35) + p(61)*y(33) - p(173)*y(15) + p(174)*y(17) + p(233)*y(34) + p(15)*y(5)*y(14) - p(28)*y(15)*y(22) - p(39)*y(15)*y(31) - p(56)*y(15)*y(30) - p(51)*y(15)*y(38) - p(62)*y(15)*y(40) - p(234)*y(15)*y(39)) ];
     [ (p(18)*y(10) - p(91)*y(16) - p(17)*y(6)*y(16)) ];
     [ (p(96)*y(18) - p(25)*y(17) + p(129)*y(19) + p(108)*y(63) + p(173)*y(15) - p(174)*y(17) + p(127)*y(66) + p(131)*y(64) + p(133)*y(65) + p(24)*y(8)*y(14) - p(95)*y(17)*y(22) - p(107)*y(17)*y(31) - p(130)*y(17)*y(30) - p(128)*y(17)*y(38) - p(132)*y(17)*y(40) - p(134)*y(17)*y(39)) ];
     [ (extvar(p(90)/(p(5)/(p(4)*y(1)) + 1))*y(7) + p(14)*y(23) - p(96)*y(18) + p(98)*y(19) + p(95)*y(17)*y(22) - p(97)*y(18)*y(24)) ];
     [ (extvar(p(90)/(p(5)/(p(4)*y(1)) + 1))*y(88) - p(98)*y(19) + p(100)*y(20) + p(101)*y(20) + p(104)*y(21) + p(105)*y(21) - p(129)*y(19) - p(180)*y(19) + p(179)*y(25) + p(97)*y(18)*y(24) - p(99)*y(19)*y(26) - p(106)*y(19)*y(26) + p(130)*y(17)*y(30) - p(102)*y(19)*y(69) - p(103)*y(19)*y(71)) ];
     [ (extvar(p(90)/(p(5)/(p(4)*y(1)) + 1))*y(89) - p(100)*y(20) - p(101)*y(20) - p(186)*y(20) + p(185)*y(27) + p(99)*y(19)*y(26) + p(102)*y(19)*y(69)) ];
     [ (extvar(p(90)/(p(5)/(p(4)*y(1)) + 1))*y(90) - p(104)*y(21) - p(105)*y(21) - p(194)*y(21) + p(193)*y(29) + p(106)*y(19)*y(26) + p(103)*y(19)*y(71)) ];
     [ (p(27)*y(23) + p(44)*y(34) + p(57)*y(30) + p(96)*y(18) + p(112)*y(65) + p(232)*y(39) - p(28)*y(15)*y(22) - p(43)*y(22)*y(33) - p(58)*y(22)*y(24) - p(95)*y(17)*y(22) - p(111)*y(22)*y(64) - p(231)*y(22)*y(40)) ];
     [ (p(11)*y(7) - p(14)*y(23) - p(27)*y(23) + p(29)*y(25) - p(10)*y(12)*y(23) + p(28)*y(15)*y(22) - p(30)*y(23)*y(24)) ];
     [ (p(29)*y(25) + p(45)*y(35) + p(57)*y(30) + p(64)*y(38) + p(98)*y(19) + p(114)*y(66) - p(30)*y(23)*y(24) - p(46)*y(24)*y(34) - p(58)*y(22)*y(24) - p(63)*y(24)*y(39) - p(97)*y(18)*y(24) - p(113)*y(24)*y(65)) ];
     [ (p(31)*y(27) - p(29)*y(25) + p(34)*y(27) + p(35)*y(29) + p(37)*y(29) - p(55)*y(25) + p(180)*y(19) - p(179)*y(25) + p(182)*y(88) + p(30)*y(23)*y(24) - p(32)*y(25)*y(26) - p(33)*y(25)*y(28) - p(38)*y(25)*y(26) + p(56)*y(15)*y(30) - p(36)*y(25)*y(43) - p(181)*y(12)*y(25)) ];
     [ (p(31)*y(27) + p(37)*y(29) + p(100)*y(20) + p(105)*y(21) + p(116)*y(67) + p(125)*y(68) + p(224)*y(36) + p(229)*y(37) - p(32)*y(25)*y(26) - p(38)*y(25)*y(26) - p(99)*y(19)*y(26) - p(106)*y(19)*y(26) - p(115)*y(26)*y(66) - p(126)*y(26)*y(66) - p(223)*y(26)*y(35) - p(230)*y(26)*y(35)) ];
     [ (p(186)*y(20) - p(34)*y(27) - p(31)*y(27) - p(185)*y(27) + p(188)*y(89) + p(32)*y(25)*y(26) + p(33)*y(25)*y(28) - p(187)*y(12)*y(27)) ];
     [ (p(34)*y(27) + p(48)*y(42) + p(225)*y(36) - p(33)*y(25)*y(28) - p(47)*y(28)*y(41) - p(226)*y(28)*y(35)) ];
     [ (p(194)*y(21) - p(37)*y(29) - p(35)*y(29) - p(193)*y(29) + p(196)*y(90) + p(38)*y(25)*y(26) + p(36)*y(25)*y(43) - p(195)*y(12)*y(29)) ];
     [ (p(55)*y(25) - p(57)*y(30) + p(53)*y(38) + p(65)*y(35) + p(129)*y(19) + p(136)*y(66) - p(56)*y(15)*y(30) + p(58)*y(22)*y(24) - p(54)*y(30)*y(40) - p(66)*y(30)*y(33) - p(130)*y(17)*y(30) - p(135)*y(30)*y(64)) ];
     [ (p(40)*y(32) + p(108)*y(63) - p(39)*y(15)*y(31) - p(107)*y(17)*y(31) + (p(59)*y(40))/(p(60) + y(40))) ];
     [ (p(42)*y(33) - p(41)*y(32) - p(40)*y(32) - p(175)*y(32) + p(176)*y(63) + p(39)*y(15)*y(31)) ];
     [ (p(41)*y(32) - p(42)*y(33) + p(44)*y(34) - p(61)*y(33) + p(65)*y(35) - p(189)*y(33) + p(190)*y(64) - p(43)*y(22)*y(33) + p(62)*y(15)*y(40) - p(66)*y(30)*y(33)) ];
     [ (p(45)*y(35) - p(44)*y(34) - p(199)*y(34) + p(200)*y(65) - p(233)*y(34) + p(202)*y(91) + p(43)*y(22)*y(33) - p(46)*y(24)*y(34) - p(201)*y(12)*y(34) + p(234)*y(15)*y(39)) ];
     [ (p(224)*y(36) - p(52)*y(35) - p(65)*y(35) - p(205)*y(35) - p(45)*y(35) + p(225)*y(36) + p(228)*y(37) + p(229)*y(37) + p(206)*y(66) + p(208)*y(92) + p(46)*y(24)*y(34) + p(51)*y(15)*y(38) + p(66)*y(30)*y(33) - p(207)*y(12)*y(35) - p(223)*y(26)*y(35) - p(226)*y(28)*y(35) - p(230)*y(26)*y(35) - p(227)*y(35)*y(43)) ];
     [ (p(212)*y(67) - p(224)*y(36) - p(225)*y(36) - p(211)*y(36) + p(214)*y(93) - p(213)*y(12)*y(36) + p(223)*y(26)*y(35) + p(226)*y(28)*y(35)) ];
     [ (p(218)*y(68) - p(228)*y(37) - p(229)*y(37) - p(217)*y(37) + p(220)*y(94) - p(219)*y(12)*y(37) + p(230)*y(26)*y(35) + p(227)*y(35)*y(43)) ];
     [ (p(52)*y(35) - p(53)*y(38) - p(64)*y(38) + p(127)*y(66) - p(51)*y(15)*y(38) + p(54)*y(30)*y(40) + p(63)*y(24)*y(39) - p(128)*y(17)*y(38)) ];
     [ (p(64)*y(38) + p(133)*y(65) + p(233)*y(34) - p(232)*y(39) - p(63)*y(24)*y(39) - p(134)*y(17)*y(39) - p(234)*y(15)*y(39) + p(231)*y(22)*y(40)) ];
     [ (p(53)*y(38) + p(61)*y(33) + p(131)*y(64) + p(232)*y(39) - p(62)*y(15)*y(40) - p(54)*y(30)*y(40) - p(132)*y(17)*y(40) - p(231)*y(22)*y(40) - (p(59)*y(40))/(p(60) + y(40))) ];
     [ (p(48)*y(42) + p(69)*y(46) + p(120)*y(70) + p(139)*y(73) - p(47)*y(28)*y(41) - p(119)*y(41)*y(69)) ];
     [ (p(47)*y(28)*y(41) - p(49)*y(42) - p(48)*y(42) + p(50)*y(43)*y(45)) ];
     [ (p(35)*y(29) + p(49)*y(42) + p(228)*y(37) - p(36)*y(25)*y(43) - p(50)*y(43)*y(45) - p(227)*y(35)*y(43)) ];
     [ (p(68)*y(46) + p(69)*y(46) + p(138)*y(73) + p(139)*y(73) - p(67)*y(44)*y(45) - p(137)*y(44)*y(72)) ];
     [ (p(49)*y(42) + p(68)*y(46) + p(70)*y(48) + p(72)*y(48) + p(73)*y(50) + p(236)*y(50) - p(50)*y(43)*y(45) - p(67)*y(44)*y(45) - p(71)*y(45)*y(47) - p(235)*y(45)*y(49)) ];
     [ (p(67)*y(44)*y(45) - p(69)*y(46) - p(68)*y(46)) ];
     [ (p(70)*y(48) + p(142)*y(74) + p(155)*y(79) + p(237)*y(54) - p(71)*y(45)*y(47) - p(141)*y(47)*y(72)) ];
     [ (p(71)*y(45)*y(47) - p(72)*y(48) - p(70)*y(48)) ];
     [ (p(72)*y(48) + p(76)*y(52) + p(77)*y(54) + p(236)*y(50) - p(78)*y(49)*y(53) - p(235)*y(45)*y(49)) ];
     [ (p(235)*y(45)*y(49) - p(236)*y(50) - p(73)*y(50)) ];
     [ (p(73)*y(50) + p(74)*y(52) + p(80)*y(56) + p(81)*y(56) + p(82)*y(58) + p(240)*y(58) - p(75)*y(51)*y(53) - p(79)*y(51)*y(55) - p(239)*y(51)*y(57)) ];
     [ (p(75)*y(51)*y(53) - p(76)*y(52) - p(74)*y(52)) ];
     [ (p(74)*y(52) + p(76)*y(52) + p(77)*y(54) + p(150)*y(78) + p(151)*y(78) + p(154)*y(79) + p(155)*y(79) + p(237)*y(54) - p(75)*y(51)*y(53) - p(78)*y(49)*y(53) - p(149)*y(53)*y(77) - p(153)*y(53)*y(75)) ];
     [ (p(78)*y(49)*y(53) - p(237)*y(54) - p(77)*y(54)) ];
     [ (p(80)*y(56) + p(88)*y(62) + p(158)*y(80) + p(171)*y(85) - p(79)*y(51)*y(55) - p(157)*y(55)*y(77)) ];
     [ (p(79)*y(51)*y(55) - p(81)*y(56) - p(80)*y(56)) ];
     [ (p(81)*y(56) + p(85)*y(61) + p(86)*y(62) + p(240)*y(58) - p(87)*y(57)*y(60) - p(239)*y(51)*y(57)) ];
     [ (p(239)*y(51)*y(57) - p(240)*y(58) - p(82)*y(58)) ];
     [ (p(82)*y(58) + p(83)*y(61) - p(84)*y(59)*y(60)) ];
     [ (p(83)*y(61) + p(85)*y(61) + p(86)*y(62) + p(88)*y(62) + p(166)*y(84) + p(167)*y(84) + p(170)*y(85) + p(171)*y(85) - p(84)*y(59)*y(60) - p(87)*y(57)*y(60) - p(165)*y(60)*y(83) - p(169)*y(60)*y(81)) ];
     [ (p(84)*y(59)*y(60) - p(85)*y(61) - p(83)*y(61)) ];
     [ (p(87)*y(57)*y(60) - p(88)*y(62) - p(86)*y(62)) ];
     [ (p(110)*y(64) - p(109)*y(63) - p(108)*y(63) + p(175)*y(32) - p(176)*y(63) + p(107)*y(17)*y(31)) ];
     [ (p(109)*y(63) - p(110)*y(64) + p(112)*y(65) - p(131)*y(64) + p(136)*y(66) + p(189)*y(33) - p(190)*y(64) + p(132)*y(17)*y(40) - p(111)*y(22)*y(64) - p(135)*y(30)*y(64)) ];
     [ (extvar(p(90)/(p(5)/(p(4)*y(1)) + 1))*y(91) - p(112)*y(65) + p(114)*y(66) - p(133)*y(65) + p(199)*y(34) - p(200)*y(65) + p(134)*y(17)*y(39) + p(111)*y(22)*y(64) - p(113)*y(24)*y(65)) ];
     [ (extvar(p(90)/(p(5)/(p(4)*y(1)) + 1))*y(92) - p(114)*y(66) + p(116)*y(67) + p(117)*y(67) + p(124)*y(68) + p(125)*y(68) - p(127)*y(66) - p(136)*y(66) + p(205)*y(35) - p(206)*y(66) + p(128)*y(17)*y(38) + p(113)*y(24)*y(65) - p(115)*y(26)*y(66) - p(126)*y(26)*y(66) + p(135)*y(30)*y(64) - p(118)*y(66)*y(69) - p(123)*y(66)*y(71)) ];
     [ (extvar(p(90)/(p(5)/(p(4)*y(1)) + 1))*y(93) - p(116)*y(67) - p(117)*y(67) + p(211)*y(36) - p(212)*y(67) + p(115)*y(26)*y(66) + p(118)*y(66)*y(69)) ];
     [ (extvar(p(90)/(p(5)/(p(4)*y(1)) + 1))*y(94) - p(124)*y(68) - p(125)*y(68) + p(217)*y(37) - p(218)*y(68) + p(126)*y(26)*y(66) + p(123)*y(66)*y(71)) ];
     [ (p(101)*y(20) + p(117)*y(67) + p(120)*y(70) - p(102)*y(19)*y(69) - p(119)*y(41)*y(69) - p(118)*y(66)*y(69)) ];
     [ (p(119)*y(41)*y(69) - p(121)*y(70) - p(120)*y(70) + p(122)*y(71)*y(72)) ];
     [ (p(104)*y(21) + p(121)*y(70) + p(124)*y(68) - p(103)*y(19)*y(71) - p(123)*y(66)*y(71) - p(122)*y(71)*y(72)) ];
     [ (p(121)*y(70) + p(138)*y(73) + p(142)*y(74) + p(143)*y(74) + p(146)*y(76) + p(147)*y(76) - p(137)*y(44)*y(72) - p(141)*y(47)*y(72) - p(122)*y(71)*y(72) - p(145)*y(72)*y(75)) ];
     [ (p(137)*y(44)*y(72) - p(139)*y(73) - p(138)*y(73)) ];
     [ (p(141)*y(47)*y(72) - p(143)*y(74) - p(142)*y(74)) ];
     [ (p(143)*y(74) + p(146)*y(76) + p(151)*y(78) + p(154)*y(79) - p(153)*y(53)*y(75) - p(145)*y(72)*y(75)) ];
     [ (p(145)*y(72)*y(75) - p(147)*y(76) - p(146)*y(76)) ];
     [ (p(147)*y(76) + p(150)*y(78) + p(158)*y(80) + p(159)*y(80) + p(162)*y(82) + p(163)*y(82) - p(149)*y(53)*y(77) - p(157)*y(55)*y(77) - p(161)*y(77)*y(81)) ];
     [ (p(149)*y(53)*y(77) - p(151)*y(78) - p(150)*y(78)) ];
     [ (p(153)*y(53)*y(75) - p(155)*y(79) - p(154)*y(79)) ];
     [ (p(157)*y(55)*y(77) - p(159)*y(80) - p(158)*y(80)) ];
     [ (p(159)*y(80) + p(162)*y(82) + p(167)*y(84) + p(170)*y(85) - p(169)*y(60)*y(81) - p(161)*y(77)*y(81)) ];
     [ (p(161)*y(77)*y(81) - p(163)*y(82) - p(162)*y(82)) ];
     [ (p(163)*y(82) + p(166)*y(84) - p(165)*y(60)*y(83)) ];
     [ (p(165)*y(60)*y(83) - p(167)*y(84) - p(166)*y(84)) ];
     [ (p(169)*y(60)*y(81) - p(171)*y(85) - p(170)*y(85)) ];
     [ (p(89)*y(6)) ];
     [ (p(93)*y(8)) ];
     [ (p(181)*y(12)*y(25) - p(182)*y(88) - extvar(p(90)/(p(5)/(p(4)*y(1)) + 1))*y(88)) ];
     [ (p(187)*y(12)*y(27) - p(188)*y(89) - extvar(p(90)/(p(5)/(p(4)*y(1)) + 1))*y(89)) ];
     [ (p(195)*y(12)*y(29) - p(196)*y(90) - extvar(p(90)/(p(5)/(p(4)*y(1)) + 1))*y(90)) ];
     [ (p(201)*y(12)*y(34) - p(202)*y(91) - extvar(p(90)/(p(5)/(p(4)*y(1)) + 1))*y(91)) ];
     [ (p(207)*y(12)*y(35) - p(208)*y(92) - extvar(p(90)/(p(5)/(p(4)*y(1)) + 1))*y(92)) ];
     [ (p(213)*y(12)*y(36) - p(214)*y(93) - extvar(p(90)/(p(5)/(p(4)*y(1)) + 1))*y(93)) ];
     [ (p(219)*y(12)*y(37) - p(220)*y(94) - extvar(p(90)/(p(5)/(p(4)*y(1)) + 1))*y(94)) ];
     [ (y(45) + y(46) + y(48) + y(50) + y(72) + y(73) + y(74) + y(76)) ];
     [ (y(28) + y(42) + y(69) + y(70)) ];
     [ (y(51) + y(77)) ];
     [ (y(59) + y(83)) ];
     [ (y(33) + y(34) + y(35) + y(36) + y(37) + y(38) + y(39) + y(40) + y(64) + y(65) + y(66) + y(67) + y(68) + y(91) + y(92) + y(93) + y(94)) ];
     [ (y(5) + y(7) + y(8) + y(11) + y(15) + y(17) + y(18) + y(19) + y(20) + y(21) + y(23) + y(25) + y(27) + y(29) + y(32) + y(33) + y(34) + y(35) + y(36) + y(37) + y(63) + y(64) + y(65) + y(66) + y(67) + y(68) + y(88) + y(89) + y(90) + y(91) + y(92) + y(93) + y(94)) ];
];
