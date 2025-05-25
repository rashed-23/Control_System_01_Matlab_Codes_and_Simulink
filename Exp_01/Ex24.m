clc;
syms K s;
G(s) = K / (s*(s+1)*(s^2+2*s+5));
G_par_frac = partfrac(G(s));
disp('The function in term of K is:')
pretty(G_par_frac)
disp('Value of the transfer funtion when k = 5 is :')
G_par_frac= subs(G_par_frac,K,5);
pretty(G_par_frac)