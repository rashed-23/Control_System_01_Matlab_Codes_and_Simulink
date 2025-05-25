clc;
syms a b t s;
g(t) = 1+(b/(a-b))*exp(-a*t)-(a/(a-b))*exp(-b*t);
G(s) = laplace(g(t));
pretty(simplify(G)) % using simplify command
disp("[Showed]")