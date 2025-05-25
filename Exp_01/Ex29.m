clc;
clear;
syms s t;
g(t) = 1+(1/3)*exp(-4*t)-(4/3)*exp(-t);
disp("Time Domain system is: ")
pretty(g)% TIME DOMAIN
disp("Laplace transform is: ")
G(s) = laplace(g(t)); % LAPLACE TRANSFORM
pretty(G)