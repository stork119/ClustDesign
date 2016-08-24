function R = f(t,y,p, stimulus)

R = [
     [ (0) ];
     [ (p(23) + p(5)*y(3) - p(12)*y(2) + p(13)*y(6) - p(4)*y(1)*y(2)) ];
     [ (2*p(6)*y(4) - p(5)*y(3) - 2*p(7)*y(3)^2 + p(4)*y(1)*y(2)) ];
     [ (p(9)*y(5) - p(8)*y(4) - p(6)*y(4) + p(7)*y(3)^2) ];
     [ (p(8)*y(4) - p(9)*y(5) - p(14)*y(5) + p(16)*y(15) - p(15)*y(5)*y(14)) ];
     [ (p(12)*y(2) - p(13)*y(6) + p(18)*y(10) - p(89)*y(6) - p(17)*y(6)*y(16)) ];
     [ (p(10)*y(12)*y(23) - stim*y(7) - p(11)*y(7)) ];
     [ (p(8)*y(11) - p(9)*y(8) + p(14)*y(5) + p(25)*y(17) - p(89)*y(8) - p(24)*y(8)*y(14)) ];
     [ (stim*y(7) - p(26)*y(9) + stim*y(88) + stim*y(89) + stim*y(90) + stim*y(91) + stim*y(92) + stim*y(93) + stim*y(94)) ];
     [ (2*p(6)*y(11) - p(18)*y(10) - 2*p(7)*y(10)^2 + p(17)*y(6)*y(16)) ];
     [ (p(9)*y(8) - p(6)*y(11) - p(8)*y(11) + p(7)*y(10)^2) ];
     [ (p(11)*y(7) + p(26)*y(9) + p(11)*y(88) + p(11)*y(89) + p(11)*y(90) + p(11)*y(91) + p(11)*y(92) + p(11)*y(93) + p(11)*y(94) - p(10)*y(12)*y(23) - p(10)*y(12)*y(25) - p(10)*y(12)*y(27) - p(10)*y(12)*y(29) - p(10)*y(12)*y(34) - p(10)*y(12)*y(35) - p(10)*y(12)*y(36) - p(10)*y(12)*y(37)) ];
     [ (p(90)*y(16)) ];
     [ (p(16)*y(15) + p(25)*y(17) - p(15)*y(5)*y(14) - p(24)*y(8)*y(14)) ];
     [ (p(13)*y(17) - p(12)*y(15) - p(16)*y(15) + p(27)*y(23) + p(40)*y(32) + p(55)*y(25) + p(52)*y(35) + p(61)*y(33) + p(61)*y(34) + p(15)*y(5)*y(14) - p(28)*y(15)*y(22) - p(39)*y(15)*y(31) - p(56)*y(15)*y(30) - p(51)*y(15)*y(38) - p(62)*y(15)*y(39) - p(62)*y(15)*y(40)) ];
     [ (p(18)*y(10) - p(90)*y(16) - p(17)*y(6)*y(16)) ];
     [ (p(12)*y(15) - p(13)*y(17) - p(25)*y(17) + p(27)*y(18) + p(55)*y(19) + p(40)*y(63) + p(52)*y(66) + p(61)*y(64) + p(61)*y(65) + p(24)*y(8)*y(14) - p(28)*y(17)*y(22) - p(39)*y(17)*y(31) - p(56)*y(17)*y(30) - p(51)*y(17)*y(38) - p(62)*y(17)*y(39) - p(62)*y(17)*y(40)) ];
     [ (p(14)*y(23) - p(27)*y(18) + p(29)*y(19) + stim*y(7) + p(28)*y(17)*y(22) - p(30)*y(18)*y(24)) ];
     [ (p(12)*y(25) - p(13)*y(19) - p(29)*y(19) + p(31)*y(20) + p(34)*y(20) + p(35)*y(21) + p(37)*y(21) - p(55)*y(19) + stim*y(88) + p(30)*y(18)*y(24) - p(32)*y(19)*y(26) - p(38)*y(19)*y(26) + p(56)*y(17)*y(30) - p(33)*y(19)*y(69) - p(36)*y(19)*y(71)) ];
     [ (p(12)*y(27) - p(13)*y(20) - p(31)*y(20) - p(34)*y(20) + stim*y(89) + p(32)*y(19)*y(26) + p(33)*y(19)*y(69)) ];
     [ (p(12)*y(29) - p(13)*y(21) - p(35)*y(21) - p(37)*y(21) + stim*y(90) + p(38)*y(19)*y(26) + p(36)*y(19)*y(71)) ];
     [ (p(27)*y(18) + p(27)*y(23) + p(44)*y(34) + p(44)*y(39) + p(57)*y(30) + p(44)*y(65) - p(28)*y(15)*y(22) - p(28)*y(17)*y(22) - p(43)*y(22)*y(33) - p(58)*y(22)*y(24) - p(43)*y(22)*y(40) - p(43)*y(22)*y(64)) ];
     [ (p(11)*y(7) - p(14)*y(23) - p(27)*y(23) + p(29)*y(25) - p(10)*y(12)*y(23) + p(28)*y(15)*y(22) - p(30)*y(23)*y(24)) ];
     [ (p(29)*y(19) + p(29)*y(25) + p(45)*y(35) + p(57)*y(30) + p(64)*y(38) + p(45)*y(66) - p(30)*y(18)*y(24) - p(30)*y(23)*y(24) - p(46)*y(24)*y(34) - p(58)*y(22)*y(24) - p(63)*y(24)*y(39) - p(46)*y(24)*y(65)) ];
     [ (p(13)*y(19) - p(12)*y(25) - p(29)*y(25) + p(31)*y(27) + p(34)*y(27) + p(35)*y(29) + p(37)*y(29) - p(55)*y(25) + p(11)*y(88) - p(10)*y(12)*y(25) + p(30)*y(23)*y(24) - p(32)*y(25)*y(26) - p(33)*y(25)*y(28) - p(38)*y(25)*y(26) + p(56)*y(15)*y(30) - p(36)*y(25)*y(43)) ];
     [ (p(31)*y(20) + p(31)*y(27) + p(37)*y(21) + p(37)*y(29) + p(31)*y(36) + p(37)*y(37) + p(31)*y(67) + p(37)*y(68) - p(32)*y(19)*y(26) - p(32)*y(25)*y(26) - p(38)*y(19)*y(26) - p(38)*y(25)*y(26) - p(32)*y(26)*y(35) - p(38)*y(26)*y(35) - p(32)*y(26)*y(66) - p(38)*y(26)*y(66)) ];
     [ (p(13)*y(20) - p(12)*y(27) - p(31)*y(27) - p(34)*y(27) + p(11)*y(89) - p(10)*y(12)*y(27) + p(32)*y(25)*y(26) + p(33)*y(25)*y(28)) ];
     [ (p(34)*y(27) + p(34)*y(36) + p(48)*y(42) - p(33)*y(25)*y(28) - p(33)*y(28)*y(35) - p(47)*y(28)*y(41)) ];
     [ (p(13)*y(21) - p(12)*y(29) - p(35)*y(29) - p(37)*y(29) + p(11)*y(90) - p(10)*y(12)*y(29) + p(38)*y(25)*y(26) + p(36)*y(25)*y(43)) ];
     [ (p(55)*y(19) + p(55)*y(25) - p(57)*y(30) + p(53)*y(38) + p(65)*y(35) + p(65)*y(66) - p(56)*y(15)*y(30) - p(56)*y(17)*y(30) + p(58)*y(22)*y(24) - p(54)*y(30)*y(40) - p(66)*y(30)*y(33) - p(66)*y(30)*y(64)) ];
     [ (p(40)*y(32) + p(40)*y(63) - p(39)*y(15)*y(31) - p(39)*y(17)*y(31) + (p(59)*y(40))/(p(60) + y(40))) ];
     [ (p(42)*y(33) - p(40)*y(32) - p(41)*y(32) - p(12)*y(32) + p(13)*y(63) + p(39)*y(15)*y(31)) ];
     [ (p(41)*y(32) - p(12)*y(33) - p(42)*y(33) + p(13)*y(64) + p(44)*y(34) - p(61)*y(33) + p(65)*y(35) - p(43)*y(22)*y(33) + p(62)*y(15)*y(40) - p(66)*y(30)*y(33)) ];
     [ (p(13)*y(65) - p(12)*y(34) - p(44)*y(34) + p(45)*y(35) - p(61)*y(34) + p(11)*y(91) - p(10)*y(12)*y(34) + p(43)*y(22)*y(33) - p(46)*y(24)*y(34) + p(62)*y(15)*y(39)) ];
     [ (p(31)*y(36) - p(12)*y(35) + p(34)*y(36) + p(35)*y(37) + p(37)*y(37) + p(13)*y(66) - p(45)*y(35) - p(52)*y(35) - p(65)*y(35) + p(11)*y(92) - p(10)*y(12)*y(35) - p(32)*y(26)*y(35) - p(33)*y(28)*y(35) - p(38)*y(26)*y(35) + p(46)*y(24)*y(34) + p(51)*y(15)*y(38) - p(36)*y(35)*y(43) + p(66)*y(30)*y(33)) ];
     [ (p(13)*y(67) - p(31)*y(36) - p(34)*y(36) - p(12)*y(36) + p(11)*y(93) - p(10)*y(12)*y(36) + p(32)*y(26)*y(35) + p(33)*y(28)*y(35)) ];
     [ (p(13)*y(68) - p(35)*y(37) - p(37)*y(37) - p(12)*y(37) + p(11)*y(94) - p(10)*y(12)*y(37) + p(38)*y(26)*y(35) + p(36)*y(35)*y(43)) ];
     [ (p(52)*y(35) - p(53)*y(38) - p(64)*y(38) + p(52)*y(66) - p(51)*y(15)*y(38) - p(51)*y(17)*y(38) + p(54)*y(30)*y(40) + p(63)*y(24)*y(39)) ];
     [ (p(61)*y(34) - p(44)*y(39) + p(64)*y(38) + p(61)*y(65) + p(43)*y(22)*y(40) - p(62)*y(15)*y(39) - p(62)*y(17)*y(39) - p(63)*y(24)*y(39)) ];
     [ (p(44)*y(39) + p(53)*y(38) + p(61)*y(33) + p(61)*y(64) - p(43)*y(22)*y(40) - p(62)*y(15)*y(40) - p(62)*y(17)*y(40) - p(54)*y(30)*y(40) - (p(59)*y(40))/(p(60) + y(40))) ];
     [ (p(48)*y(42) + p(69)*y(46) + p(48)*y(70) + p(69)*y(73) - p(47)*y(28)*y(41) - p(47)*y(41)*y(69)) ];
     [ (p(47)*y(28)*y(41) - p(49)*y(42) - p(48)*y(42) + p(50)*y(43)*y(45)) ];
     [ (p(35)*y(29) + p(35)*y(37) + p(49)*y(42) - p(36)*y(25)*y(43) - p(36)*y(35)*y(43) - p(50)*y(43)*y(45)) ];
     [ (p(68)*y(46) + p(69)*y(46) + p(68)*y(73) + p(69)*y(73) - p(67)*y(44)*y(45) - p(67)*y(44)*y(72)) ];
     [ (p(49)*y(42) + p(68)*y(46) + p(70)*y(48) + p(70)*y(50) + p(72)*y(48) + p(73)*y(50) - p(50)*y(43)*y(45) - p(67)*y(44)*y(45) - p(71)*y(45)*y(47) - p(71)*y(45)*y(49)) ];
     [ (p(67)*y(44)*y(45) - p(69)*y(46) - p(68)*y(46)) ];
     [ (p(70)*y(48) + p(76)*y(54) + p(70)*y(74) + p(76)*y(79) - p(71)*y(45)*y(47) - p(71)*y(47)*y(72)) ];
     [ (p(71)*y(45)*y(47) - p(72)*y(48) - p(70)*y(48)) ];
     [ (p(70)*y(50) + p(72)*y(48) + p(76)*y(52) + p(77)*y(54) - p(71)*y(45)*y(49) - p(78)*y(49)*y(53)) ];
     [ (p(71)*y(45)*y(49) - p(73)*y(50) - p(70)*y(50)) ];
     [ (p(73)*y(50) + p(74)*y(52) + p(80)*y(56) + p(81)*y(56) + p(80)*y(58) + p(82)*y(58) - p(75)*y(51)*y(53) - p(79)*y(51)*y(55) - p(79)*y(51)*y(57)) ];
     [ (p(75)*y(51)*y(53) - p(76)*y(52) - p(74)*y(52)) ];
     [ (p(74)*y(52) + p(76)*y(52) + p(76)*y(54) + p(77)*y(54) + p(74)*y(78) + p(76)*y(78) + p(76)*y(79) + p(77)*y(79) - p(75)*y(51)*y(53) - p(78)*y(49)*y(53) - p(75)*y(53)*y(77) - p(78)*y(53)*y(75)) ];
     [ (p(78)*y(49)*y(53) - p(77)*y(54) - p(76)*y(54)) ];
     [ (p(80)*y(56) + p(88)*y(62) + p(80)*y(80) + p(88)*y(85) - p(79)*y(51)*y(55) - p(79)*y(55)*y(77)) ];
     [ (p(79)*y(51)*y(55) - p(81)*y(56) - p(80)*y(56)) ];
     [ (p(81)*y(56) + p(80)*y(58) + p(85)*y(61) + p(86)*y(62) - p(79)*y(51)*y(57) - p(87)*y(57)*y(60)) ];
     [ (p(79)*y(51)*y(57) - p(82)*y(58) - p(80)*y(58)) ];
     [ (p(82)*y(58) + p(83)*y(61) - p(84)*y(59)*y(60)) ];
     [ (p(83)*y(61) + p(85)*y(61) + p(86)*y(62) + p(88)*y(62) + p(83)*y(84) + p(85)*y(84) + p(86)*y(85) + p(88)*y(85) - p(84)*y(59)*y(60) - p(87)*y(57)*y(60) - p(84)*y(60)*y(83) - p(87)*y(60)*y(81)) ];
     [ (p(84)*y(59)*y(60) - p(85)*y(61) - p(83)*y(61)) ];
     [ (p(87)*y(57)*y(60) - p(88)*y(62) - p(86)*y(62)) ];
     [ (p(12)*y(32) - p(13)*y(63) - p(40)*y(63) - p(41)*y(63) + p(42)*y(64) + p(39)*y(17)*y(31)) ];
     [ (p(12)*y(33) - p(13)*y(64) + p(41)*y(63) - p(42)*y(64) + p(44)*y(65) - p(61)*y(64) + p(65)*y(66) + p(62)*y(17)*y(40) - p(43)*y(22)*y(64) - p(66)*y(30)*y(64)) ];
     [ (p(12)*y(34) - p(13)*y(65) - p(44)*y(65) + p(45)*y(66) - p(61)*y(65) + stim*y(91) + p(62)*y(17)*y(39) + p(43)*y(22)*y(64) - p(46)*y(24)*y(65)) ];
     [ (p(12)*y(35) - p(13)*y(66) + p(31)*y(67) + p(34)*y(67) + p(35)*y(68) + p(37)*y(68) - p(45)*y(66) - p(52)*y(66) - p(65)*y(66) + stim*y(92) + p(51)*y(17)*y(38) - p(32)*y(26)*y(66) - p(38)*y(26)*y(66) + p(46)*y(24)*y(65) + p(66)*y(30)*y(64) - p(33)*y(66)*y(69) - p(36)*y(66)*y(71)) ];
     [ (p(12)*y(36) - p(13)*y(67) - p(31)*y(67) - p(34)*y(67) + stim*y(93) + p(32)*y(26)*y(66) + p(33)*y(66)*y(69)) ];
     [ (p(12)*y(37) - p(13)*y(68) - p(35)*y(68) - p(37)*y(68) + stim*y(94) + p(38)*y(26)*y(66) + p(36)*y(66)*y(71)) ];
     [ (p(34)*y(20) + p(34)*y(67) + p(48)*y(70) - p(33)*y(19)*y(69) - p(47)*y(41)*y(69) - p(33)*y(66)*y(69)) ];
     [ (p(47)*y(41)*y(69) - p(49)*y(70) - p(48)*y(70) + p(50)*y(71)*y(72)) ];
     [ (p(35)*y(21) + p(35)*y(68) + p(49)*y(70) - p(36)*y(19)*y(71) - p(36)*y(66)*y(71) - p(50)*y(71)*y(72)) ];
     [ (p(49)*y(70) + p(68)*y(73) + p(70)*y(74) + p(70)*y(76) + p(72)*y(74) + p(73)*y(76) - p(67)*y(44)*y(72) - p(71)*y(47)*y(72) - p(50)*y(71)*y(72) - p(71)*y(72)*y(75)) ];
     [ (p(67)*y(44)*y(72) - p(69)*y(73) - p(68)*y(73)) ];
     [ (p(71)*y(47)*y(72) - p(72)*y(74) - p(70)*y(74)) ];
     [ (p(70)*y(76) + p(72)*y(74) + p(76)*y(78) + p(77)*y(79) - p(78)*y(53)*y(75) - p(71)*y(72)*y(75)) ];
     [ (p(71)*y(72)*y(75) - p(73)*y(76) - p(70)*y(76)) ];
     [ (p(73)*y(76) + p(74)*y(78) + p(80)*y(80) + p(81)*y(80) + p(80)*y(82) + p(82)*y(82) - p(75)*y(53)*y(77) - p(79)*y(55)*y(77) - p(79)*y(77)*y(81)) ];
     [ (p(75)*y(53)*y(77) - p(76)*y(78) - p(74)*y(78)) ];
     [ (p(78)*y(53)*y(75) - p(77)*y(79) - p(76)*y(79)) ];
     [ (p(79)*y(55)*y(77) - p(81)*y(80) - p(80)*y(80)) ];
     [ (p(81)*y(80) + p(80)*y(82) + p(85)*y(84) + p(86)*y(85) - p(87)*y(60)*y(81) - p(79)*y(77)*y(81)) ];
     [ (p(79)*y(77)*y(81) - p(82)*y(82) - p(80)*y(82)) ];
     [ (p(82)*y(82) + p(83)*y(84) - p(84)*y(60)*y(83)) ];
     [ (p(84)*y(60)*y(83) - p(85)*y(84) - p(83)*y(84)) ];
     [ (p(87)*y(60)*y(81) - p(88)*y(85) - p(86)*y(85)) ];
     [ (p(89)*y(6)) ];
     [ (p(89)*y(8)) ];
     [ (p(10)*y(12)*y(25) - stim*y(88) - p(11)*y(88)) ];
     [ (p(10)*y(12)*y(27) - stim*y(89) - p(11)*y(89)) ];
     [ (p(10)*y(12)*y(29) - stim*y(90) - p(11)*y(90)) ];
     [ (p(10)*y(12)*y(34) - stim*y(91) - p(11)*y(91)) ];
     [ (p(10)*y(12)*y(35) - stim*y(92) - p(11)*y(92)) ];
     [ (p(10)*y(12)*y(36) - stim*y(93) - p(11)*y(93)) ];
     [ (p(10)*y(12)*y(37) - stim*y(94) - p(11)*y(94)) ];
     [ (y(45) + y(46) + y(48) + y(50) + y(72) + y(73) + y(74) + y(76)) ];
     [ (y(28) + y(42) + y(69) + y(70)) ];
     [ (y(51) + y(77)) ];
     [ (y(59) + y(83)) ];
     [ (y(33) + y(34) + y(35) + y(36) + y(37) + y(38) + y(39) + y(40) + y(64) + y(65) + y(66) + y(67) + y(68) + y(91) + y(92) + y(93) + y(94)) ];
     [ (y(5) + y(7) + y(8) + y(11) + y(15) + y(17) + y(18) + y(19) + y(20) + y(21) + y(23) + y(25) + y(27) + y(29) + y(32) + y(33) + y(34) + y(35) + y(36) + y(37) + y(63) + y(64) + y(65) + y(66) + y(67) + y(68) + y(88) + y(89) + y(90) + y(91) + y(92) + y(93) + y(94)) ];
];
