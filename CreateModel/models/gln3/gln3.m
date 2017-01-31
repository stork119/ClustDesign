function R = gln3(y,par,stm,t)


gat1=y(1);
dal80=y(2);
gzf3=y(3);
GLN3_ci=y(4);
GLN3_ca=y(5);
GLN3=y(6);
GAT1=y(7);
GAT1_ci=y(8);
GAT1_ca=y(9);
DAL80=y(10);
GZF3=y(11);
DAL80_2=y(12);
GZF3_2=y(13);

{'kxw';'kxwc';'kxy';'kxz';'kxx';'kx';'kdx';'kyw';'kyx';'kyxwc';'kyy';'kyz';'ky';'kdy';'kz';'kdz';'kzw';'kzx';'kzy';'kzxwc';'kpW';'kdW';'kdW_ci';'kWexp';'kWimp';'kpX';'kdX';'kdX_ci';'kXexp';'kXimp';'kpY';'kdY';'kYY';'kdissYY';'kpZ';'kdZ';'kZZ';'kdissZZ';'kdY2';'kdZ2';'bx';'by';'bz';'dw';'dx';'V_0w';'Vw';'nw';'theta_w';'V_0x';'Vx';'nx';'theta_x';}


%disp(par);
 par_cells = num2cell(par);
 
 [kxw , kxwc , kxy , kxz , kxx , kx , kdx , kyw , kyx , kyxwc , kyy , kyz , ky , kdy , kz , kdz , kzw , kzx , kzy , kzxwc , kpW , kdW , kdW_ci , kWexp , kWimp , kpX , kdX , kdX_ci , kXexp , kXimp , kpY , kdY , kYY , kdissYY , kpZ , kdZ , kZZ , kdissZZ , kdY2 , kdZ2 , bx , by , bz ,dw , dx , V_0w , Vw , nw , theta_w , V_0x , Vx , nx , theta_x]= par_cells{:};

k1w =V_0w+Vw*((stm(2))*(t-dw))^nw/(((stm(2))*(t-dw))^nw+theta_w^nw) ;
k1x =V_0x+Vx*((stm(3))*(t-dx))^nx/(((stm(3))*(t-dx))^nx+theta_x^nx) ;
 
 
 re2 = bx+kx*(kxw*GLN3+kxx*GAT1+kxw*kxx*kxwc*GLN3*GAT1)/((1+kxw*GLN3+kxx*GAT1+kxw*kxx*kxwc*GLN3*GAT1)*(1+kxy*DAL80_2+kxz*GZF3_2));
re3 = by+ky*(kyw*GLN3+kyx*GAT1+kyw*kyx*kyxwc*GLN3*GAT1)/((1+kyw*GLN3+kyx*GAT1+kyw*kyx*kyxwc*GLN3*GAT1)*(1+kyy*DAL80_2+kyz*GZF3_2));
re4 = bz+kz*(GLN3*kzw+GAT1*kzx+kzw*kzx*kzxwc*GAT1*GLN3)/(1+GLN3*kzw+GAT1*kzx+kzw*kzx*kzxwc*GAT1*GLN3+kzy*DAL80_2);
re5 = kdz*gzf3;
re6 = kdx*gat1;
re7 = kdy*dal80;
re9 = kpW*stm(1);
re17 = kdW*GLN3;
re13 = kWexp*GLN3;
re14 = kWimp*GLN3_ca;
re10 = kpX*gat1;
re19 = kdX*GAT1;
re15 = kXexp*GAT1;
re16 = kXimp*GAT1_ca;
re11 = kpY*dal80;
re21 = kdY*DAL80;
re24 = DAL80*DAL80*kYY;
re32 = DAL80_2*kdissYY;
re12 = kpZ*gzf3;
re22 = kdZ*GZF3;
re26 = GZF3*GZF3*kZZ;
re33 = GZF3_2*kdissZZ;
re25 = kdY2*DAL80_2;
re29 = kdZ2*GZF3_2;
re18 = kdW_ci*GLN3_ci;
re18_1 = kdW*GLN3_ca;
re20 = kdX_ci*GAT1_ci;
re20_1 = kdX*GAT1_ca;
re50 = GLN3_ca-k1w*GLN3_ci;
re51 = GAT1_ca-k1x*GAT1_ci;



 R(1)=(+re2-re6);
 R(2)=(+re3-re7);
 R(3)=re4-re5; 
 R(4)=re9-re18+re50; 
 R(5)=-re50-re14+re13-re18_1; 
 R(6)=(-re13+re14-re17); 
 R(7)=(-re15+re16-re19);
 R(8)=re10-re20+re51;
 R(9)=-re51-re16+re15-re20_1; 
 R(10)=(+re11-re21-2*re24+2*re32); 
 R(11)=(+re12-re22-2*re26+2*re33);
 R(12)=(+re24-re25-re32); 
 R(13)=(+re26-re29-re33);
