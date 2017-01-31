function result = stimulusG(s,a)

t=s+10;

if t<=10
   result =0;
elseif t > 15
    result = 0;
else

time = [ 
     10     
     11
     12
     13
     14
     15     
     ];


 GLNdata =a*[   
    1.0
    1.0
    1.0
    1.0 
    1.0
    1.0    
    ];


     
result = interp1(time,GLNdata,t,'linear');
end
end

