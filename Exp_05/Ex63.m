clc
clear all

s = tf('s'); 
G = (s^2-4*s+20)/((s+2)*(s+4))
rlocus(G); 
axis equal
zeta = 0.45; 
wn = 0; 
sgrid(zeta,wn); %  Generates a grid of constant damping factors.