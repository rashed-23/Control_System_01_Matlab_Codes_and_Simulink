clc;
clear all;
s=tf('s');
G1=1/(s+7);
G2=tf(1,[1 2 3]);
G3=1/(s+4);
G4=1/s;
G5=5/(s+7);
G6=tf(1,[1 5 10]);
G7=3/(s+2);
G8=1/(s+6);
G9=1;
T=append(G1,G2,G3,G4,G5,G6,G7,G8,G9);
Q=[1 -2 -5 9
   2 1 8 0
   3 1 8 0
   4 1 8 0
   5 3 4 -6
   6 7 0 0
   7 3 4 -6
   8 7 0 0]
input=9;
output=7;
sp=connect(T,Q,input,output);
TF=tf(sp);
minreal(TF)

