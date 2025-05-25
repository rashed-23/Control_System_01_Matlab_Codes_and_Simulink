clc;
clear all;
s=tf('s');
G1=s;
G2=s;
G3=1/s;
G4=1/s;
G5=s;
G6=1;
T=append(G1,G2,G3,G4,G5,G6);
Q=[1 -2 -4 -5 6;
    2 1 0 0 0;
    3 2 4 0 0;
    4 -2 -4 -5 6;
    5 3 0 0 0]
input=6;
output=3;
sp=connect(T,Q,input,output);
A=tf(sp)
minreal(A*2)/2 %Normalise


