clc;
clear all;

s = tf('s'); 
S = (s*(s+1))/(s^2+s+0.25);

k=0.0625;
M1 = 0.0625/(s^2+s+0.0625)

k=0.25;
M2 = 0.25/(s^2+s+0.25)

k=1;
M3 = 1/(s^2+s+1)

hold on; 
step(M1); 

step(M2); 
step(M3);