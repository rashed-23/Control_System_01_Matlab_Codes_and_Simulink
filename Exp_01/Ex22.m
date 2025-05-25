clc;
syms s;
G(s) = 1/(500*s^2); 
H(s) = (s+1)/(s+2); 
M(s) = G(s)/(1-G(s)*H(s)) % System Representation