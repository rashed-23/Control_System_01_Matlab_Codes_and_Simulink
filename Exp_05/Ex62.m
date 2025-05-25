clc
clear all

s = tf('s'); 
G = (s+1)/(s*(0.1*s-1)); 
rlocus(G); 
axis equal; 
sgrid; 
title('Root locus for (s+1)/s(0.1s-1)'); 
[K,p]=rlocfind(G) 
