% Sistema suma de F i P

R = -0.05; % [Hz / MW] cte pendent que relaciona ambdos inputs
g = 9.81; %gravetat
d = 1000; %densitat [kg/m3]
h = 11.8; %salt d'aigua [m] considerem nivells constants
n = 0.9; %rendiemnt 90%
P = g*d*h*n; %P = g*d*h*n*Q

Guany = 0.97; %guany canonic de la funcio de transferència

k = 1/1000000; %factor de conversió de W a MW de l'entrada caudal.
               
tau = 0.010; %cte de temps del sistema





