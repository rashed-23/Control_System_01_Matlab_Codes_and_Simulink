clc
clear all;
s=tf('s');
G1=tf(59.292,[1,6.9779,15.1239]);
D1=3;
D2=3+15/s;
D3=3+(15/s)+0.3*s;

M1=feedback(G1*D1,1)
M2=feedback(G1*D2,1)
M3=feedback(G1*D3,1)

step(M1);
hold on
step(M2);
step(M3);


