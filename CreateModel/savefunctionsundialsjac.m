function savefunctionsundialsjac(all_eq_pom,name)


sizef = size(all_eq_pom);

dim1=sizef(1);

dim2=sizef(2);

R=all_eq_pom;


file = fopen(name,'w');

% writing the jacobian
%fprintf(file,'%s\n\n','name');
%add the force options
%fprintf(file, '%%Model jacobian dy/dy\n\n');
fprintf(file,'%s\n');
for i=1:size(R,1)
    for j=1:size(R,2)
        str = strsplit(ccode(R(i,j)), '= ');
        str = str(2);
        if ~strcmp(str{1},'0.0;')
          fprintf(file,['IJth(J, ',num2str(i),', ',num2str(j),') = ']);
          fprintf(file,' %s',str{1});
          fprintf(file,'\n');
        end
    end
end   
fclose(file);