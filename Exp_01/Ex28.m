clc;
clear;
syms s A K T;
G(s) = (A/s) * (K/(T*s + 1));
disp("Inverse laplace is the ultimate response is: ")
inv_lap=ilaplace(G);
pretty(inv_lap)