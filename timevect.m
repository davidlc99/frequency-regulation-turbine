%obtain the timevect from a vector with timestam
function [timevect1]=timevect(T1num) 

ldata=size(T1num,1);
i=1;
timevect1(1:ldata)=0;
iniday1=day(datetime(T1num(1,1),'ConvertFrom','epochtime','TicksPerSecond',1e3,'Format','dd-MMM-yyyy HH:mm:ss.SSS'));
while i<=ldata
    d1 = datetime(T1num(i,1),'ConvertFrom','epochtime','TicksPerSecond',1e3,'Format','dd-MMM-yyyy HH:mm:ss.SSS');
    timevect1(i)=hour(d1)*3600+minute(d1)*60+second(d1)+(day(d1)-iniday1)*24*3600;
    i=i+1;
end
timevect1=timevect1-timevect1(1);

end

%Comentaris funció
%timevect1 es la sortida
%T1num es la variable de entrada, en el command window li posarem [timevect1]=timevect(dades que volguem)
%UN cop tinguem la tranformació feta, ho excribim en un excel amb el
%comando writematrix(timevect1,nom del fitxer que volguem nosaltres);

