%Passar de caudal a GVO mitjançant la equació de relació

function valor = Q_GVO_cte(q)
valor = [];
i = 1;
while i < length(q)
    fun = @(x) 22730-67.81*x-5263*12.097-0.1048*x.^2 + 11.75*x*12.097+ 404.9*12.097.^2 + 0.0004168*x.^3 + 0.006196*x.^2*12.097-0.4898*x*12.097.^2 - 10.35*12.097.^3 - q(i);
   % fun = @(x) 22730-67.81*x-5263*12-0.1048*x.^2 + 11.75*x*12 + 404.9*12.^2 + 0.0004168*x.^3 + 0.006196*x.^2*12-0.4898*x*12.^2 - 10.35*12.^3 - q(i);
    x0 = 65; %valor incial d'iteració
    x = fsolve(fun,x0);
    valor = [valor,x];
    i = i+1
end
