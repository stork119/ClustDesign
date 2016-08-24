function xdot=SchoeberModified(x,par,stim,t)
	compartment_c1=par(1);
	compartment_c2=par(2);
	compartment_c3=par(3);
	global_par_k1=par(4);
	global_par_kr1=par(5);
	global_par_kr2=par(6);
	global_par_k2=par(7);
	global_par_k3=par(8);
	global_par_kr3=par(9);
	global_par_k4=par(10);
	global_par_kr4=par(11);
	global_par_k6=par(12);
	global_par_kr6=par(13);
	global_par_k7=par(14);
	global_par_k8=par(15);
	global_par_kr8=par(16);
	global_par_k10=par(17);
	global_par_kr10=par(18);
	global_par_kr11=par(19);
	global_par_k11=par(20);
	global_par_kr12=par(21);
	global_par_k12=par(22);
	global_par_k13=par(23);
	global_par_k14=par(24);
	global_par_kr14=par(25);
	global_par_k15=par(26);
	global_par_kr16=par(27);
	global_par_k16=par(28);
	global_par_kr17=par(29);
	global_par_k17=par(30);
	global_par_kr18=par(31);
	global_par_k18=par(32);
	global_par_kr19=par(33);
	global_par_k19=par(34);
	global_par_kr20=par(35);
	global_par_k20=par(36);
	global_par_k21=par(37);
	global_par_kr21=par(38);
	global_par_k22=par(39);
	global_par_kr22=par(40);
	global_par_k23=par(41);
	global_par_kr23=par(42);
	global_par_k24=par(43);
	global_par_kr24=par(44);
	global_par_kr25=par(45);
	global_par_k25=par(46);
	global_par_k28=par(47);
	global_par_kr28=par(48);
	global_par_k29=par(49);
	global_par_kr29=par(50);
	global_par_kr32=par(51);
	global_par_k32=par(52);
	global_par_k33=par(53);
	global_par_kr33=par(54);
	global_par_k34=par(55);
	global_par_kr34=par(56);
	global_par_k35=par(57);
	global_par_kr35=par(58);
	global_par_Vm36=par(59);
	global_par_Km36=par(60);
	global_par_k37=par(61);
	global_par_kr37=par(62);
	global_par_k40=par(63);
	global_par_kr40=par(64);
	global_par_kr41=par(65);
	global_par_k41=par(66);
	global_par_k42=par(67);
	global_par_kr42=par(68);
	global_par_k43=par(69);
	global_par_kr44=par(70);
	global_par_k44=par(71);
	global_par_k45=par(72);
	global_par_k47=par(73);
	global_par_kr48=par(74);
	global_par_k48=par(75);
	global_par_k49=par(76);
	global_par_kr50=par(77);
	global_par_k50=par(78);
	global_par_k52=par(79);
	global_par_kr52=par(80);
	global_par_k53=par(81);
	global_par_k55=par(82);
	global_par_kr56=par(83);
	global_par_k56=par(84);
	global_par_k57=par(85);
	global_par_kr58=par(86);
	global_par_k58=par(87);
	global_par_k59=par(88);
	global_par_k60=par(89);
    global_par_RT=par(90);
    global_par_k61=par(91);
    global_par_kr61=par(92);
    global_par_k62=par(93);
    global_par_kr62=par(94);
    global_par_k63=par(95);
    global_par_kr63=par(96);  
    global_par_k64=par(97);
    global_par_kr64=par(98);  
    global_par_k65=par(99);
    global_par_kr65=par(100);  
    global_par_k66=par(101);
    global_par_kr66=par(102);  
    global_par_k67=par(103);
    global_par_kr67=par(104);
    global_par_k68=par(105);
    global_par_kr68=par(106);
    global_par_k69=par(107);
    global_par_kr69=par(108);
    global_par_k70=par(109);
    global_par_kr70=par(110);
    global_par_k71=par(111);
    global_par_kr71=par(112);
    global_par_k72=par(113);
    global_par_kr72=par(114); 
    global_par_k73=par(115);
    global_par_kr73=par(116);
    global_par_k74=par(117);
    global_par_kr74=par(118);
    global_par_k75=par(119);
    global_par_kr75=par(120);
    global_par_k76=par(121);
    global_par_kr76=par(122);
    global_par_k77=par(123);
    global_par_kr77=par(124);
    global_par_k78=par(125);
    global_par_kr78=par(126);
    global_par_k79=par(127);
    global_par_kr79=par(128);
    global_par_k80=par(129);
    global_par_kr80=par(130);
    global_par_k81=par(131);
    global_par_kr81=par(132);
    global_par_k82=par(133);
    global_par_kr82=par(134);
    global_par_k83=par(135);
    global_par_kr83=par(136);
    global_par_k84=par(137);
    global_par_kr84=par(138);
    global_par_k85=par(139);
    global_par_kr85=par(140);
    global_par_k86=par(141);
    global_par_kr86=par(142);
    global_par_k87=par(143);
    global_par_kr87=par(144);
    global_par_k88=par(145);
    global_par_kr88=par(146);
    global_par_k89=par(147);
    global_par_kr89=par(148);
    global_par_k90=par(149);
    global_par_kr90=par(150);
    global_par_k91=par(151);
    global_par_kr91=par(152);
    global_par_k92=par(153);
    global_par_kr92=par(154);
    global_par_k93=par(155);
    global_par_kr93=par(156);
    global_par_k94=par(157);
    global_par_kr94=par(158); 
    global_par_k95=par(159);
    global_par_kr95=par(160);    
    global_par_k96=par(161);
    global_par_kr96=par(162);   
    global_par_k97=par(163);
    global_par_kr97=par(164);   
    global_par_k98=par(165);
    global_par_kr98=par(166);
    global_par_k99=par(167);
    global_par_kr99=par(168);
    global_par_k100=par(169);
    global_par_kr100=par(170);
    global_par_k101=par(171);
    global_par_kr101=par(172);
    global_par_k102=par(173);
    global_par_kr102=par(174);
    global_par_k103=par(175);
    global_par_kr103=par(176);  
    global_par_k104=par(177);
    global_par_kr104=par(178); 
    global_par_k105=par(179);
    global_par_kr105=par(180);
    global_par_k106=par(181);
    global_par_kr106=par(182); 
    global_par_k107=par(183);
    global_par_kr107=par(184); 
    global_par_k108=par(185);
    global_par_kr108=par(186);
    global_par_k109=par(187);
    global_par_kr109=par(188);
    global_par_k104=par(189);
    global_par_kr104=par(190);
    global_par_k110=par(191);
    global_par_kr110=par(192);
    global_par_k111=par(193);
    global_par_kr111=par(194);
    global_par_k112=par(195);
    global_par_kr112=par(196);
    global_par_k113=par(197);
    global_par_kr113=par(198); 
    global_par_k114=par(199);
    global_par_kr114=par(200);
    global_par_k115=par(201);
    global_par_kr115=par(202);    
    global_par_k116=par(203);
    global_par_kr116=par(204);
    global_par_k117=par(205);
    global_par_kr117=par(206);
    global_par_k118=par(207);
    global_par_kr118=par(208);
    global_par_k119=par(209);
    global_par_kr119=par(210);
    global_par_k120=par(211);
    global_par_kr120=par(212);
    global_par_k121=par(213);
    global_par_kr121=par(214);
    global_par_k122=par(215);
    global_par_kr122=par(216);
    global_par_k123=par(217);
    global_par_kr123=par(218);
    global_par_k124=par(219);
    global_par_kr124=par(220);
    global_par_k125=par(221);
    global_par_kr125=par(222);
    global_par_k26=par(223);
    global_par_kr26=par(224);
    global_par_k27=par(225);
    global_par_kr27=par(226);
    global_par_k30=par(227);
    global_par_kr30=par(228);
    global_par_k31=par(229);
    global_par_kr31=par(230);
    global_par_k38=par(231);
    global_par_kr38=par(232);
    global_par_k39=par(233);
    global_par_kr39=par(234);
    global_par_k46=par(235);
    global_par_kr46=par(236);
    global_par_k51=par(237);
    global_par_kr51=par(238);
    global_par_k54=par(239);
    global_par_kr54=par(240);


  
% Parameter:   id =  C, name = C_internalization
% Parameter:   id =  RT, name = total_Receptors
	
% assignmentRule: variable = Ras_GTP
	x(96)=x(42)+x(28)+x(70)+x(69);
% assignmentRule: variable = MEK_PP
	x(97)=x(51)+x(77);
% assignmentRule: variable = ERK_PP
	x(98)=x(59)+x(83);
% assignmentRule: variable = Raf_act
	x(95)=x(45)+x(46)+x(48)+x(50)+x(72)+x(73)+x(74)+x(76);
% assignmentRule: variable = SHC_P_t
	x(99)=x(33)+x(34)+x(35)+x(36)+x(37)+x(38)+x(39)+x(40)+x(91)+x(92)+x(93)+x(94)+x(64)+x(65)+x(66)+x(67)+x(68);
% assignmentRule: variable = EGF_EGFR_act
	x(100)=x(5)+x(7)+x(15)+x(23)+x(25)+x(27)+x(29)+x(32)+x(33)+x(34)+x(35)+x(36)+x(37)+x(88)+x(89)+x(90)+x(91)+x(92)+x(93)+x(94)+x(8)+x(11)+x(17)+x(18)+x(19)+x(20)+x(21)+x(63)+x(64)+x(65)+x(66)+x(67)+x(68);
% assignmentRule: variable = C
	global_par_C=global_par_RT/(global_par_kr1/(global_par_k1*x(1))+1);
% assignmentRule: variable = k5
	global_par_k5=stim(1);
% piecewise(1.55, global_par_C < 3100, 0.2, global_par_C > 100000, global_par_C*(-1.35E-5)+1.55);

% Reaction: id = v1, name = v1

	reaction_v1=global_par_k1*x(1)*x(2)-global_par_kr1*x(3);
% Reaction: id = v2, name = v2


	reaction_v2=global_par_k2*x(3)*x(3)-global_par_kr2*x(4);
% Reaction: id = v3, name = v3


	reaction_v3=global_par_k3*x(4)-global_par_kr3*x(5);
% Reaction: id = v4, name = v4


	reaction_v4=global_par_k4*x(23)*x(12)-global_par_kr4*x(7);
% Reaction: id = v5, name = v5


	reaction_v5=global_par_k5*x(7);
% Reaction: id = v6, name = v6


	reaction_v6=global_par_k6*x(2)-global_par_kr6*x(6);
% Reaction: id = v7, name = v7


	reaction_v7=global_par_k7*x(5);
% Reaction: id = v8, name = v8


	reaction_v8=global_par_k8*x(5)*x(14)-global_par_kr8*x(15);
% Reaction: id = v9, name = v9


	reaction_v9=global_par_k7*x(23);
% Reaction: id = v10, name = v10


	reaction_v10=global_par_k10*x(6)*x(16)-global_par_kr10*x(10);
% Reaction: id = v11, name = v11


	reaction_v11=global_par_k2*x(10)*x(10)-global_par_kr2*x(11);
% Reaction: id = v12, name = v12


	reaction_v12=global_par_k3*x(11)-global_par_kr3*x(8);
% Reaction: id = v13, name = v13


	reaction_v13=global_par_k13;
% Reaction: id = v14, name = v14


	reaction_v14=global_par_k14*x(8)*x(14)-global_par_kr14*x(17);
% Reaction: id = v15, name = v15


	reaction_v15=global_par_k15*x(9);
% Reaction: id = v16, name = v16


	reaction_v16=global_par_k16*x(22)*x(15)-global_par_kr16*x(23);
% Reaction: id = v17, name = v17


	reaction_v17=global_par_k17*x(24)*x(23)-global_par_kr17*x(25);
% Reaction: id = v18, name = v18


	reaction_v18=global_par_k18*x(26)*x(25)-global_par_kr18*x(27);
% Reaction: id = v19, name = v19


	reaction_v19=global_par_k19*x(27)-global_par_kr19*x(28)*x(25);
% Reaction: id = v20, name = v20


	reaction_v20=global_par_k20*x(25)*x(43)-global_par_kr20*x(29);
% Reaction: id = v21, name = v21


	reaction_v21=global_par_k21*x(29)-global_par_kr21*x(25)*x(26);
% Reaction: id = v22, name = v22


	reaction_v22=global_par_k22*x(31)*x(15)-global_par_kr22*x(32);
% Reaction: id = v23, name = v23


	reaction_v23=global_par_k23*x(32)-global_par_kr23*x(33);
% Reaction: id = v24, name = v24


	reaction_v24=global_par_k24*x(22)*x(33)-global_par_kr24*x(34);
% Reaction: id = v25, name = v25


	reaction_v25=global_par_k25*x(24)*x(34)-global_par_kr25*x(35);
% Reaction: id = v26, name = v26


	reaction_v26=global_par_k26*x(26)*x(35)-global_par_kr26*x(36);
% Reaction: id = v27, name = v27


	reaction_v27=global_par_k27*x(36)-global_par_kr27*x(35)*x(28);
% Reaction: id = v28, name = v28


	reaction_v28=global_par_k28*x(28)*x(41)-global_par_kr28*x(42);
% Reaction: id = v29, name = v29


	reaction_v29=global_par_k29*x(42)-global_par_kr29*x(43)*x(45);
% Reaction: id = v30, name = v30


	reaction_v30=global_par_k30*x(35)*x(43)-global_par_kr30*x(37);
% Reaction: id = v31, name = v31


	reaction_v31=global_par_k31*x(37)-global_par_kr31*x(35)*x(26);
% Reaction: id = v32, name = v32


	reaction_v32=global_par_k32*x(35)-global_par_kr32*x(15)*x(38);
% Reaction: id = v33, name = v33


	reaction_v33=global_par_k33*x(38)-global_par_kr33*x(40)*x(30);
% Reaction: id = v34, name = v34


	reaction_v34=global_par_k34*x(25)-global_par_kr34*x(15)*x(30);
% Reaction: id = v35, name = v35


	reaction_v35=global_par_k35*x(30)-global_par_kr35*x(24)*x(22);
% Reaction: id = v36, name = v36


	reaction_v36=global_par_Vm36*x(40)/(global_par_Km36+x(40));
% Reaction: id = v37, name = v37


	reaction_v37=global_par_k37*x(33)-global_par_kr37*x(15)*x(40);
% Reaction: id = v38, name = v38


	reaction_v38=global_par_k38*x(22)*x(40)-global_par_kr38*x(39);
% Reaction: id = v39, name = v39


	reaction_v39=global_par_k39*x(34)-global_par_kr39*x(15)*x(39);
% Reaction: id = v40, name = v40


	reaction_v40=global_par_k40*x(24)*x(39)-global_par_kr40*x(38);
% Reaction: id = v41, name = v41


	reaction_v41=global_par_k41*x(30)*x(33)-global_par_kr41*x(35);
% Reaction: id = v42, name = v42


	reaction_v42=global_par_k42*x(44)*x(45)-global_par_kr42*x(46);
% Reaction: id = v43, name = v43


	reaction_v43=global_par_k43*x(46);
% Reaction: id = v44, name = v44


	reaction_v44=global_par_k44*x(47)*x(45)-global_par_kr44*x(48);
% Reaction: id = v45, name = v45


	reaction_v45=global_par_k45*x(48);
% Reaction: id = v46, name = v46


	reaction_v46=global_par_k46*x(49)*x(45)-global_par_kr46*x(50);
% Reaction: id = v47, name = v47


	reaction_v47=global_par_k47*x(50);
% Reaction: id = v48, name = v48


	reaction_v48=global_par_k48*x(51)*x(53)-global_par_kr48*x(52);
% Reaction: id = v49, name = v49


	reaction_v49=global_par_k49*x(52);
% Reaction: id = v50, name = v50


	reaction_v50=global_par_k50*x(53)*x(49)-global_par_kr50*x(54);
% Reaction: id = v51, name = v51


	reaction_v51=global_par_k51*x(54);
% Reaction: id = v52, name = v52


	reaction_v52=global_par_k52*x(55)*x(51)-global_par_kr52*x(56);
% Reaction: id = v53, name = v53


	reaction_v53=global_par_k53*x(56);
% Reaction: id = v54, name = v54


	reaction_v54=global_par_k54*x(51)*x(57)-global_par_kr54*x(58);
% Reaction: id = v55, name = v55


	reaction_v55=global_par_k55*x(58);
% Reaction: id = v56, name = v56


	reaction_v56=global_par_k56*x(59)*x(60)-global_par_kr56*x(61);
% Reaction: id = v57, name = v57


	reaction_v57=global_par_k57*x(61);
% Reaction: id = v58, name = v58


	reaction_v58=global_par_k58*x(60)*x(57)-global_par_kr58*x(62);
% Reaction: id = v59, name = v59


	reaction_v59=global_par_k59*x(62);
% Reaction: id = v60, name = v60


	reaction_v60=global_par_k60*x(6);
% Reaction: id = v61, name = v61


	reaction_v61=global_par_k61*x(16);
% Reaction: id = v62, name = v62


	reaction_v62=global_par_k62*x(8);
% Reaction: id = v63, name = v63


	reaction_v63=global_par_k63*x(17)*x(22)-global_par_kr63*x(18);
% Reaction: id = v64, name = v64


	reaction_v64=global_par_k64*x(24)*x(18)-global_par_kr64*x(19);
% Reaction: id = v65, name = v65


	reaction_v65=global_par_k65*x(26)*x(19)-global_par_kr65*x(20);
% Reaction: id = v66, name = v66


	reaction_v66=global_par_k66*x(20)-global_par_kr66*x(69)*x(19);
% Reaction: id = v67, name = v67


	reaction_v67=global_par_k67*x(71)*x(19)-global_par_kr67*x(21);
% Reaction: id = v68, name = v68


	reaction_v68=global_par_k68*x(21)-global_par_kr68*x(19)*x(26);
% Reaction: id = v69, name = v69


	reaction_v69=global_par_k69*x(31)*x(17)-global_par_kr69*x(63);
% Reaction: id = v70, name = v70


	reaction_v70=global_par_k70*x(63)-global_par_kr70*x(64);
% Reaction: id = v71, name = v71


	reaction_v71=global_par_k71*x(22)*x(64)-global_par_kr71*x(65);
% Reaction: id = v72, name = v72


	reaction_v72=global_par_k72*x(24)*x(65)-global_par_kr72*x(66);
% Reaction: id = v73, name = v73


	reaction_v73=global_par_k73*x(26)*x(66)-global_par_kr73*x(67);
% Reaction: id = v74, name = v74


	reaction_v74=global_par_k74*x(67)-global_par_kr74*x(66)*x(69);
% Reaction: id = v75, name = v75


	reaction_v75=global_par_k75*x(69)*x(41)-global_par_kr75*x(70);
% Reaction: id = v76, name = v76


	reaction_v76=global_par_k76*x(70)-global_par_kr76*x(71)*x(72);
% Reaction: id = v77, name = v77


	reaction_v77=global_par_k77*x(71)*x(66)-global_par_kr77*x(68);
% Reaction: id = v78, name = v78


	reaction_v78=global_par_k78*x(68)-global_par_kr78*x(66)*x(26);
% Reaction: id = v79, name = v79


	reaction_v79=global_par_k79*x(66)-global_par_kr79*x(17)*x(38);
% Reaction: id = v80, name = v80


	reaction_v80=global_par_k80*x(19)-global_par_kr80*x(17)*x(30);
% Reaction: id = v81, name = v81


	reaction_v81=global_par_k81*x(64)-global_par_kr81*x(17)*x(40);
% Reaction: id = v82, name = v82


	reaction_v82=global_par_k82*x(65)-global_par_kr82*x(17)*x(39);
% Reaction: id = v83, name = v83


	reaction_v83=global_par_k83*x(30)*x(64)-global_par_kr83*x(66);
% Reaction: id = v84, name = v84


	reaction_v84=global_par_k84*x(44)*x(72)-global_par_kr84*x(73);
% Reaction: id = v85, name = v85


	reaction_v85=global_par_k85*x(73);
% Reaction: id = v86, name = v86


	reaction_v86=global_par_k86*x(47)*x(72)-global_par_kr86*x(74);
% Reaction: id = v87, name = v87


	reaction_v87=global_par_k87*x(74);
% Reaction: id = v88, name = v88


	reaction_v88=global_par_k88*x(72)*x(75)-global_par_kr88*x(76);
% Reaction: id = v89, name = v89


	reaction_v89=global_par_k89*x(76);
% Reaction: id = v90, name = v90


	reaction_v90=global_par_k90*x(77)*x(53)-global_par_kr90*x(78);
% Reaction: id = v91, name = v91


	reaction_v91=global_par_k91*x(78);
% Reaction: id = v92, name = v92


	reaction_v92=global_par_k92*x(53)*x(75)-global_par_kr92*x(79);
% Reaction: id = v93, name = v93


	reaction_v93=global_par_k93*x(79);
% Reaction: id = v94, name = v94


	reaction_v94=global_par_k94*x(55)*x(77)-global_par_kr94*x(80);
% Reaction: id = v95, name = v95


	reaction_v95=global_par_k95*x(80);
% Reaction: id = v96, name = v96


	reaction_v96=global_par_k96*x(77)*x(81)-global_par_kr96*x(82);
% Reaction: id = v97, name = v97


	reaction_v97=global_par_k97*x(82);
% Reaction: id = v98, name = v98


	reaction_v98=global_par_k98*x(83)*x(60)-global_par_kr98*x(84);
% Reaction: id = v99, name = v99


	reaction_v99=global_par_k99*x(84);
% Reaction: id = v100, name = v100


	reaction_v100=global_par_k100*x(60)*x(81)-global_par_kr100*x(85);
% Reaction: id = v101, name = v101


	reaction_v101=global_par_k101*x(85);
% Reaction: id = v102, name = v102


	reaction_v102=global_par_k102*x(15)-global_par_kr102*x(17);
% Reaction: id = v103, name = v103


	reaction_v103=global_par_k103*x(32)-global_par_kr103*x(63);
% Reaction: id = v104, name = v104


	reaction_v104=global_par_k104*x(33)-global_par_kr104*x(64);
% Reaction: id = v105, name = v105


	reaction_v105=global_par_k105*x(25)-global_par_kr105*x(19);
% Reaction: id = v106, name = v106


	reaction_v106=global_par_k106*x(25)*x(12)-global_par_kr106*x(88);
% Reaction: id = v107, name = v107


	reaction_v107=global_par_k5*x(88);
% Reaction: id = v108, name = v108


	reaction_v108=global_par_k108*x(27)-global_par_kr108*x(20);
% Reaction: id = v109, name = v109


	reaction_v109=global_par_k109*x(27)*x(12)-global_par_kr109*x(89);
% Reaction: id = v110, name = v110


	reaction_v110=global_par_k5*x(89);
% Reaction: id = v111, name = v111


	reaction_v111=global_par_k111*x(29)-global_par_kr111*x(21);
% Reaction: id = v112, name = v112


	reaction_v112=global_par_k112*x(29)*x(12)-global_par_kr112*x(90);
% Reaction: id = v113, name = v113


	reaction_v113=global_par_k5*x(90);
% Reaction: id = v114, name = v114


	reaction_v114=global_par_k114*x(34)-global_par_kr114*x(65);
% Reaction: id = v115, name = v115


	reaction_v115=global_par_k115*x(34)*x(12)-global_par_kr115*x(91);
% Reaction: id = v116, name = v116


	reaction_v116=global_par_k5*x(91);
% Reaction: id = v117, name = v117


	reaction_v117=global_par_k117*x(35)-global_par_kr117*x(66);
% Reaction: id = v118, name = v118


	reaction_v118=global_par_k118*x(35)*x(12)-global_par_kr118*x(92);
% Reaction: id = v119, name = v119


	reaction_v119=global_par_k5*x(92);
% Reaction: id = v120, name = v120


	reaction_v120=global_par_k120*x(36)-global_par_kr120*x(67);
% Reaction: id = v121, name = v121


	reaction_v121=global_par_k121*x(36)*x(12)-global_par_kr121*x(93);
% Reaction: id = v122, name = v122


	reaction_v122=global_par_k5*x(93);
% Reaction: id = v123, name = v123


	reaction_v123=global_par_k123*x(37)-global_par_kr123*x(68);
% Reaction: id = v124, name = v124


	reaction_v124=global_par_k124*x(37)*x(12)-global_par_kr124*x(94);
% Reaction: id = v125, name = v125


	reaction_v125=global_par_k5*x(94);
	% Species:   id = x1, name = EGF
    
%WARNING speciesID: x1, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(1) = reaction_v1-reaction_v1;

	% Species:   id = x2, name = EGFR, affected by kineticLaw

	xdot(2) = (-1.0 * reaction_v1) + (-1.0 * reaction_v6) + ( 1.0 * reaction_v13);

	% Species:   id = x3, name = EGF-EGFR, affected by kineticLaw

	xdot(3) = ( 1.0 * reaction_v1) + (-2.0 * reaction_v2);

	% Species:   id = x4, name = EGF-EGFR^2, affected by kineticLaw

	xdot(4) = ( 1.0 * reaction_v2) + (-1.0 * reaction_v3);

	% Species:   id = x5, name = EGF-EGFR*^2, affected by kineticLaw

	xdot(5) = ( 1.0 * reaction_v3) + (-1.0 * reaction_v7) + (-1.0 * reaction_v8);

	% Species:   id = x6, name = EGFRi, affected by kineticLaw

	xdot(6) = ( 1.0 * reaction_v6) + (-1.0 * reaction_v10) + (-1.0 * reaction_v60);

	% Species:   id = x7, name = EGF-EGFR*^2-GAP-Grb2-Prot, affected by kineticLaw

	xdot(7) = ( 1.0 * reaction_v4) + (-1.0 * reaction_v5);

	% Species:   id = x8, name = EGF-EGFRi*^2, affected by kineticLaw

	xdot(8) = ( 1.0 * reaction_v7) + ( 1.0 * reaction_v12) + (-1.0 * reaction_v14) + (-1.0 * reaction_v62);

	% Species:   id = x9, name = Proti, affected by kineticLaw

	xdot(9) = ( 1.0 * reaction_v5) + (-1.0 * reaction_v15) + ( 1.0 * reaction_v107) + ( 1.0 * reaction_v110) + ( 1.0 * reaction_v113) + ( 1.0 * reaction_v116) + ( 1.0 * reaction_v119) + ( 1.0 * reaction_v122) + ( 1.0 * reaction_v125);

	% Species:   id = x10, name = EGF-EGFRi, affected by kineticLaw

	xdot(10) = ( 1.0 * reaction_v10) + (-2.0 * reaction_v11);

	% Species:   id = x11, name = EGF-EGFRi^2, affected by kineticLaw

	xdot(11) = ( 1.0 * reaction_v11) + (-1.0 * reaction_v12);

	% Species:   id = x12, name = Prot, affected by kineticLaw

	xdot(12) = (-1.0 * reaction_v4) + ( 1.0 * reaction_v15) + (-1.0 * reaction_v106) + (-1.0 * reaction_v109) + (-1.0 * reaction_v112) + (-1.0 * reaction_v115) + (-1.0 * reaction_v118) + (-1.0 * reaction_v121) + (-1.0 * reaction_v124);

	% Species:   id = x13, name = EGFideg, affected by kineticLaw

	xdot(13) = ( 1.0 * reaction_v61);

	% Species:   id = x14, name = GAP, affected by kineticLaw

	xdot(14) = (-1.0 * reaction_v8) + (-1.0 * reaction_v14);

	% Species:   id = x15, name = EGF-EGFR*^2-GAP, affected by kineticLaw

	xdot(15) = ( 1.0 * reaction_v8) + (-1.0 * reaction_v16) + (-1.0 * reaction_v22) + ( 1.0 * reaction_v32) + ( 1.0 * reaction_v34) + ( 1.0 * reaction_v37) + ( 1.0 * reaction_v39) + (-1.0 * reaction_v102);

	% Species:   id = x16, name = EGFi, affected by kineticLaw

	xdot(16) = (-1.0 * reaction_v10) + (-1.0 * reaction_v61);

	% Species:   id = x17, name = EGF-EGFRi*^2-GAP, affected by kineticLaw

	xdot(17) = ( 1.0 * reaction_v14) + (-1.0 * reaction_v63) + (-1.0 * reaction_v69) + ( 1.0 * reaction_v79) + ( 1.0 * reaction_v80) + ( 1.0 * reaction_v81) + ( 1.0 * reaction_v82) + ( 1.0 * reaction_v102);

	% Species:   id = x18, name = EGF-EGFRi*^2-GAP-Grb2, affected by kineticLaw

	xdot(18) = ( 1.0 * reaction_v5) + ( 1.0 * reaction_v9) + ( 1.0 * reaction_v63) + (-1.0 * reaction_v64);

	% Species:   id = x19, name = EGF-EGFRi*^2-GAP-Grb2-Sos, affected by kineticLaw

	xdot(19) = ( 1.0 * reaction_v64) + (-1.0 * reaction_v65) + ( 1.0 * reaction_v66) + (-1.0 * reaction_v67) + ( 1.0 * reaction_v68) + (-1.0 * reaction_v80) + ( 1.0 * reaction_v105) + ( 1.0 * reaction_v107);

	% Species:   id = x20, name = EGF-EGFRi*^2-GAP-Grb2-Sos-Ras-GDP, affected by kineticLaw

	xdot(20) = ( 1.0 * reaction_v65) + (-1.0 * reaction_v66) + ( 1.0 * reaction_v108) + ( 1.0 * reaction_v110);

	% Species:   id = x21, name = EGF-EGFRi*^2-GAP-Grb2-Sos-Ras-GTP, affected by kineticLaw

	xdot(21) = ( 1.0 * reaction_v67) + (-1.0 * reaction_v68) + ( 1.0 * reaction_v111) + ( 1.0 * reaction_v113);

	% Species:   id = x22, name = Grb2, affected by kineticLaw

	xdot(22) = (-1.0 * reaction_v16) + (-1.0 * reaction_v24) + ( 1.0 * reaction_v35) + (-1.0 * reaction_v38) + (-1.0 * reaction_v63) + (-1.0 * reaction_v71);

	% Species:   id = x23, name = EGF-EGFR*^2-GAP-Grb2, affected by kineticLaw

	xdot(23) = (-1.0 * reaction_v4) + (-1.0 * reaction_v9) + ( 1.0 * reaction_v16) + (-1.0 * reaction_v17);

	% Species:   id = x24, name = Sos, affected by kineticLaw

	xdot(24) = (-1.0 * reaction_v17) + (-1.0 * reaction_v25) + ( 1.0 * reaction_v35) + (-1.0 * reaction_v40) + (-1.0 * reaction_v64) + (-1.0 * reaction_v72);

	% Species:   id = x25, name = EGF-EGFR*^2-GAP-Grb2-Sos, affected by kineticLaw

	xdot(25) = ( 1.0 * reaction_v17) + (-1.0 * reaction_v18) + ( 1.0 * reaction_v19) + (-1.0 * reaction_v20) + ( 1.0 * reaction_v21) + (-1.0 * reaction_v34) + (-1.0 * reaction_v105) + (-1.0 * reaction_v106);

	% Species:   id = x26, name = Ras-GDP, affected by kineticLaw

	xdot(26) = (-1.0 * reaction_v18) + ( 1.0 * reaction_v21) + (-1.0 * reaction_v26) + ( 1.0 * reaction_v31) + (-1.0 * reaction_v65) + ( 1.0 * reaction_v68) + (-1.0 * reaction_v73) + ( 1.0 * reaction_v78);

	% Species:   id = x27, name = EGF-EGFR*^2-GAP-Grb2-Sos-Ras-GDP, affected by kineticLaw

	xdot(27) = ( 1.0 * reaction_v18) + (-1.0 * reaction_v19) + (-1.0 * reaction_v108) + (-1.0 * reaction_v109);

	% Species:   id = x28, name = Ras-GTP, affected by kineticLaw

	xdot(28) = ( 1.0 * reaction_v19) + ( 1.0 * reaction_v27) + (-1.0 * reaction_v28);

	% Species:   id = x29, name = EGF-EGFR*^2-GAP-Grb2-Sos-Ras-GTP, affected by kineticLaw

	xdot(29) = ( 1.0 * reaction_v20) + (-1.0 * reaction_v21) + (-1.0 * reaction_v111) + (-1.0 * reaction_v112);

	% Species:   id = x30, name = Grb2-Sos, affected by kineticLaw

	xdot(30) = ( 1.0 * reaction_v33) + ( 1.0 * reaction_v34) + (-1.0 * reaction_v35) + (-1.0 * reaction_v41) + ( 1.0 * reaction_v80) + (-1.0 * reaction_v83);

	% Species:   id = x31, name = Shc, affected by kineticLaw

	xdot(31) = (-1.0 * reaction_v22) + ( 1.0 * reaction_v36) + (-1.0 * reaction_v69);

	% Species:   id = x32, name = EGF-EGFR*^2-GAP-Shc, affected by kineticLaw

	xdot(32) = ( 1.0 * reaction_v22) + (-1.0 * reaction_v23) + (-1.0 * reaction_v103);

	% Species:   id = x33, name = EGF-EGFR*^2-GAP-Shc*, affected by kineticLaw

	xdot(33) = ( 1.0 * reaction_v23) + (-1.0 * reaction_v24) + (-1.0 * reaction_v37) + (-1.0 * reaction_v41) + (-1.0 * reaction_v104);

	% Species:   id = x34, name = EGF-EGFR*^2-GAP-Shc*-Grb2, affected by kineticLaw

	xdot(34) = ( 1.0 * reaction_v24) + (-1.0 * reaction_v25) + (-1.0 * reaction_v39) + (-1.0 * reaction_v114) + (-1.0 * reaction_v115);

	% Species:   id = x35, name = EGF-EGFR*^2-GAP-Shc*-Grb2-Sos, affected by kineticLaw

	xdot(35) = ( 1.0 * reaction_v25) + (-1.0 * reaction_v26) + ( 1.0 * reaction_v27) + (-1.0 * reaction_v30) + ( 1.0 * reaction_v31) + (-1.0 * reaction_v32) + ( 1.0 * reaction_v41) + (-1.0 * reaction_v117) + (-1.0 * reaction_v118);

	% Species:   id = x36, name = EGF-EGFR*^2-GAP-Shc*-Grb2-Sos-Ras-GDP, affected by kineticLaw

	xdot(36) = ( 1.0 * reaction_v26) + (-1.0 * reaction_v27) + (-1.0 * reaction_v120) + (-1.0 * reaction_v121);

	% Species:   id = x37, name = EGF-EGFR*^2-GAP-Shc*-Grb2-Sos-Ras-GTP, affected by kineticLaw

	xdot(37) = ( 1.0 * reaction_v30) + (-1.0 * reaction_v31) + (-1.0 * reaction_v123) + (-1.0 * reaction_v124);

	% Species:   id = x38, name = Shc*-Grb2-Sos, affected by kineticLaw

	xdot(38) = ( 1.0 * reaction_v32) + (-1.0 * reaction_v33) + ( 1.0 * reaction_v40) + ( 1.0 * reaction_v79);

	% Species:   id = x39, name = Shc*-Grb2, affected by kineticLaw

	xdot(39) = ( 1.0 * reaction_v38) + ( 1.0 * reaction_v39) + (-1.0 * reaction_v40) + ( 1.0 * reaction_v82);

	% Species:   id = x40, name = Shc*, affected by kineticLaw

	xdot(40) = ( 1.0 * reaction_v33) + (-1.0 * reaction_v36) + ( 1.0 * reaction_v37) + (-1.0 * reaction_v38) + ( 1.0 * reaction_v81);

	% Species:   id = x41, name = Raf, affected by kineticLaw

	xdot(41) = (-1.0 * reaction_v28) + ( 1.0 * reaction_v43) + (-1.0 * reaction_v75) + ( 1.0 * reaction_v85);

	% Species:   id = x42, name = Raf-Ras-GTP, affected by kineticLaw

	xdot(42) = ( 1.0 * reaction_v28) + (-1.0 * reaction_v29);

	% Species:   id = x43, name = Ras-GTP*, affected by kineticLaw

	xdot(43) = (-1.0 * reaction_v20) + ( 1.0 * reaction_v29) + (-1.0 * reaction_v30);

	% Species:   id = x44, name = Phosphotase1, affected by kineticLaw

	xdot(44) = (-1.0 * reaction_v42) + ( 1.0 * reaction_v43) + (-1.0 * reaction_v84) + ( 1.0 * reaction_v85);

	% Species:   id = x45, name = Raf*, affected by kineticLaw

	xdot(45) = ( 1.0 * reaction_v29) + (-1.0 * reaction_v42) + (-1.0 * reaction_v44) + ( 1.0 * reaction_v45) + (-1.0 * reaction_v46) + ( 1.0 * reaction_v47);

	% Species:   id = x46, name = Raf*-P'ase, affected by kineticLaw

	xdot(46) = ( 1.0 * reaction_v42) + (-1.0 * reaction_v43);

	% Species:   id = x47, name = MEK, affected by kineticLaw

	xdot(47) = (-1.0 * reaction_v44) + ( 1.0 * reaction_v51) + (-1.0 * reaction_v86) + ( 1.0 * reaction_v93);

	% Species:   id = x48, name = MEK-Raf*, affected by kineticLaw

	xdot(48) = ( 1.0 * reaction_v44) + (-1.0 * reaction_v45);

	% Species:   id = x49, name = MEK-P, affected by kineticLaw

	xdot(49) = ( 1.0 * reaction_v45) + (-1.0 * reaction_v46) + ( 1.0 * reaction_v49) + (-1.0 * reaction_v50);

	% Species:   id = x50, name = MEK-P-Raf*, affected by kineticLaw

	xdot(50) = ( 1.0 * reaction_v46) + (-1.0 * reaction_v47);

	% Species:   id = x51, name = MEK-PP, affected by kineticLaw

	xdot(51) = ( 1.0 * reaction_v47) + (-1.0 * reaction_v48) + (-1.0 * reaction_v52) + ( 1.0 * reaction_v53) + (-1.0 * reaction_v54) + ( 1.0 * reaction_v55);

	% Species:   id = x52, name = MEK-PP-P'ase2, affected by kineticLaw

	xdot(52) = ( 1.0 * reaction_v48) + (-1.0 * reaction_v49);

	% Species:   id = x53, name = Phosphatase2, affected by kineticLaw

	xdot(53) = (-1.0 * reaction_v48) + ( 1.0 * reaction_v49) + (-1.0 * reaction_v50) + ( 1.0 * reaction_v51) + (-1.0 * reaction_v90) + ( 1.0 * reaction_v91) + (-1.0 * reaction_v92) + ( 1.0 * reaction_v93);

	% Species:   id = x54, name = MEK-P-P'ase2, affected by kineticLaw

	xdot(54) = ( 1.0 * reaction_v50) + (-1.0 * reaction_v51);

	% Species:   id = x55, name = ERK, affected by kineticLaw

	xdot(55) = (-1.0 * reaction_v52) + ( 1.0 * reaction_v59) + (-1.0 * reaction_v94) + ( 1.0 * reaction_v101);

	% Species:   id = x56, name = ERK-MEK-PP, affected by kineticLaw

	xdot(56) = ( 1.0 * reaction_v52) + (-1.0 * reaction_v53);

	% Species:   id = x57, name = ERK-P, affected by kineticLaw

	xdot(57) = ( 1.0 * reaction_v53) + (-1.0 * reaction_v54) + ( 1.0 * reaction_v57) + (-1.0 * reaction_v58);

	% Species:   id = x58, name = ERK-P-MEK-PP, affected by kineticLaw

	xdot(58) = ( 1.0 * reaction_v54) + (-1.0 * reaction_v55);

	% Species:   id = x59, name = ERK-PP, affected by kineticLaw

	xdot(59) = ( 1.0 * reaction_v55) + (-1.0 * reaction_v56);

	% Species:   id = x60, name = Phosphotase3, affected by kineticLaw

	xdot(60) = (-1.0 * reaction_v56) + ( 1.0 * reaction_v57) + (-1.0 * reaction_v58) + ( 1.0 * reaction_v59) + (-1.0 * reaction_v98) + ( 1.0 * reaction_v99) + (-1.0 * reaction_v100) + ( 1.0 * reaction_v101);

	% Species:   id = x61, name = ERK-PP-P'ase3, affected by kineticLaw

	xdot(61) = ( 1.0 * reaction_v56) + (-1.0 * reaction_v57);

	% Species:   id = x62, name = ERK-P-P'ase3, affected by kineticLaw

	xdot(62) = ( 1.0 * reaction_v58) + (-1.0 * reaction_v59);

	% Species:   id = x63, name = EGF-EGFRi*^2-GAP-Shc, affected by kineticLaw

	xdot(63) = ( 1.0 * reaction_v69) + (-1.0 * reaction_v70) + ( 1.0 * reaction_v103);

	% Species:   id = x64, name = EGF-EGFRi*^2-GAP-Shc*, affected by kineticLaw

	xdot(64) = ( 1.0 * reaction_v70) + (-1.0 * reaction_v71) + (-1.0 * reaction_v81) + (-1.0 * reaction_v83) + ( 1.0 * reaction_v104);

	% Species:   id = x65, name = EGF-EGFRi*^2-GAP-Shc*-Grb2, affected by kineticLaw

	xdot(65) = ( 1.0 * reaction_v71) + (-1.0 * reaction_v72) + (-1.0 * reaction_v82) + ( 1.0 * reaction_v114) + ( 1.0 * reaction_v116);

	% Species:   id = x66, name = EGF-EGFRi*^2-GAP-Shc*-Grb2-Sos, affected by kineticLaw

	xdot(66) = ( 1.0 * reaction_v72) + (-1.0 * reaction_v73) + ( 1.0 * reaction_v74) + (-1.0 * reaction_v77) + ( 1.0 * reaction_v78) + (-1.0 * reaction_v79) + ( 1.0 * reaction_v83) + ( 1.0 * reaction_v117) + ( 1.0 * reaction_v119);

	% Species:   id = x67, name = EGF-EGFRi*^2-GAP-Shc*-Grb2-Sos-Ras-GDP, affected by kineticLaw

	xdot(67) = ( 1.0 * reaction_v73) + (-1.0 * reaction_v74) + ( 1.0 * reaction_v120) + ( 1.0 * reaction_v122);

	% Species:   id = x68, name = EGF-EGFRi*^2-GAP-Shc*-Grb2-Sos-Ras-GTP, affected by kineticLaw

	xdot(68) = ( 1.0 * reaction_v77) + (-1.0 * reaction_v78) + ( 1.0 * reaction_v123) + ( 1.0 * reaction_v125);

	% Species:   id = x69, name = Rasi-GTP, affected by kineticLaw

	xdot(69) = ( 1.0 * reaction_v66) + ( 1.0 * reaction_v74) + (-1.0 * reaction_v75);

	% Species:   id = x70, name = Rafi-Rasi-GTP, affected by kineticLaw

	xdot(70) = ( 1.0 * reaction_v75) + (-1.0 * reaction_v76);

	% Species:   id = x71, name = Rasi-GTP*, affected by kineticLaw

	xdot(71) = (-1.0 * reaction_v67) + ( 1.0 * reaction_v76) + (-1.0 * reaction_v77);

	% Species:   id = x72, name = Rafi*, affected by kineticLaw

	xdot(72) = ( 1.0 * reaction_v76) + (-1.0 * reaction_v84) + (-1.0 * reaction_v86) + ( 1.0 * reaction_v87) + (-1.0 * reaction_v88) + ( 1.0 * reaction_v89);

	% Species:   id = x73, name = Rafi*-P'ase, affected by kineticLaw

	xdot(73) = ( 1.0 * reaction_v84) + (-1.0 * reaction_v85);

	% Species:   id = x74, name = MEKi-Rafi*, affected by kineticLaw

	xdot(74) = ( 1.0 * reaction_v86) + (-1.0 * reaction_v87);

	% Species:   id = x75, name = MEKi-P, affected by kineticLaw

	xdot(75) = ( 1.0 * reaction_v87) + (-1.0 * reaction_v88) + ( 1.0 * reaction_v91) + (-1.0 * reaction_v92);

	% Species:   id = x76, name = MEKi-P-Rafi*, affected by kineticLaw

	xdot(76) = ( 1.0 * reaction_v88) + (-1.0 * reaction_v89);

	% Species:   id = x77, name = MEKi-PP, affected by kineticLaw

	xdot(77) = ( 1.0 * reaction_v89) + (-1.0 * reaction_v90) + (-1.0 * reaction_v94) + ( 1.0 * reaction_v95) + (-1.0 * reaction_v96) + ( 1.0 * reaction_v97);

	% Species:   id = x78, name = MEKi-PP-P'ase2i, affected by kineticLaw

	xdot(78) = ( 1.0 * reaction_v90) + (-1.0 * reaction_v91);

	% Species:   id = x79, name = MEKi-P-P'ase2i, affected by kineticLaw

	xdot(79) = ( 1.0 * reaction_v92) + (-1.0 * reaction_v93);

	% Species:   id = x80, name = ERKi-MEKi-PP, affected by kineticLaw

	xdot(80) = ( 1.0 * reaction_v94) + (-1.0 * reaction_v95);

	% Species:   id = x81, name = ERKi-P, affected by kineticLaw

	xdot(81) = ( 1.0 * reaction_v95) + (-1.0 * reaction_v96) + ( 1.0 * reaction_v99) + (-1.0 * reaction_v100);

	% Species:   id = x82, name = ERKi-P-MEKi-PP, affected by kineticLaw

	xdot(82) = ( 1.0 * reaction_v96) + (-1.0 * reaction_v97);

	% Species:   id = x83, name = ERKi-PP, affected by kineticLaw

	xdot(83) = ( 1.0 * reaction_v97) + (-1.0 * reaction_v98);

	% Species:   id = x84, name = ERKi-PP-P'ase3i, affected by kineticLaw

	xdot(84) = ( 1.0 * reaction_v98) + (-1.0 * reaction_v99);

	% Species:   id = x85, name = ERKi-P-P'ase3i, affected by kineticLaw

	xdot(85) = ( 1.0 * reaction_v100) + (-1.0 * reaction_v101);

	% Species:   id = x86, name = EGFRideg, affected by kineticLaw

	xdot(86) = ( 1.0 * reaction_v60);

	% Species:   id = x87, name = EGF-EGFRi*^2deg, affected by kineticLaw

	xdot(87) = ( 1.0 * reaction_v62);

	% Species:   id = x88, name = EGF-EGFR*^2-GAP-Grb2-Sos-Prot, affected by kineticLaw

	xdot(88) = ( 1.0 * reaction_v106) + (-1.0 * reaction_v107);

	% Species:   id = x89, name = EGF-EGFR*^2-GAP-Grb2-Sos-Ras-GDP-Prot, affected by kineticLaw

	xdot(89) = ( 1.0 * reaction_v109) + (-1.0 * reaction_v110);

	% Species:   id = x90, name = EGF-EGFR*^2-GAP-Grb2-Sos-Ras-GTP-Prot, affected by kineticLaw

	xdot(90) = ( 1.0 * reaction_v112) + (-1.0 * reaction_v113);

	% Species:   id = x91, name = EGF-EGFR*^2-GAP-Shc*-Grb2-Prot, affected by kineticLaw

	xdot(91) = ( 1.0 * reaction_v115) + (-1.0 * reaction_v116);

	% Species:   id = x92, name = EGF-EGFR*^2-GAP-Shc*-Grb2-Sos-Prot, affected by kineticLaw

	xdot(92) = ( 1.0 * reaction_v118) + (-1.0 * reaction_v119);

	% Species:   id = x93, name = EGF-EGFR*^2-GAP-Shc*-Grb2-Sos-Ras-GDP-Prot, affected by kineticLaw

	xdot(93) = ( 1.0 * reaction_v121) + (-1.0 * reaction_v122);

	% Species:   id = x94, name = EGF-EGFR*^2-GAP-Shc*-Grb2-Sos-Ras-GTP-Prot, affected by kineticLaw

	xdot(94) = ( 1.0 * reaction_v124) + (-1.0 * reaction_v125);

	% Species:   id = Raf_act, name = t_Raf*, involved in a rule 
	xdot(95) = x(95);

	% Species:   id = Ras_GTP, name = t_Ras_GTP, involved in a rule 
	xdot(96) = x(96);

	% Species:   id = MEK_PP, name = t_MEK_PP, involved in a rule 
	xdot(97) = x(97);

	% Species:   id = ERK_PP, name = t_ERK_PP, involved in a rule 
	xdot(98) = x(98);

	% Species:   id = SHC_P_t, name = t_SHC_P_t, involved in a rule 
	xdot(99) = x(99);

	% Species:   id = EGF_EGFR_act, name = t_EGF_EGFR*, involved in a rule 
	xdot(100) = x(100);


