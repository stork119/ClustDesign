function savefunctionsundials(R,name)

% R = all_eq_pom
sizef = size(R);

dim1=sizef(1);

dim2=sizef(2);


file = fopen(name,'w');

% writing the jacobian
%fprintf(file,'%s\n\n','name');
%add the force options
%fprintf(file, '%%Model jacobian dy/dy\n\n');
fprintf(file,'%s\n');
for i=1:size(R,1)  
    fprintf(file,['Ith(ydot, ',num2str(i),') = ']);
    str = strsplit(ccode(R(i)), '= ');
    str = str(2);
    fprintf(file,' %s',str{1});
    fprintf(file,'\n');
end   
fclose(file);
