%Passar de caudal a GVO mitjançant la equació de relació

function valor = Q_GVO(hb,q)
valor = [];
i = 1;
while i < length(q)
    fun = @(x) 22730-67.81*x-5263*hb(i)-0.1048*x.^2 + 11.75*x*hb(i) + 404.9*hb(i).^2 + 0.0004168*x.^3 + 0.006196*x.^2*hb(i)-0.4898*x*hb(i).^2 - 10.35*hb(i).^3 - q(i);
   % fun = @(x) 22730-67.81*x-5263*12-0.1048*x.^2 + 11.75*x*12 + 404.9*12.^2 + 0.0004168*x.^3 + 0.006196*x.^2*12-0.4898*x*12.^2 - 10.35*12.^3 - q(i);
    x0 = 66; %valor incial d'iteració
    x = fsolve(fun,x0);
    valor = [valor,x];
    i = i+1
end
